package rm.sprites;

import rm.objects.Game_Battler;

@:expose("Sprite_Battler")
@:native("Sprite_Battler")
extern class Sprite_Battler extends Sprite_Base {
 @:native("_battler")
 public var __battler: Game_Battler;
 private var _battler: Game_Battler;
 @:native("_homeX")
 public var __homeX: Int;
 private var _homeX: Int;
 @:native("_homeY")
 public var __homeY: Int;
 private var _homeY: Int;
 @:native("_offsetX")
 public var __offsetX: Int;
 private var _offsetX: Int;
 @:native("_offsetY")
 public var __offsetY: Int;
 private var _offsetY: Int;
 @:native("_targetOffsetX")
 public var __targetOffsetX: Int;
 private var _targetOffsetX: Int;
 @:native("_targetOffsetY")
 public var __targetOffsetY: Int;
 private var _targetOffsetY: Int;
 @:native("_movementDuration")
 public var __movementDuration: Int;
 private var _movementDuration: Int;
 @:native("_selectionEffectCount")
 public var __selectionEffectCount: Int;
 private var _selectionEffectCount: Int;

 public dynamic function initMembers(): Void;

 public dynamic function setHome(x: Int, y: Int): Void;

 /**
  * Updates the main loop of the sprite battler.
  */
 public dynamic function updateMain(): Void;

 /**
  * Updates the bitmap of the sprite battler.
  */
 public dynamic function updateBitmap(): Void;

 /**
  * Updates movement on the sprite battler.
  */
 public dynamic function updateMove(): Void;

 /**
  * Updates the position of the sprite battler.
  */
 public dynamic function updatePosition(): Void;

 /**
  * Updates the sprite battler animation.
  */
 public dynamic function updateAnimation(): Void;
}
