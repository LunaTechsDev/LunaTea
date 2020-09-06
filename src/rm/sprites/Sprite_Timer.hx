package rm.sprites;

import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Timer
 *
 * The sprite for displaying the timer.
 */
@:expose("Sprite_Timer")
@:native("Sprite_Timer")
extern class Sprite_Timer extends Sprite {
 @:native("_seconds")
 public var __seconds: Int;
 private var _seconds: Int;

 /**
  * Creates the bitmap of the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public dynamic function createBitmap(): Void;

 /**
  * Updates the bitmap of the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public dynamic function updateBitmap(): Void;

 /**
  * Redraws the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public dynamic function redraw(): Void;

 /**
  * Returns the text of the timer.
  *
  * @returns {string} The text displayed on the timer.
  * @memberof Sprite_Timer
  */
 public dynamic function timerText(): String;

 /**
  * Updates the positon of the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public dynamic function updatePosition(): Void;

 /**
  * Updates the visibility of the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public dynamic function updateVisibility(): Void;
}
