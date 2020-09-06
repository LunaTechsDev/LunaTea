package rm.sprites;

import rm.core.ToneFilter;
import rm.core.ToneSprite;
import rm.core.ScreenSprite;
import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Spriteset_Base
 *
 * The superdeclare class of Spriteset_Map and Spriteset_Battle.
 */
@:expose("Spriteset_Base")
@:native("Spriteset_Base")
extern class Spriteset_Base extends Sprite {
 @:native("_tone")
 public var __tone: Array<Int>;
 private var _tone: Array<Int>;
 @:native("_baseSprite")
 public var __baseSprite: Sprite;
 private var _baseSprite: Sprite;
 @:native("_blackScreen")
 public var __blackScreen: ScreenSprite;
 private var _blackScreen: ScreenSprite;
 @:native("_toneFilter")
 public var __toneFilter: ToneFilter;
 private var _toneFilter: ToneFilter;
 @:native("_toneSprite")
 public var __toneSprite: ToneSprite;
 private var _toneSprite: ToneSprite;
 @:native("_pictureContainer")
 public var __pictureContainer: Sprite;
 private var _pictureContainer: Sprite;
 @:native("_timerSprite")
 public var __timerSprite: Sprite_Timer;
 private var _timerSprite: Sprite_Timer;
 @:native("_flashSprite")
 public var __flashSprite: ScreenSprite;
 private var _flashSprite: ScreenSprite;
 @:native("_fadeSprite")
 public var __fadeSprite: ScreenSprite;
 private var _fadeSprite: ScreenSprite;

 /**
  * Creates the lower layer including the base sprites.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function createLowerLayer(): Void;

 /**
  * Creates the upper layer including the pictures,
  * timer, and screen sprites.
  * @memberof Spriteset_Base
  */
 public dynamic function createUpperLayer(): Void;

 /**
  * Create the base sprite.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function createBaseSprite(): Void;

 /**
  * Creates the tone changer sprite.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function createToneChanger(): Void;

 /**
  * Creates the WebGL toner.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function createWebGLToneChanger(): Void;

 /**
  * Creates the Canvas tone.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function createCanvasToneChanger(): Void;

 /**
  * Creates a new sprite picture on the spritesetb ase.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function createPictures(): Void;

 /**
  * Creates a new Sprite timer on the spriteset base.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function createTimer(): Void;

 /**
  * Creates the screen sprite.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function createScreenSprites(): Void;

 /**
  * Updates the screen sprites on the spriteset base.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function updateScreenSprites(): Void;

 public dynamic function updateToneChanger(): Void;

 /**
  * Updates the WebGL tone changer.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function updateWebGLToneChanger(): Void;

 /**
  * Updates the Canvas tone changer.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function updateCanvasToneChanger(): Void;

 /**
  * Updates the position of spriteset base.
  *
  * @memberof Spriteset_Base
  */
 public dynamic function updatePosition(): Void;
}
