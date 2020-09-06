package rm.sprites;

import rm.objects.Game_Enemy;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Enemy
 *
 * The sprite for displaying an enemy.
 */
@:expose("Sprite_Enemy")
@:native("Sprite_Enemy")
extern class Sprite_Enemy extends Sprite_Battler {
 @:native("_enemy")
 public var __enemy: Game_Enemy;
 private var _enemy: Game_Enemy;
 @:native("_appeared")
 public var __appeared: Bool;
 private var _appeared: Bool;
 @:native("_battlerName")
 public var __battlerName: String;
 private var _battlerName: String;
 @:native("_battlerHue")
 public var __battlerHue: Int;
 private var _battlerHue: Int;
 @:native("_effectType")
 public var __effectType: String;
 private var _effectType: String;
 @:native("_effectDuration")
 public var __effectDuration: Int;
 private var _effectDuration: Int;
 @:native("_shake")
 public var __shake: Int;
 private var _shake: Int;
 @:native("_stateIconSprite")
 public var __stateIconSprite: Sprite_StateIcon;
 private var _stateIconSprite: Sprite_StateIcon;

 public dynamic function new(battler: Game_Enemy): Void;

 public dynamic function initialize(battler: Game_Enemy): Void;

 public dynamic function createStateIconSprite(): Void;

 /**
  * Sets the battler to an instance of game enemy.
  *
  * @param {Game_Enemy} battler Instance of game enemy.
  * @memberof Sprite_Enemy
  */
 public dynamic function setBattler(battler: Game_Enemy): Void;

 public dynamic function loadBitmap(name: String, hue: Int): Void;

 /**
  * Updates the state sprite on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function updateStateSprite(): Void;

 public dynamic function initVisibility(): Void;

 public dynamic function setupEffect(): Void;

 public dynamic function startEffect(effectType: String): Void;

 /**
  * Starts the appearinig effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function startAppear(): Void;

 /**
  * Starts the disappearing effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function startDisappear(): Void;

 /**
  * Starts the whiten effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function startWhiten(): Void;

 /**
  * Starts the blink effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function startBlink(): Void;

 /**
  * Starts the collapse effect of the sprite
  * enemy.
  * @memberof Sprite_Enemy
  */
 public dynamic function startCollapse(): Void;

 /**
  * Starts the boss collapse effect of the sprite
  * enemy.
  * @memberof Sprite_Enemy
  */
 public dynamic function startBossCollapse(): Void;

 /**
  * Starts the instant collapse effect of the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function startInstantCollapse(): Void;

 public dynamic function updateEffect(): Void;

 /**
  * Returns true if the effect type on the sprite enemy
  * is not null.
  * @returns {Bool}
  * @memberof Sprite_Enemy
  */
 public dynamic function isEffecting(): Bool;

 /**
  * Revers the sprite enemy to a normal state.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function revertToNormal(): Void;

 /**
  * Updates the whiten effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function updateWhiten(): Void;

 /**
  * Updates the blink effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function updateBlink(): Void;

 /**
  * Updates the appear effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function updateAppear(): Void;

 public dynamic function updateDisappear(): Void;

 /**
  * Updates the collapse effect.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function updateCollapse(): Void;

 /**
  * Updates the boss collapse effect.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function updateBossCollapse(): Void;

 /**
  * Updates the instant collapse effect.
  *
  * @memberof Sprite_Enemy
  */
 public dynamic function updateInstantCollapse(): Void;

 public dynamic function damageOffsetX(): Int;
 public dynamic function damageOffsetY(): Int;
}
