const prettier = require("prettier");
const babel = require("@babel/core");
const traverse = require("@babel/traverse").default;
const generate = require("@babel/generator").default;
const tt = require("@babel/types");
const { argv } = require("yargs");
const fs = require("fs").promises;

const isDev = process.env.NODE_ENV !== "production";

const TARGET_DIR = isDev ? "dist" : argv.path;
const useNapkin = argv.napkin ? false : true;

(async function main() {
  if (!TARGET_DIR || TARGET_DIR === "") {
    console.error("You must provide a path");
    process.exitCode = 1;
  }
  const paths = await fs.readdir(TARGET_DIR);
  paths.forEach(async (path) => {
    const data = await fs.readFile(`${TARGET_DIR}/${path}`, {
      encoding: "utf8",
    });

    const result = prettier.format(data, {
      // endOfLine: "lf",
      singleQuote: true,
      semi: false,
      parser(text, { babel }) {
        const ast = babel(text);

        traverse(ast, {
          enter({ node }) {
            convertPrototypeLiteralsToObject(node);
          },
        });

        // We retain lines to keep comments intact
        return generate(ast, { retainLines: true }).code;
      },
    });

    await fs.writeFile(`${TARGET_DIR}/${path}`, result, { encoding: "utf8" });
  });
})().catch((error) => {
  process.exitCode = 1;
  console.error(error);
});

/**
 * Converts prototype literal assignments and declarations
 * 
 * @param {*} node 
 * @example 
 * var alias = Class.prototype['methodName'] - > var alias = Class.prototype.methodName;
 * 
 * Class.prototype['methodName'] = function (){} -> Class.prototype.methodName = function (){}
 */
function convertPrototypeLiteralsToObject(node) {
  if (isPrototypeLiteralAssignment(node)) {
    const { property, object } = node.left;
    const newLeft = literalToObject(node.left);
    node.left = newLeft;
  } else if (isPrototypeAliasLiteralDeclaration(node)) {
    const { init } = node.declarations[0];
    const newInit = literalToObject(init);
    node.declarations[0].init = newInit;
  }
}

/**
 * Checks if there is a variable declaration for a class prototype using bracket
 * notation.
 *
 * @param {Node} node
 *
 * @example var alias = Class.prototype['methodName']
 */
function isPrototypeAliasLiteralDeclaration(node) {
  if (tt.isVariableDeclaration(node)) {
    const declaration = node.declarations[0];
    if (
      tt.isMemberExpression(declaration.init) &&
      tt.isLiteral(declaration.init.property)
    ) {
      const { property } = declaration.init.object;
      return property.name === "prototype";
    }
  }
  return false;
}

/**
 * Checks if there is an assignment expression for a class prototype using
 * bracket notation.
 *
 * @param {Node} node
 *
 * @example Class.prototype['methodName']
 */
function isPrototypeLiteralAssignment(node) {
  if (tt.isAssignmentExpression(node) && tt.isLiteral(node.left.property)) {
    const { property, object } = node.left;
    if (object.property) {
      return object.property.name === "prototype";
    }
    return false;
  }
  return false;
}

/**
 * Converts a member expression from bracket notation to object notation and
 * returns a new MemberExpression with the changes.
 *
 * @param {Node} leftNode - The left expression in the node
 * @return {MemberExpression} MemberExpression
 *
 * @example Class.prototype['methodName'] -> Class.prototype.methodName
 */
function literalToObject(leftNode) {
  const { property, object } = leftNode;
  const newProperty = tt.identifier(property.value);
  const newAssignment = tt.memberExpression(object, newProperty, false);
  return newAssignment;
}
