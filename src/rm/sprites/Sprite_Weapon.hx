package rm.sprites;

import rm.types.LunaTea.WeaponImageId;
import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Weapon
 *
 * The sprite for displaying a weapon image for attacking.
 */
@:expose("Sprite_Weapon")
@:native("Sprite_Weapon")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
#if compileMV
extern class Sprite_Weapon extends Sprite_Base {
#else
extern class Sprite_Weapon extends Sprite {
#end
private var _weaponImageId: WeaponImageId;
private var _animationCount: Float;
private var _pattern: Float;

/**
 * Initializes the members of the weapon sprite object.
 *
 * @memberof Sprite_Weapon
 */
public function initMembers(): Void;

public function setup(weaponImageId: WeaponImageId): Void;
public function animationWait(): Float;

/**
 * Updates the pattern of the weapon sprite.
 *
 * @memberof Sprite_Weapon
 */
public function updatePattern(): Void;

/**
 * Loads the bitmap of the weapon sprite.
 *
 * @memberof Sprite_Weapon
 */
public function loadBitmap(): Void;

/**
 * Updates the weapon sprite frames.
 *
 * @memberof Sprite_Weapon
 */
public function updateFrame(): Void;

/**
 * Returns true if the weapon sprite is playing.
 *
 * @returns {boolean}
 * @memberof Sprite_Weapon
 */
public function isPlaying(): Bool;
}
