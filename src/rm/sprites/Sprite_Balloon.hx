package rm.sprites;

import rm.types.LunaTea.BalloonId;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Balloon
 *
 * The sprite for displaying a balloon icon.
 */
@:expose("Sprite_Balloon")
@:native("Sprite_Balloon")
extern class Sprite_Balloon extends Sprite_Base {
 @:native("_balloonId")
 public var __balloonId: BalloonId;
 private var _balloonId: BalloonId; // TODO: Create Balloon ID abstract
 @:native("_duration")
 public var __duration: Int;
 private var _duration: Int;

 public dynamic function initMembers(): Void;

 public dynamic function loadBitmap(): Void;

 public dynamic function setup(balloonId: BalloonId): Void;

 /**
  * Updates the balloon sprite.
  *
  * @memberof Sprite_Balloon
  */
 public dynamic function update(): Void;

 /**
  * Updates the balloon sprite frame.
  *
  * @memberof Sprite_Balloon
  */
 public dynamic function updateFrame(): Void;

 /**
  * Returns the speed of the balloon animation.
  *
  * @returns {number}
  * @memberof Sprite_Balloon
  */
 public dynamic function speed(): Int;

 /**
  * Returns the wait time.
  *
  * @returns {number}
  * @memberof Sprite_Balloon
  */
 public dynamic function waitTime(): Int;

 /**
  * Returns the frame index of the balloon animation.
  *
  * @returns {number}
  * @memberof Sprite_Balloon
  */
 public dynamic function frameIndex(): Int;

 /**
  * Returns true if the balloon animation is playing.
  *
  * @returns {boolean}
  * @memberof Sprite_Balloon
  */
 public dynamic function isPlaying(): Bool;
}
