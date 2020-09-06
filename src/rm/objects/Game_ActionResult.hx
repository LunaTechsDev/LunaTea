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
extern class Game_ActionResult {
 public var used: Bool;
 public var missed: Bool;
 public var evaded: Bool;
 public var physical: Bool;
 public var drain: Bool;
 public var critical: Bool;
 public var success: Bool;
 public var hpAffected: Bool;
 public var hpDamage: Int;
 public var mpDamage: Int;
 public var tpDamage: Int;
 public var addedStates: Array<Int>;
 public var removedStates: Array<Int>;
 public var addedBuffs: Array<Int>;
 public var addedDebuffs: Array<Int>;
 public var removedBuffs: Array<Int>; // TODO: Enum States and Buffs into Enums

 public dynamic function new(): Void;
 public dynamic function initialize(): Void;

 /**
  * Clears the game action result.
  *
  * @memberof Game_ActionResult
  */
 public dynamic function clear(): Void;

 /**
  * Returns the added states from the action result.
  *
  * @returns {Array<RPG.State>}
  * @memberof Game_ActionResult
  */
 public dynamic function addedStateObjects(): Array<State>;

 /**
  * Returns the removes states from the result.
  *
  * @returns {Array<RPG.State>}
  * @memberof Game_ActionResult
  */
 public dynamic function removedStateObjects(): Array<State>;

 public dynamic function isStatusAffected(): Bool;

 /**
  * Returns true if the action result is a hit.
  *
  * @returns {Bool}
  * @memberof Game_ActionResult
  */
 public dynamic function isHit(): Bool;

 public dynamic function isStateAdded(stateId: Int): Bool;
 public dynamic function pushAddedState(stateId: Int): Void;
 public dynamic function isStateRemoved(stateId: Int): Bool;
 public dynamic function pushRemovedState(stateId: Int): Void;

 /**
  * Returns true if the a buff is added to the specified param
  * from the action result.
  * @param {number} paramId
  * @returns {Bool}
  * @memberof Game_ActionResult
  */
 public dynamic function isBuffAdded(paramId: Int): Bool;

 public dynamic function pushAddedBuff(paramId: Int): Void;
 public dynamic function isDebuffAdded(paramId: Int): Bool;
 public dynamic function pushAddedDebuff(paramId: Int): Void;
 public dynamic function isBuffRemoved(paramId: Int): Bool;
 public dynamic function pushRemovedBuff(paramId: Int): Void;
}
