package macros;

import haxe.macro.MacroStringTools;
import haxe.macro.Type.FieldKind;
import haxe.macro.Type.MethodKind;
import haxe.macro.Type.ModuleType;
import haxe.macro.Compiler;
import haxe.macro.Type.ClassField;
import haxe.macro.Expr;
import haxe.macro.Expr.ExprDef;
import haxe.macro.ExprTools;
import haxe.macro.Expr.Access;
import haxe.macro.Expr.FieldType;
import haxe.macro.Context;
import haxe.macro.Expr.Field;

using Lambda;
using haxe.macro.ComplexTypeTools;

class Patch {
 private static inline function _getFieldsByMetaName(fields: Array<Field>,
   metaName: String): Array<Field> {
  var result: Array<Field> = [];
  var metaFields = fields.filter(f -> f.meta.length > 0);

  for (field in metaFields) {
   for (meta in field.meta) {
    if (meta.name == metaName) {
     result.push(field);
    }
   }
  }
  return result;
 }

 macro public static function applyInline() {
  var localClass = Context.getLocalClass().get();
  var staticFields = localClass.statics.get();
  var calledFromFieldName = Context.getLocalMethod().toString();

  var expressions: Array<Expr> = [];

  for (field in staticFields) {
   if (field.name == calledFromFieldName) {
     continue;
   }
   switch (field.kind.getParameters()) {
      case [MethInline]:
        var name = field.name;
        expressions.push(macro $i{name}());
      default: 
    }
  }
  return macro $b{expressions}
 }

 macro public static function rmClass(original: Dynamic, protoT: Dynamic, selfT: Dynamic): Array<Field> {
  var localFields = Context.getBuildFields();

  var selfFunc: Function = {
   expr: macro return $selfT,
   ret: (macro: Dynamic),
   args: []
  }
  var protoFunc: Function = {
   expr: macro return $protoT,
   ret: (macro: Dynamic),
   args: []
  }

  localFields.push({
   name: '_self',
   doc: null,
   meta: [],
   access: [Access.APublic, Access.AStatic, Access.AInline],
   kind: FFun(selfFunc),
   pos: Context.currentPos()
  });

  localFields.push({
   name: '_proto',
   doc: null,
   meta: [],
   access: [Access.APublic, Access.AStatic, Access.AInline],
   kind: FFun(protoFunc),
   pos: Context.currentPos()
  });

  return localFields;
 }
}
