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
extern class Sprite_Button extends Sprite {
 @:native("_touching")
 public var __touching: Bool;
 private var _touching: Bool;
 @:native("_coldFrame")
 public var __coldFrame: Rectangle;
 private var _coldFrame: Rectangle;
 @:native("_hotFrame")
 public var __hotFrame: Rectangle;
 private var _hotFrame: Rectangle;
 @:native("_clickHandler")
 public var __clickHandler: () -> Void;
 private var _clickHandler: () -> Void;

 /**
  * Update method, which checks if the sprite is being touched and updates
  * the current frame.
  *
  * @memberof Sprite_Button
  */
 public dynamic function updateFrame(): Void;

 /**
  * Set the button sprites cold frame.
  *
  * @param {Int} x
  * @param {Int} y
  * @param {Int} width
  * @param {Int} height
  *
  * @memberof Sprite_Button
  *
  */
 public dynamic function setColdFrame(x: Int, y: Int, width: Int,
  height: Int): Void;

 /**
  * Set the button sprites hot frame
  *
  * @param {Int} x
  * @param {Int} y
  * @param {Int} width
  * @param {Int} height
  *
  * @memberof Sprite_Button
  *
  */
 public dynamic function setHotFrame(x: Int, y: Int, width: Int,
  height: Int): Void;

 /**
  * Creates a new handler and binds it to the button.
  *
  * @param {dynamic function} height
  * @memberof Sprite_Button
  */
 public dynamic function setClickHandler(method: () -> Void): Void;

 /**
  * Calls the handler method bound to the button.
  *
  * @param {dynamic function} height
  * @memberof Sprite_Button
  */
 public dynamic function callClickHandler(): Void;

 /**
  * Processes weather or not the button is being touched and calls the handler
  * bound to the button.
  * @memberof Sprite_Button
  */
 public dynamic function processTouch(): Void;

 /**
  * Returns true if the sprite button is currently active.
  * @returns {Bool}
  * @memberof Sprite_Button
  */
 public dynamic function isActive(): Bool;

 /**
  * Returns true is the button is presently being touched.
  * @returns {Bool}
  * @memberof Sprite_Button
  */
 public dynamic function isButtonTouched(): Bool;

 /**
  * Changes the x coordinate of the screen to local sprite x coordinate.
  * @param {Int} x
  * @returns {Int}
  * @memberof Sprite_Button
  */
 public dynamic function canvasToLocalX(x: Int): Int;

 /**
  * Changes the y coordinate of the screen
  * to local sprite y coordinate.
  * @param {Int} y
  * @returns {Int}
  * @memberof Sprite_Button
  */
 public dynamic function canvasToLocalY(y: Int): Int;
}
