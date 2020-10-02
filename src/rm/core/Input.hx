package rm.core;

import js.html.KeyboardEvent;
import js.html.Gamepad;
import js.lib.Object;

@:expose("Input")
@:native("Input")
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
@:build(macros.BuildMacroTools.buildDynamicFunctions())
extern class Input {
 /**
  * Current Input State Object
  * ```
  * {
   [key:string]:Bool
  };
  * ```
  */
 private var _currentState: Object;

 /**
  * Previous Input State Object
  * ```
  * {
   [key:string]:Bool
  };
  * ```
  */
 private var _previousState: Object;

 private var _gamepadStates: Array<Array<Bool>>;
 private var _latestButton: String;
 private var _pressedTime: Float;
 private var _dir4: Float;
 private var _dir8: Float;
 private var _preferredAxis: String;
 private var _date: Float;

 /**
  * The wait time of the key repeat in frames.
  *
  * @static
  * @property keyRepeatWait
  * @type Number
  */
 public static var keyRepeatWait: Float;

 /**
  * The interval of the key repeat in frames.
  *
  * @static
  * @property keyRepeatInterval
  * @type Number
  */
 public static var keyRepeatInterval: Float;

 /**
  * A hash table to convert from a virtual key code to a mapped key name.
  *
  * @static
  * @property keyMapper
  * @type Object
  * ```
  * {
   [key:number]:string
  }
  * ```
  */
 public static var keyMapper: Object;

 /**
  * A hash table to convert from a gamepad button to a mapped key name.
  *
  * @static
  * @property gamepadMapper
  * @type Object
  * ```
  * {
   [key:number]:String
  }
  * ```
  */
 public static var gamepadMapper: Object;

 /**
  * [read-only] The four direction value as a number of the numpad, or 0 for neutral.
  *
  * @static
  * @property dir4
  * @type Number
  */
 public static var dir4: Float;

 /**
  * [read-only] The eight direction value as a number of the numpad, or 0 for neutral.
  *
  * @static
  * @property dir8
  * @type Number
  */
 public static var dir8: Float;

 /**
  * [read-only] The time of the last input in milliseconds.
  *
  * @static
  * @property date
  * @type Number
  */
 public static var date: Float;

 /**
  * Initializes the input system.
  *
  * @static
  * @method initialize
  */
 public static function initialize(): Void;

 /**
  * Clears all the input data.
  *
  * @static
  * @method clear
  */
 public static function clear(): Void;

 /**
  * Updates the input data.
  *
  * @static
  * @method update
  */
 public static function update(): Void;

 /**
  * Checks whether a key is currently pressed down.
  *
  * @static
  * @method isPressed
  * @param {String} keyName The mapped name of the key
  * @return {Boolean} True if the key is pressed
  */
 public static function isPressed(keyName: String): Bool;

 /**
  * Checks whether a key is just pressed.
  *
  * @static
  * @method isTriggered
  * @param {String} keyName The mapped name of the key
  * @return {Boolean} True if the key is triggered
  */
 public static function isTriggered(keyName: String): Bool;

 /**
  * Checks whether a key is just pressed or a key repeat occurred.
  *
  * @static
  * @method isRepeated
  * @param {String} keyName The mapped name of the key
  * @return {Boolean} True if the key is repeated
  */
 public static function nisRepeated(keyName: String): Bool;

 /**
  * Checks whether a key is kept depressed.
  *
  * @static
  * @method isLongPressed
  * @param {String} keyName The mapped name of the key
  * @return {Boolean} True if the key is long-pressed
  */
 public static function isLongPressed(keyName: String): Bool;

 /**
  * @static
  * @method _wrapNwjsAlert
  * @private
  */
 private static function _wrapNwjsAlert(): Void;

 /**
  * @static
  * @method _setupEventHandlers
  * @private
  */
 private static function _setupEventHandlers(): Void;

 /**
  * @static
  * @method _onKeyDown
  * @param {KeyboardEvent} event
  * @private
  */
 private static function _onKeyDown(event: KeyboardEvent): Void;

 /**
  * @static
  * @method _shouldPreventDefault
  * @param {Number} keyCode
  * @return {Boolean}
  * @private
  */
 private static function _shouldPreventDefault(keyCode: Float): Bool;

 /**
  * @static
  * @method _onKeyUp
  * @param {KeyboardEvent} event
  * @private
  */
 private static function _onKeyUp(event: KeyboardEvent): Void;

 /**
  * @static
  * @method _onLostFocus
  * @private
  */
 private static function _onLostFocus(): Void;

 /**
  * @static
  * @method _pollGamepads
  * @private
  */
 private static function _pollGamepads(): Void;

 /**
  * @static
  * @method _updateGamepadState
  * @param {Gamepad} gamepad
  * @private
  */
 private static function _updateGamepadState(gamepad: Gamepad): Void;

 /**
  * @static
  * @method _updateDirection
  * @private
  */
 private static function _updateDirection(): Void;

 /**
  * @static
  * @method _signX
  * @return {Number}
  * @private
  */
 private function _signX(): Float;

 /**
  * @static
  * @method _signY
  * @return {Number}
  * @private
  */
 private function _signY(): Float;

 /**
  * @static
  * @method _makeNumpadDirection
  * @param {Number} x
  * @param {Number} y
  * @return {Number}
  * @private
  */
 private function _makeNumpadDirection(x: Float, y: Float): Float;

 /**
  * @static
  * @method _isEscapeCompatible
  * @param {String} keyName
  * @return {Boolean}
  * @private
  */
 private function _isEscapeCompatible(keyName: String): Bool;
}
