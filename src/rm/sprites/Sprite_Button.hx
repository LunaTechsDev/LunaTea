package rm.sprites;

import rm.core.Rectangle;
import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Button
 *
 * The sprite for displaying a button.
 */
@:expose("Sprite_Button")
@:native("Sprite_Button")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
#if compileMV
extern class Sprite_Button extends Sprite {
#else
extern class Sprite_Button extends Sprite_Clickable {
#end
private var _touching: Bool;
private var _coldFrame: Rectangle;
private var _hotFrame: Rectangle;
private var _clickHandler: () -> Void;

/**
 * Update method, which checks if the sprite is being touched and updates
 * the current frame.
 *
 * @memberof Sprite_Button
 */
public function updateFrame(): Void;

/**
 * Set the button sprites cold frame.
 *
 * @param {Float} x
 * @param {Float} y
 * @param {Float} width
 * @param {Float} height
 *
 * @memberof Sprite_Button
 *
 */
public function setColdFrame(x: Float, y: Float, width: Float,
 height: Float): Void;

/**
 * Set the button sprites hot frame
 *
 * @param {Float} x
 * @param {Float} y
 * @param {Float} width
 * @param {Float} height
 *
 * @memberof Sprite_Button
 *
 */
public function setHotFrame(x: Float, y: Float, width: Float,
 height: Float): Void;

/**
 * Creates a new handler and binds it to the button.
 *
 * @param {function} height
 * @memberof Sprite_Button
 */
public function setClickHandler(method: () -> Void): Void;

/**
 * Calls the handler method bound to the button.
 *
 * @param {function} height
 * @memberof Sprite_Button
 */
public function callClickHandler(): Void;

/**
 * Processes weather or not the button is being touched and calls the handler
 * bound to the button.
 * @memberof Sprite_Button
 */
public function processTouch(): Void;

/**
 * Returns true if the sprite button is currently active.
 * @returns {Bool}
 * @memberof Sprite_Button
 */
public function isActive(): Bool;

/**
 * Returns true is the button is presently being touched.
 * @returns {Bool}
 * @memberof Sprite_Button
 */
public function isButtonTouched(): Bool;

/**
 * Changes the x coordinate of the screen to local sprite x coordinate.
 * @param {Float} x
 * @returns {Float}
 * @memberof Sprite_Button
 */
public function canvasToLocalX(x: Float): Float;

/**
 * Changes the y coordinate of the screen
 * to local sprite y coordinate.
 * @param {Float} y
 * @returns {Float}
 * @memberof Sprite_Button
 */
public function canvasToLocalY(y: Float): Float;
}
