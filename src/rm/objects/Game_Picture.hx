package rm.objects;

/**
 * -----------
 * The game object class for a picture.
 *
 */
@:expose("Game_Picture")
@:native("Game_Picture")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Picture {
 /**
  * _name property of the current picture.
  *
  * @protected
  * @type {string}
  * @memberof Game_Picture
  */
 private var _name: String;

 private var _origin: Float;

 private var _x: Float;

 private var _y: Float;

 private var _scaleX: Float;

 private var _scaleY: Float;

 private var _opacity: Float;

 /**
  * Blend mode, accepts an integer.
  */
 private var _blendMode: Float;

 private var _targetX: Float;

 private var _targetY: Float;

 private var _targetScaleX: Float;

 private var _targetScaleY: Float;

 private var _targetOpacity: Float;

 private var _duration: Float;

 /**
  * Tone of the picture, in RGB format.
  * 0 - 255, for all three tone elements.
  */
 private var _tone: Array<Float>;

 private var _toneTarget: Array<Float>;

 private var _toneDuration: Float;

 private var _angle: Float;

 private var _rotationSpeed: Float;

 public function new(): Void;
 public function initialize(): Void;

 /**
  * Returns the name of the game picture.
  *
  * @returns {string}
  * @memberof Game_Picture
  */
 public function name(): String;

 /**
  * Returns the origin of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function origin(): Float;

 /**
  * Returns the picture x coordinate.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function x(): Float;

 /**
  * Returns the picture y coordinate.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function y(): Float;

 /**
  * Returns x scale of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function scaleX(): Float;

 /**
  * Returns the y scale of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function scaleY(): Float;

 /**
  * Returns the opacity of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function opacity(): Float;

 /**
  * Returns the blend mode of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function blendMode(): Float; // TODO: turn this into an enum

 /**
  * Returns the tone of the game picture.
  *
  * @returns {Array<number>}
  * @memberof Game_Picture
  */
 public function tone(): Array<Float>;

 /**
  * Returns the angle of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function angle(): Float;

 public function initBasic(): Void;
 public function initTarget(): Void;
 public function initTone(): Void;
 public function initRotation(): Void;
 public function show(name: String, origin: Float, x: Float, y: Float,
  scaleX: Float, scaleY: Float, opacity: Float, blendMode: Float): Void;
 public function move(origin: Float, x: Float, y: Float, scaleX: Float,
  scaleY: Float, opacity: Float, blendMode: Float, duration: Float): Void;
 public function rotate(speed: Float): Void;
 public function tint(tone: Array<Float>, duration: Float): Void;

 /**
  * Erases the game picture.
  *
  * @memberof Game_Picture
  */
 public function erase(): Void;

 /**
  * Updates the game picture.
  *
  * @memberof Game_Picture
  */
 public function update(): Void;

 /**
  * Updates the movement of the game picture.
  *
  * @memberof Game_Picture
  */
 public function updateMove(): Void;

 /**
  * Updates the tone of the game picture.
  *
  * @memberof Game_Picture
  */
 public function updateTone(): Void;

 /**
  * Updates the rotation of the game picture.
  *
  * @memberof Game_Picture
  */
 public function updateRotation(): Void;
}
