package rm.objects;

import rm.types.RPG.State;

/**
 * -----------------------------------------------------------------------------
 * Game_ActionResult
 *
 * The game object declare class for a result of a battle action. For convinience, all
 * member variables in this declare class are public.
 * @class Game_ActionResult
 */
@:expose("Game_ActionResult")
@:native("Game_ActionResult")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_ActionResult {
 public var used: Bool;
 public var missed: Bool;
 public var evaded: Bool;
 public var physical: Bool;
 public var drain: Bool;
 public var critical: Bool;
 public var success: Bool;
 public var hpAffected: Bool;
 public var hpDamage: Float;
 public var mpDamage: Float;
 public var tpDamage: Float;
 public var addedStates: Array<Float>;
 public var removedStates: Array<Float>;
 public var addedBuffs: Array<Float>;
 public var addedDebuffs: Array<Float>;
 public var removedBuffs: Array<Float>; // TODO: Enum States and Buffs into Enums

 public function new(): Void;
 public function initialize(): Void;

 /**
  * Clears the game action result.
  *
  * @memberof Game_ActionResult
  */
 public function clear(): Void;

 /**
  * Returns the added states from the action result.
  *
  * @returns {Array<RPG.State>}
  * @memberof Game_ActionResult
  */
 public function addedStateObjects(): Array<State>;

 /**
  * Returns the removes states from the result.
  *
  * @returns {Array<RPG.State>}
  * @memberof Game_ActionResult
  */
 public function removedStateObjects(): Array<State>;

 public function isStatusAffected(): Bool;

 /**
  * Returns true if the action result is a hit.
  *
  * @returns {Bool}
  * @memberof Game_ActionResult
  */
 public function isHit(): Bool;

 public function isStateAdded(stateId: Float): Bool;
 public function pushAddedState(stateId: Float): Void;
 public function isStateRemoved(stateId: Float): Bool;
 public function pushRemovedState(stateId: Float): Void;

 /**
  * Returns true if the a buff is added to the specified param
  * from the action result.
  * @param {number} paramId
  * @returns {Bool}
  * @memberof Game_ActionResult
  */
 public function isBuffAdded(paramId: Float): Bool;

 public function pushAddedBuff(paramId: Float): Void;
 public function isDebuffAdded(paramId: Float): Bool;
 public function pushAddedDebuff(paramId: Float): Void;
 public function isBuffRemoved(paramId: Float): Bool;
 public function pushRemovedBuff(paramId: Float): Void;
}
