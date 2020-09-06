package rm.objects;

import haxe.DynamicAccess;
import js.lib.Object;
import rm.types.RPG;

/**
 * -----------------------------------------------------------------------------
 * Game_Troop
 *
 * The game object declare class for a troop and the battle-related data.
 * @class Game_Troop
 */
@:expose("Game_Temp")
@:native("Game_Troop")
extern class Game_Troop extends Game_Unit {
 public static var LETTER_TABLE_HALF: Array<String>;
 public static var LETTER_TABLE_FULL: Array<String>;
 @:native("_interpreter")
 public var __interpreter: Game_Interpreter;
 private var _interpreter: Game_Interpreter;
 @:native("_troopId")
 public var __troopId: Int;
 private var _troopId: Int;

 public dynamic function new(): Void;

 /**
  * _eventFlags:{
   [Number]:Bool
  }
  */
 private var _eventFlags: DynamicAccess<Bool>;

 private var _enemies: Array<Game_Enemy>;
 private var _turnCount: Int;

 /**
  * {
   [name:string]:number
  }
  */
 private var _namesCount: DynamicAccess<Int>; // TODO: Use DynamicAccess

 /**
  * Returns all enemies in the battle.
  *
  * @returns {Array<Game_Enemy>}
  * @memberof Game_Troop
  */
 public dynamic function members(): Array<Game_Enemy>;

 /**
  * Returns all alive enemies.
  *
  * @returns {Array<Game_Enemy>}
  * @memberof Game_Troop
  */
 public dynamic function aliveMembers(): Array<Game_Enemy>;

 /**
  * Returns all dead enemies.
  *
  * @returns {Array<Game_Enemy>}
  * @memberof Game_Troop
  */
 public dynamic function deadMembers(): Array<Game_Enemy>;

 /**
  * Returns movable enemies.
  *
  * @returns {Array<Game_Enemy>}
  * @memberof Game_Troop
  */
 public dynamic function movableMembers(): Array<Game_Enemy>;

 /**
  * Returns true if event is running.
  *
  * @returns {boolean}
  * @memberof Game_Troop
  */
 public dynamic function isEventRunning(): Bool;

 /**
  * Updates the game interpreter.
  *
  * @memberof Game_Troop
  */
 public dynamic function updateInterpreter(): Void;

 /**
  * Returns the turn count.
  *
  * @returns {number}
  * @memberof Game_Troop
  */
 public dynamic function turnCount(): Int;

 public dynamic function clear(): Void;

 /**
  * Returns troop information from the database.
  *
  * @returns {RPG.Troop}
  * @memberof Game_Troop
  */
 public dynamic function troop(): Troop;

 public dynamic function setup(troopId: Int): Void;

 /**
  * Creates unique names for each enemy.
  *
  * @memberof Game_Troop
  */
 public dynamic function makeUniqueNames(): Void;

 /**
  * Returns the letter table for enemy troops.
  *
  * @returns {Array<string>}
  * @memberof Game_Troop
  */
 public dynamic function letterTable(): Array<String>;

 /**
  * Returns the name of enemies within the troop.
  *
  * @returns {Array<string>}
  * @memberof Game_Troop
  */
 public dynamic function enemyNames(): Array<String>;

 public dynamic function meetsConditions(page: EventPage): Bool;
 public dynamic function setupBattleEvent(): Void;

 /**
  * Increases the turn number.
  *
  * @memberof Game_Troop
  */
 public dynamic function increaseTurn(): Void;

 /**
  * Returns the total exp of all members of the enemy troop.
  *
  * @returns {number}
  * @memberof Game_Troop
  */
 public dynamic function expTotal(): Int;

 /**
  * Return the total gold of all enemies.
  *
  * @returns {number}
  * @memberof Game_Troop
  */
 public dynamic function goldTotal(): Int;

 /**
  * Returns the gold rate based on game party gold rate.
  *
  * @returns {number}
  * @memberof Game_Troop
  */
 public dynamic function goldRate(): Int;

 /**
  * Creates the drop items for all members of the enemy troop, and
  * returns the item information.
  * @returns {Array<RPG.BaseItem>}
  * @memberof Game_Troop
  */
 public dynamic function makeDropItems(): Array<BaseItem>;
}
