package rm.sprites;

import rm.objects.Game_Battler;
import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Sprite_StateIcon
 *
 * The sprite for displaying state icons.
 */
@:expose("Sprite_StateIcon")
@:native("Sprite_StateIcon")
extern class Sprite_StateIcon extends Sprite {
 #if compileMV
 @:native("_iconWidth")
 public static var __iconWidth: Int;
 private static var _iconWidth: Int;
 @:native("_iconHeight")
 public static var __iconHeight: Int;
 private static var _iconHeight: Int;
 #else
 #end
 @:native('_battler')
 public var __battler: Game_Battler;
 private var _battler: Game_Battler;
 @:native("_iconIndex")
 public var __iconIndex: Int;
 private var _iconIndex: Int;
 @:native("_animationCount")
 public var __animationCount: Int;
 private var _animationCount: Int;
 @:native("_animationIndex")
 public var __animationIndex: Int;
 private var _animationIndex: Int;

 /**
  * Initializes the sprite state icon properties.
  *
  * @memberof Sprite_StateIcon
  */
 public dynamic function initMembers(): Void;

 /**
  * Loads the bitmap of the sprite state icon.
  *
  * @memberof Sprite_StateIcon
  */
 public dynamic function loadBitmap(): Void;

 public dynamic function setup(battler: Game_Battler): Void;
 public dynamic function animationWait(): Int;

 /**
  * Updates the icon displayed in the icon sprite.
  *
  * @memberof Sprite_StateIcon
  */
 public dynamic function updateIcon(): Void;

 /**
  * Updates the state icon sprite frame.
  *
  * @memberof Sprite_StateIcon
  */
 public dynamic function updateFrame(): Void;
}
