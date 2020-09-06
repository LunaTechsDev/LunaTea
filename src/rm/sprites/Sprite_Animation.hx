package rm.sprites;

import haxe.DynamicAccess;
import rm.core.Bitmap;
import rm.core.Sprite;
import rm.core.ScreenSprite;
import rm.types.RPG.Animation;
import rm.types.RPG.AnimationTiming;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Animation
 *
 * The sprite for displaying an animation.
 */
@:expose("Sprite_Animation")
@:native("Sprite_Animation")
extern class Sprite_Animation extends Sprite {
 /**
  * {
   key: Animation
  };
  */
 @:native("_checker1")
 public var __checker1: DynamicAccess<Dynamic>;

 /**
  * Structure
  * {
   key: Animation
  };
  */
 private static var _checker1: DynamicAccess<Dynamic>;

 /**
  * Structure
  * {
   key: Animation
  };
  */
 @:native("_checker2")
 public static var __checker2: DynamicAccess<Dynamic>;

 /**
  * {
   key: Animation
  };
  */
 private static var _checker2: DynamicAccess<Dynamic>;

 @:native("_target")
 public var __target: Sprite_Base;
 private var _target: Sprite_Base;

 @:native("_animation")
 public var __animation: Animation;
 private var _animation: Animation;

 @:native("_mirror")
 public var __mirror: Bool;
 private var _mirror: Bool;

 @:native("_delay")
 public var __delay: Int;
 private var _delay: Int;

 @:native("_rate")
 public var __rate: Float;
 private var _rate_: Float; // TODO: Not sure if intentionaL?

 @:native("_duration")
 public var __duration: Int;
 private var _duration: Int;

 @:native("_flashColor")
 public var __flashColor: Array<Int>;
 private var _flashColor: Array<Int>;

 @:native("_flashDuration")
 public var __flashDuration: Int;
 private var _flashDuration: Int;

 @:native("_screenFlashDuration")
 public var __screenFlashDuration: Int;
 private var _screenFlashDuration: Int;

 @:native("_hidingDuration")
 public var __hidingDuration: Int;
 private var _hidingDuration: Int;

 @:native("_bitmap1")
 public var __bitmap1: Bitmap;
 private var _bitmap1: Bitmap;

 @:native("_bitmap2")
 public var __bitmap2: Bitmap;
 private var _bitmap2: Bitmap;

 @:native("_cellSprites")
 public var __cellSprites: Array<Sprite>;
 private var _cellSprites: Array<Sprite>;

 @:native("_screenFlashSprite")
 public var __screenFlashSprite: ScreenSprite;
 private var _screenFlashSprite: ScreenSprite;

 @:native("_duplicated")
 public var __duplicated: Bool;
 private var _duplicated: Bool;

 @:native("_reduceArtifacts")
 public var __reduceArtifacts: Bool;
 private var _reduceArtifacts: Bool;

 public dynamic function initMembers(): Void;
 public dynamic function setup(target: Sprite_Base, animation: Animation,
  mirror: Bool, delay: Int): Void;

 /**
  * Removes the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function remove(): Void;

 public dynamic function setupRate(): Void;

 public dynamic function setupDuration(): Void;

 /**
  * Updates the flash animation of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function updateFlash(): Void;

 public dynamic function updateScreenFlash(): Void;

 /**
  * Returns the absolute x position of the sprite animation.
  *
  * @returns {number}
  * @memberof Sprite_Animation
  */
 public dynamic function absoluteX(): Float;

 /**
  * Returns the absolute y position of the sprite aniamtion.
  *
  * @returns {number}
  * @memberof Sprite_Animation
  */
 public dynamic function absoluteY(): Float;

 /**
  * Updates the hiding of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function updateHiding(): Void;

 /**
  * Returns true if the sprite animation is playing.
  *
  * @returns {boolean}
  * @memberof Sprite_Animation
  */
 public dynamic function isPlaying(): Bool;

 /**
  * Loads the bitmaps of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function loadBitmaps(): Void;

 /**
  * Returns true if the sprite animation is ready.
  *
  * @returns {boolean}
  * @memberof Sprite_Animation
  */
 public dynamic function isReady(): Bool;

 /**
  * Create the sprites of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function createSprites(): Void;

 /**
  * Create the cell sprites of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function createCellSprites(): Void;

 /**
  * Create the screen flash sprite of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function createScreenFlashSprite(): Void;

 /**
  * Updates the main loop of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function updateMain(): Void;

 /**
  * Updates the position of the sprite animation.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function updatePosition(): Void;

 /**
  * Updates the frame of the sprite aniamtion.
  *
  * @memberof Sprite_Animation
  */
 public dynamic function updateFrame(): Void;

 /**
  * Returns the current frame index of the sprite aniamtion.
  *
  * @returns {number}
  * @memberof Sprite_Animation
  */
 public dynamic function currentFrameIndex(): Int;

 public dynamic function updateAllCellSprites(frame: Array<Array<Int>>): Void;
 public dynamic function updateCellSprite(sprite: Sprite,
  cell: Array<Int>): Void;
 public dynamic function processTimingData(timing: AnimationTiming): Void;
 public dynamic function startFlash(color: Array<Int>, duration: Int): Void;
 public dynamic function startScreenFlash(color: Array<Int>,
  duration: Int): Void;

 /**
  * Starts hiding the sprite animation.
  *
  * @param {number} duration The duration of the hide.
  * @memberof Sprite_Animation
  */
 public dynamic function startHiding(duration: Int): Void;
}
