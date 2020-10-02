package rm.core;

@:expose("Point")
@:native("Point")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Point extends pixi.core.math.Point {
 /**
  * The point class.
  *
  * @class Point
  * @constructor
  * @param {Number} x The x coordinate
  * @param {Number} y The y coordinate
  */
 public function new(?x: Float, ?y: Float);

 /**
  * The x coordinate.
  *
  * @property x
  * @type Number
  */
 @:native("x")
 public var _x: Float;

 /**
  * The y coordinate.
  *
  * @property y
  * @type Number
  */
 @:native("y")
 public var _y: Float;
}
