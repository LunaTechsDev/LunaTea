package macros;

import haxe.io.Path;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;
import sys.FileSystem;
import sys.io.File;

using Lambda;
using StringTools;
using core.StringExtensions;

class BuildMacroTools {
 macro public static function buildFileList(path: String): Array<Field> {
  var fields = Context.getBuildFields();
  var files = FileSystem.readDirectory(path);

  var createFileField = (path: String, file: String) -> {
   /**
    * Turns the class names for all the asset files into variables
    * Appends the File Type At The End Of the Name
    * Does not handle duplicates in the same folder, which should never happen.
    */
   var extension = ~/\./g.split(file).pop();

   var cleanFileName = ~/\.(\w+)/g.replace(file, '$extension'.toUpperCase());
   cleanFileName = ~/!|\$|-|\s+/g.replace(cleanFileName, "_").capitalize();
   // .replace("-", "_")
   // .replace(" ", "_")
   // .replace("!", "")
   // .replace("$", "")
   // .capitalize();
   var splitPath = path.split("/");
   var lastPath = splitPath.slice(splitPath.length - 2, splitPath.length - 1)
    .pop()
    .capitalize();

   var newField: Field = {
    name: lastPath + "_" + cleanFileName,
    access: [Access.APublic,
     Access.AStatic,
     Access.AInline],
    kind: FieldType.FVar(macro:String, macro $v{path + file}),
    pos: Context.currentPos(),
    doc: null,
    meta: []
   };

   fields.push(newField);
  };

  var traverseFiles = (fn: (Dynamic, String, String) -> Void, path: String,
   file: String) -> {
    switch (FileSystem.isDirectory(path + file)) {
     case true:
      var bindFn = fn.bind(fn, path + file + "/", _);
      FileSystem.readDirectory(path + file).iter(bindFn);
     case false:
      createFileField(path, file);
    }
   };

  files.iter((file) -> {
   traverseFiles(traverseFiles, path, file);
  });
  return fields;
 }

 macro public static function buildDynamicFunctions(): Array<Field> {
  var fields = Context.getBuildFields();

  fields.filter((field: Field) -> {
   return field.name != "new" && switch (field.kind) {
    case FFun(_):
     true;
    case FVar(t, e):
     false;
    case FProp(get, set, t, e):
     false;
   }
  }).iter((fnField) -> {
   var metaData: MetadataEntry = {
    name: ":native",
    params: [macro $v{fnField.name}],
    pos: Context.currentPos()
   };
   var newField: Field = {
    name: fnField.name + "D",
    access: fnField.access.copy().concat([Access.ADynamic]),
    kind: fnField.kind,
    pos: Context.currentPos(),
    doc: fnField.doc,
    meta: [metaData]
   }
   fields.push(newField);
  });
  return fields;
 }

 macro public static function buildPublicPrivateFields(): Array<Field> {
  var fields = Context.getBuildFields();

  fields.filter((field: Field) -> {
   return field.access.contains(Access.APrivate);
  }).iter((privateField) -> {
   var metaData: MetadataEntry = {
    name: ":native",
    params: [macro $v{privateField.name}],
    pos: Context.currentPos()
   };
   var oldAccess = privateField.access.copy();
   oldAccess.remove(Access.APrivate);
   var newAccessLevel = oldAccess.concat([Access.APublic]);
   var newField: Field = {
    name: '_${privateField.name}',
    access: newAccessLevel,
    kind: privateField.kind,
    pos: Context.currentPos(),
    doc: privateField.doc,
    meta: [metaData]
   };

   fields.push(newField);
  });
  return fields;
 }

 //  macro public static function rmClass(original: Dynamic): Array<Field> {
 //   var pos = Context.currentPos();
 //   var fields = Context.getBuildFields();
 //   var aliasedFields = _getFieldsToAlias(fields);
 //   for (field in aliasedFields) {
 //    var originalFunc = field.kind.getParameters();
 //    var originalExpr = originalFunc[0].expr;
 //    var methodName = field.name;
 //    var proto = 'Fn.getPrProp($original, $methodName);';
 //    var self = 'Fn.self;';
 //    var exprs = [macro {var __alias = $v{proto}},
 //     macro {var __self = $v{self}}
 //    ];
 //    var newFunc: Function = {
 //     args: [],
 //     ret: null,
 //     expr: macro $b{exprs}
 //    }
 //    fields.push({
 //     name: '${methodName}',
 //     access: [Access.APublic, Access.AStatic,
 //      Access.AInline],
 //     kind: FieldType.FFun(newFunc),
 //     pos: field.pos
 //    });
 //    // Remove old field
 //    fields.splice(fields.indexOf(field), 1);
 //   }
 //   return fields;
 //  }
}
