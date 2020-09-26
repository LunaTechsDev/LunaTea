package macros;

import haxe.macro.TypedExprTools;
import haxe.macro.Type.TypedExpr;
import haxe.macro.ExprTools;
import haxe.macro.Expr.Field;
import haxe.macro.Type.ClassType;
#if macro
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.TypeTools;

using haxe.macro.Tools;
using Lambda;
using StringTools;
#end

class FnMacros {
 public static macro function pipe(exprs: Array<Expr>): Expr {
  var exprs = [for (expr in exprs) macro var _ = $expr];
  exprs.push(macro _);
  return macro $b{exprs};
 }

 public static macro function restx(arr: Expr): Expr {
  var arrVals = [];
  var innerExpr = [];
  trace(arr.toString()); // @:this this

  switch (arr.expr) {
   case EArrayDecl(values):
    arrVals = values.map((x) -> $v{x});
    innerExpr = values;

   case _:
    return Context.error('Incorrect type, must be array type',
     Context.currentPos());
  }

  var result = {
   expr: EArrayDecl(arrVals),
   pos: Context.currentPos()
  };
  var resultArr = [macro $result];

  return macro $a{innerExpr};
 }

 public static macro function destruct(typeRef: Expr, objectRef: Expr) {
  var assignmentExprs = [];
  var typeRefType = Context.typeof(typeRef);
  var objectIdentifier = '';

  var valueFields = new Map<String, haxe.macro.ObjectField>();
  switch (objectRef.expr) {
   case EConst(c):
    switch (c) {
     case CIdent(refIdentifier):
      objectIdentifier = refIdentifier;
     case _:
      // Do nothing
    }
   case _:
    return Context.error('Incorrect type, must be constant identifier',
     Context.currentPos());
  }

  switch (TypeTools.follow(typeRefType)) {
   case TAnonymous(_.get() => tr):
    tr.fields.iter((field) -> {
     var name = field.name;
     var objId = macro $i{objectIdentifier};
     var value = macro $objId.$name;

     valueFields.set(name, {field: name, expr: value});
    });
   case _:
    return Context.error('Object type expected instead of' + typeRef.getValue(),
     Context.currentPos());
  }
  /* Return a list of basic assignment expressions when destructuring.
   Example: var x = a.x; <-- a being the identifier of the expr passed in.
   */
  // trace(assignmentExprs);
  var objResult = {
   expr: EObjectDecl(valueFields.array()),
   pos: Context.currentPos()
  };
  assignmentExprs.push(macro $objResult);
  return macro $b{assignmentExprs};
 }

 public static inline macro function self(typeName: Expr,
   exprs: Array<Expr>): Expr {
  var finalType = '';
  // Breakdown Expression Based On Type
  switch (typeName.expr) {
   case EConst(const):
    switch (const) {
     case CIdent(identifier):
      finalType = identifier;

     case CString(str, _):
      finalType = str;
     case _:
      // Do nothing
    }
   case _:
    // Do nothing
  }

  exprs.unshift(Context.parseInlineString('var self:${finalType} = Fn.self',
   Context.currentPos()));
  return macro $b{exprs};
 }

 // Credit https://code.haxe.org/category/macros/combine-objects.html
 // we use an Array<Expr>, because we want the macro to work on variable amount of structures
 public static macro function combine(rest: Array<Expr>): Expr {
  var pos = Context.currentPos();
  var block = [];
  var cnt = 1;
  // since we want to allow duplicate field names, we use a Map. The last occurrence wins.
  var all = new Map<String, haxe.macro.ObjectField>();
  for (rx in rest) {
   var trest = Context.typeof(rx);
   switch (trest.follow()) {
    case TAnonymous(_.get() => tr):
     // for each parameter we create a tmp var with an unique name.
     // we need a tmp var in the case, the parameter is the result of a complex expression.
     var tmp = "tmp_" + cnt;
     cnt++;
     var extVar = macro $i{tmp};
     block.push(macro var $tmp = $rx);
     for (field in tr.fields) {
      var fname = field.name;
      all.set(fname, {field: fname, expr: macro $extVar.$fname});
     }
    default:
     return Context.error("Object type expected instead of "
      + trest.toString(), rx.pos);
   }
  }
  var result = {expr: EObjectDecl(all.array()), pos: pos};
  block.push(macro $result);
  return macro $b{block};
 }

