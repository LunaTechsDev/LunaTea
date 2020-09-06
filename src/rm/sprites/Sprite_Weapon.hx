package rm.sprites;

import rm.types.LunaTea.WeaponImageId;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Weapon
 *
 * The sprite for displaying a weapon image for attacking.
 */
@:expose("Sprite_Weapon")
@:native("Sprite_Weapon")
extern class Sprite_Weapon extends Sprite_Base {
 @:native("_weaponImageId")
 public var __weaponImageId: WeaponImageId;
 private var _weaponImageId: WeaponImageId;
 @:native("_animaationCount")
 public var __animationCount: Int;
 private var _animationCount: Int;
 @:native("_pattern")
 public var __pattern: Int;
 private var _pattern: Int;

 /**
  * Initializes the members of the weapon sprite object.
  *
  * @memberof Sprite_Weapon
  */
 public dynamic function initMembers(): Void;

 public dynamic function setup(weaponImageId: WeaponImageId): Void;
 public dynamic function animationWait(): Int;

 /**
  * Updates the pattern of the weapon sprite.
  *
  * @memberof Sprite_Weapon
  */
 public dynamic function updatePattern(): Void;

 /**
  * Loads the bitmap of the weapon sprite.
  *
  * @memberof Sprite_Weapon
  */
 public dynamic function loadBitmap(): Void;

 /**
  * Updates the weapon sprite frames.
  *
  * @memberof Sprite_Weapon
  */
 public dynamic function updateFrame(): Void;

 /**
  * Returns true if the weapon sprite is playing.
  *
  * @returns {boolean}
  * @memberof Sprite_Weapon
  */
 public dynamic function isPlaying(): Bool;
}
