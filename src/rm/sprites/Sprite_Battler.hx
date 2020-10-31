package rm.sprites;

import rm.objects.Game_Battler;

@:expose("Sprite_Battler")
@:native("Sprite_Battler")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
#if compileMV
extern class Sprite_Battler extends Sprite_Base {
#else
extern class Sprite_Battler extends Sprite_Clickable {
#end
private var _battler: Game_Battler;
private var _homeX: Float;
private var _homeY: Float;
private var _offsetX: Float;
private var _offsetY: Float;
private var _targetOffsetX: Float;
private var _targetOffsetY: Float;
private var _movementDuration: Float;
private var _selectionEffectCount: Float;
public function initMembers(): Void;
public function setHome(x: Float, y: Float): Void;

/**
 * Updates the main loop of the sprite battler.
 */
public function updateMain(): Void;

/**
 * Updates the bitmap of the sprite battler.
 */
public function updateBitmap(): Void;

/**
 * Updates movement on the sprite battler.
 */
public function updateMove(): Void;

/**
 * Updates the position of the sprite battler.
 */
public function updatePosition(): Void;

/**
 * Updates the sprite battler animation.
 */
public function updateAnimation(): Void;
}
