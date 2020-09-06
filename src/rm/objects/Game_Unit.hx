package rm.objects;

/**
 * Superclass of Game_Party & Game_Troop
 *
 * @class Game_Unit
 */
@:expose("Game_Unit")
@:native("Game_Unit")
extern class Game_Unit {
 @:native("_inBattle")
 public var __inBattle: Bool;
 private var _inBattle: Bool;

 public dynamic function new(): Void;
 public dynamic function initialize(): Void;

 /**
  * Returns true if unit is in battle.
  *
  * @returns {boolean}
  * @memberof Game_Unit
  */
 public dynamic function inBattle(): Bool;

 /**
  * Returns the list of battlers.
  *
  * @returns {Array<Game_Battler>}
  * @memberof Game_Unit
  */
 public dynamic function members(): Array<Game_Battler>;

 /**
  * Returns the list of alive battlers.
  *
  * @returns {Array<Game_Battler>}
  * @memberof Game_Unit
  */
 public dynamic function aliveMembers(): Array<Game_Battler>;

 /**
  * Returns the list of dead battlers.
  *
  * @returns {Array<Game_Battler>}
  * @memberof Game_Unit
  */
 public dynamic function deadMembers(): Array<Game_Battler>;

 /**
  * Returns the list of movable members.
  *
  * @returns {Array<Game_Battler>}
  * @memberof Game_Unit
  */
 public dynamic function movableMembers(): Array<Game_Battler>;

 /**
  * Clears the unit's actions.
  *
  * @memberof Game_Unit
  */
 public dynamic function clearActions(): Void;

 /**
  * Returns the agility of the unit.
  *
  * @returns {Int}
  * @memberof Game_Unit
  */
 public dynamic function agility(): Int;

 public dynamic function tgrSum(): Int;

 /**
  * Returns a random target from the game unit.
  *
  * @returns {Game_Battler}
  * @memberof Game_Unit
  */
 public dynamic function randomTarget(): Game_Battler;

 /**
  * Returns a random dead target from the game unit.
  *
  * @returns {Game_Battler}
  * @memberof Game_Unit
  */
 public dynamic function randomDeadTarget(): Game_Battler;

 public dynamic function smoothTarget(index: Int): Game_Battler;
 public dynamic function smoothDeadTarget(index: Int): Game_Battler;

 /**
  * Clears the action results.
  *
  * @memberof Game_Unit
  */
 public dynamic function clearResults(): Void;

 /**
  * Handler for when battle is started.
  *
  * @memberof Game_Unit
  */
 public dynamic function onBattleStart(): Void;

 /**
  * Handler for when battle has ended.
  *
  * @memberof Game_Unit
  */
 public dynamic function onBattleEnd(): Void;

 /**
  * Creates the action's of the game unit.
  *
  * @memberof Game_Unit
  */
 public dynamic function makeActions(): Void;

 /**
  * Selects a member of the unit given a battler.
  *
  * @param {Game_Battler} activeMember
  * @memberof Game_Unit
  */
 public dynamic function select(activeMember: Game_Battler): Void;

 /**
  * Returns true if all members of the unit are dead.
  *
  * @returns {Bool}
  * @memberof Game_Unit
  */
 public dynamic function isAllDead(): Bool;

 public dynamic function substituteBattler(): Game_Battler;
}
