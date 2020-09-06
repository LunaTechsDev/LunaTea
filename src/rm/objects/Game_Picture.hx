package rm.objects;

/**
 * -----------
 * The game object class for a picture.
 *
 */
@:expose("Game_Picture")
@:native("Game_Picture")
extern class Game_Picture {
 /**
  * _name property of the current picture.
  *
  * @protected
  * @type {string}
  * @memberof Game_Picture
  */
 @:native("_name")
 public var __name: String;

 /**
  * _name property of the current picture.
  *
  * @protected
  * @type {string}
  * @memberof Game_Picture
  */
 private var _name: String;

 @:native("_origin")
 public var __origin: Float;
 private var _origin: Float;
 @:native("_x")
 public var __x: Int;
 private var _x: Int;
 @:native("_y")
 public var __y: Int;
 private var _y: Int;
 @:native("_scaleX")
 public var __scaleX: Float;
 private var _scaleX: Float;
 @:native("_scaleY")
 public var __scaleY: Float;
 private var _scaleY: Float;
 @:native("_opacity")
 public var __opacity: Int;
 private var _opacity: Int;

 /**
  * Blend Mode, accepts an integer.
  */
 @:native("_blendMode")
 public var __blendMode: Int;

 /**
  * Blend mode, accepts an integer.
  */
 private var _blendMode: Int;

 @:native("_targetX")
 public var __targetX: Int;
 private var _targetX: Int;
 @:native("_targetY")
 public var __targetY: Int;
 private var _targetY: Int;
 @:native("_targetScaleX")
 public var __targetScaleX: Float;
 private var _targetScaleX: Float;
 @:native("_targetScaleY")
 public var __targetScaleY: Float;
 private var _targetScaleY: Float;
 @:native("_targetOpacity")
 public var __targetOpacity: Int;
 private var _targetOpacity: Int;
 @:native("_duration")
 public var __duration: Int;
 private var _duration: Int;

 /**
  * Tone of the picture, in RGB format.
  * 0 - 255, for all three tone elements.
  */
 @:native("_tone")
 public var __tone: Array<Int>;

 /**
  * Tone of the picture, in RGB format.
  * 0 - 255, for all three tone elements.
  */
 private var _tone: Array<Int>;

 @:native("_toneTarget")
 public var __toneTarget: Array<Int>;
 private var _toneTarget: Array<Int>;
 @:native("_toneDuration")
 public var __toneDuration: Int;
 private var _toneDuration: Int;
 @:native("_angle")
 public var __angle: Float;
 private var _angle: Float;
 @:native("_rotationSpeed")
 public var __rotationSpeed: Float;
 private var _rotationSpeed: Float;

 public dynamic function new(): Void;
 public dynamic function initialize(): Void;

 /**
  * Returns the name of the game picture.
  *
  * @returns {string}
  * @memberof Game_Picture
  */
 public dynamic function name(): String;

 /**
  * Returns the origin of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public dynamic function origin(): Float;

 /**
  * Returns the picture x coordinate.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public dynamic function x(): Int;

 /**
  * Returns the picture y coordinate.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public dynamic function y(): Int;

 /**
  * Returns x scale of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public dynamic function scaleX(): Float;

 /**
  * Returns the y scale of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public dynamic function scaleY(): Float;

 /**
  * Returns the opacity of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public dynamic function opacity(): Int;

 /**
  * Returns the blend mode of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public dynamic function blendMode(): Int; // TODO: turn this into an enum

 /**
  * Returns the tone of the game picture.
  *
  * @returns {Array<number>}
  * @memberof Game_Picture
  */
 public dynamic function tone(): Array<Int>;

 /**
  * Returns the angle of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public dynamic function angle(): Float;

 public dynamic function initBasic(): Void;
 public dynamic function initTarget(): Void;
 public dynamic function initTone(): Void;
 public dynamic function initRotation(): Void;
 public dynamic function show(name: String, origin: Float, x: Int, y: Int,
  scaleX: Float, scaleY: Float, opacity: Int, blendMode: Int): Void;
 public dynamic function move(origin: Float, x: Int, y: Int, scaleX: Float,
  scaleY: Float, opacity: Int, blendMode: Int, duration: Int): Void;
 public dynamic function rotate(speed: Float): Void;
 public dynamic function tint(tone: Array<Int>, duration: Int): Void;

 /**
  * Erases the game picture.
  *
  * @memberof Game_Picture
  */
 public dynamic function erase(): Void;

 /**
  * Updates the game picture.
  *
  * @memberof Game_Picture
  */
 public dynamic function update(): Void;

 /**
  * Updates the movement of the game picture.
  *
  * @memberof Game_Picture
  */
 public dynamic function updateMove(): Void;

 /**
  * Updates the tone of the game picture.
  *
  * @memberof Game_Picture
  */
 public dynamic function updateTone(): Void;

 /**
  * Updates the rotation of the game picture.
  *
  * @memberof Game_Picture
  */
 public dynamic function updateRotation(): Void;
}
