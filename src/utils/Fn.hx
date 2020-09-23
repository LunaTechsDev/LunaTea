package utils;

import haxe.extern.Rest;
import haxe.Constraints.Function;
import haxe.extern.EitherType;
import js.html.Console;
import haxe.macro.Type.ClassType;
import js.Syntax;
import js.lib.Object;
import core.AnyBox.TBox;
import Type;

typedef Self = String;

class Fn {
 public static var self(get, null): Any;

 /**
  * Alias for JS console log.
  */
 public static var JsLog = Console.log;

 /**
  * Allows you to acces Js syntax  Code functionality
  * for embedding and more.
  */
 public static var Js = Syntax;

 public static inline function thisJs(): Dynamic {
  return js.Lib.nativeThis;
 }

 /**
  * Native JS Parse Int
  * @param string
  * @param radix
  * @return Int
  */
 public static inline function parseIntJs(string: String,
   radix: Int = 10): Int {
  return cast js.Lib.parseInt(string, radix);
 }

 public static inline function parseFloatJs(value: EitherType<String, Int>) {
  return Syntax.code("parseFloat({0})", value);
 }

 /**
  * Haxe Parse Float
  * @param string
  * @return Float
  */
 public static inline function parseFloat(string: String): Float {
  return Std.parseFloat(string);
 }

 /**
  * Wrapper for JavaScript this
  */
 private static inline function get_self() {
  return thisJs();
 }

 /**
  * Runs a JavaScript evaluation expression.
  * @param evaluation
  */
 public static inline function eval(evaluation: String) {
  return js.Lib.eval(evaluation);
 }

 /**
  * Embeds a JavaScript evaluation into the output program.
  * @param evaluation
  */
 public static inline function embedEval(evaluation: String) {
  return Syntax.code("eval({0})", evaluation);
 }

 @:keep
 public static inline function proto<T>(obj: Class<T>): T {
  return Syntax.field(obj, "prototype");
 }

 @:keep
 public static inline function updateProto<T>(obj: Class<T>,
   fn: T->Void): Dynamic {
  return Syntax.code("({1})({0}.prototype)", obj, fn);
 }

 @:keep
 public static inline function updateEntity<T>(obj: Class<T>,
   fn: T->Void): Dynamic {
  return Syntax.code("({1})({0})", obj, fn);
 }

 public static inline function setPrProp<T>(obj: Class<T>, fieldName: String,
   value: Any) {
  Syntax.code("{0}[{1}] = {2}", proto(obj), (fieldName), value);
 }

 public static inline function setPrPropFn<T>(obj: Class<T>,
   fieldName: String, value: Any) {
  Syntax.code("{0}[{1}]  = {2}", proto(obj), (fieldName), value);
 }

 public static inline function getPrProp(obj: Any, fieldName: String): Any {
  return Syntax.code("{0}[{1}] ", proto(obj), (fieldName));
 }

 @:analyzer(local_dce)
 public static inline function setField(obj: Any, fieldName: String,
   value: Any) {
  return Syntax.code("{0} = {1}", Syntax.field(obj, fieldName), value);
 }

 @:analyzer(local_dce)
 public static inline function getField(obj: Any, fieldName: String) {
  return Syntax.field(obj, fieldName);
 }

 /**
  * Gets an element using an array syntax.
  * @param obj
  * @param fieldName
  */
 public static inline function getByArrSyntax(obj: Any, fieldName: String) {
  return Syntax.code("{0}[{1}]", obj, fieldName);
 }

 /**
  * Used to overwrite classes in RPGMakerMV with another class to alias and update
  * functionality.
  * @param obj
  * @param propName
  * @param value
  * @return T
  */
 public static inline function renameClass<T>(originalObj: Any,
   overrideObj: T): T {
  return Syntax.code("{0} = {1}", originalObj, overrideObj);
 }

 /**
  * Invokes the standard JavaScript defineProperty functionality to the value
  * @param obj
  * @param propName
  * @param value
  * @return T
  */
 public static function setProp<T: {}>(obj: T, propName: String,
   value: Any): T {
  return Object.defineProperty(obj, propName, {value: value});
 }

 public static inline function setProtoProp(obj, propName, value) {
  return Syntax.code("{0}.prototype[{1}] = {2}", obj, propName, value);
 }

 public static inline function instanceof(v: Dynamic, cl): Bool {
  return Syntax.instanceof(v, cl);
 }

 public static inline function typeof(v: Dynamic): String {
  return Syntax.typeof(v);
 }

 public static inline function log(data: Array<Dynamic>) {
  Console.log(data);
 }
}