 /**
  * This macro allows you to patch a JS class and create
  * a prototype patches for the code.
  * @param rest
  * @return Expr
  */
 public static macro function jsPatch(prototype: Bool = true,
   rest: Array<Expr>): Expr {
  var newPatchExprs = [];
  var originalNames = [];
  var originalNameFromAliasedImport = '';
  var classTypes = [];

  for (classExpr in rest) {
   switch (classExpr.expr) {
    case EConst(constant):
     switch (constant) {
      case CIdent(identifier):
       originalNames.push(identifier);
       // Create TInst of the class type
       switch (Context.getType(identifier)) {
        case TInst(cType, _):
         classTypes.push(cType.get());

        case TType(cType, _):
         var d = cType.get();
         switch (Context.getType(d.type.toString())) {
          case TInst(dType, _):
           var classPath = dType.get();
           originalNameFromAliasedImport = classPath.name;
           classTypes.push(classPath);
          case _:
           // do nothing
         }
        case _:
         // Do nothing
       }
      // Do nothing
      case _:
       // Do nothing
     }
    case _:
     // Do nothing
   }
  }

  // Have access to class therefore we have access to class fields/methods
  var classToPatch = classTypes[0];
  var classToPatchName = originalNames[0];
  var classForPatching = classTypes[1];
  var classForPatchingName = originalNames[1];

  var fields = classForPatching.fields;

  if (fields != null) {
   fields.get().iter((classField) -> {
    var isRType = false;
    // storeTypedExpr ?

    var classFieldToUse = null;
    var classFieldRealName = null;
    if (allInheritedFields(classForPatching).exists((cField) -> {
     cField.name == classField.name + "R";
    })) {
     classFieldToUse = classField.name + "R";
     isRType = true;
    } else {
     classFieldToUse = classField.name;
    }

    if (isRType) {
     classFieldRealName = classField.name.substring(0, classField.name.length);
    } else {
     classFieldRealName = classField.name;
    }

    var classToPatchAliasName = originalNameFromAliasedImport.length > 0 ? originalNameFromAliasedImport : classToPatchName;

    var newExpr = null;
    var oldFuncExpr = null;
    // Creates the new prototype function and also the previous function aliased.
    if (prototype) {
     oldFuncExpr = Context.parseInlineString('untyped var _${classToPatchAliasName}_${classFieldRealName} =  utils.Fn.proto(${classToPatchName}).${classFieldToUse}',
      Context.currentPos());

     newExpr = Context.parseInlineString('untyped utils.Fn.proto(${classToPatchName}).${classFieldToUse}',
      Context.currentPos());
    } else {
     oldFuncExpr = Context.parseInlineString('untyped var _${classToPatchAliasName}_${classFieldRealName} =  ${classToPatchName}.${classFieldToUse}',
      Context.currentPos());
     newExpr = Context.parseInlineString('untyped ${classToPatchName}.${classFieldToUse}',
      Context.currentPos());
    }

    var valueExpr = classField.expr();
    var finalExpr = null;
    var count = 0;
    if (valueExpr != null) {
     finalExpr = macro ${newExpr} = ${Context.storeTypedExpr(valueExpr)};
    } else {
     finalExpr = macro ${newExpr} = ${macro null};
    }
    // if (prototype) {
    //  // Adds the old function above the finalExpr for overwriting.
    //  newPatchExprs.push(oldFuncExpr);
    // }
    newPatchExprs.push(oldFuncExpr);
    newPatchExprs.push(finalExpr);
   });
  }

  // Return new result macro of the patched class fields
  return macro $b{newPatchExprs};
 }

 private static function allInheritedFields(cType: ClassType): Array<Field> {
  var fields: Array<Field> = cast cType.fields.get();
  var superClass = cType.superClass;
  if (superClass != null) {
   return allInheritedFields(superClass.t.get()).concat(fields);
  } else {
   return fields;
  }
  return fields;
 }
}
