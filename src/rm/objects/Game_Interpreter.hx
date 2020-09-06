package rm.objects;

import rm.types.LunaTea.InterpreterWaitMode;
import rm.types.RPG.EventCommand;
import haxe.extern.EitherType;
import js.lib.Object;

typedef Branch = {
 var Indent: EitherType<Int, Bool>;
}

// {[indent: Int]: Int | Bool}

/**
 * -----------------------------------------------------------------------------
 * Game_Interpreter
 *
 * The interpreter for running event commands.
 * @class Game_Interpreter
 */
@:expose("Game_Interpreter")
@:native("Game_Interpreter")
extern class Game_Interpreter {
 @:native("_depth")
 public var __depth: Int;
 private var _depth: Int;
 @:native("_branch")
 public var __branch: Object;
 private var _branch: Object; // Branch
 @:native("_params")
 public var __params: Array<Any>;
 private var _params: Array<Any>;
 @:native("_indent")
 public var __indent: Int;
 private var _indent: Int;
 @:native("_frameCount")
 public var __frameCount: Int;
 private var _frameCount: Int;
 @:native("_freezeChecker")
 public var __freezeChecker: Int;
 private var _freezeChecker: Int;
 @:native("_mapId")
 public var __mapId: Int;
 private var _mapId: Int;
 @:native("_eventId")
 public var __eventId: Int;
 private var _eventId: Int;
 @:native("_list")
 public var __list: Array<EventCommand>;
 private var _list: Array<EventCommand>;
 @:native("_index")
 public var __index: Int;
 private var _index: Int;
 @:native("_waitCount")
 public var __waitCount: Int;
 private var _waitCount: Int;
 @:native("_waitMode")
 public var __waitMode: InterpreterWaitMode;
 private var _waitMode: InterpreterWaitMode;
 @:native("_comments")
 public var __comments: String;
 private var _comments: String;
 @:native("_character")
 public var __character: Game_Event;
 private var _character: Game_Event;
 @:native("_childInterpreter")
 public var __childInterpreter: Game_Interpreter;
 private var _childInterpreter: Game_Interpreter;

 public dynamic function new(depth: Int);
 public dynamic function checkOverflow(): Void;

 /**
  * Clears the interpreter.
  *
  * @memberof Game_Interpreter
  */
 public dynamic function clear(): Void;

 /**
  * Sets up the interpreter with the list of event commands, and the given
  * event Id.
  *
  * @param {Array<RPG.EventCommand>} list
  * @param {Int} eventId
  * @memberof Game_Interpreter
  */
 public dynamic function setup(list: Array<EventCommand>, eventId: Int): Void;

 /**
  * Returns the currrent eventId.
  *
  * @returns {Int}
  * @memberof Game_Interpreter
  */
 public dynamic function eventId(): Int;

 /**
  * Returns true if the event is on the current map.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public dynamic function isOnCurrentMap(): Bool;

 /**
  * Returns true after setting up the reserved common event.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public dynamic function setupReservedCommonEvent(): Bool;

 /**
  * Returns true if the interpreter is running.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public dynamic function isRunning(): Bool;

 public dynamic function update(): Void;

 /**
  * Updates the child game interpreter.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public dynamic function updateChild(): Bool;

 /**
  * Updates the wait of the game interpreter.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public dynamic function updateWait(): Bool;

 public dynamic function updateWaitCount(): Bool;
 public dynamic function updateWaitMode(): Bool;

 /**
  * Sets the wait mode of the interpreter.
  *
  * @param {String} waitMode
  * @memberof Game_Interpreter
  */
 public dynamic function setWaitMode(waitMode: String): Void;

 /**
  * sets a specified wait duration for the interpreter.
  *
  * @param {Int} duration
  * @memberof Game_Interpreter
  */
 public dynamic function wait(duration: Int): Void;

 public dynamic function fadeSpeed(): Int;

 /**
  * Executes the event command;
  * returns true or false based on execution.
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public dynamic function executeCommand(): Bool;

 /**
  * Checks if the interpreter has frozen.
  *
  * @returns {Bool}
  * @memberof Game_Interpreter
  */
 public dynamic function checkFreeze(): Bool;

 /**
  * Terminates the game interpreter.
  *
  * @memberof Game_Interpreter
  */
 public dynamic function terminate(): Void;

 /**
  * Skips a conditional branch on the interpreter.
  *
  * @memberof Game_Interpreter
  */
 public dynamic function skipBranch(): Void;

 /**
  * Returns the current event command.
  *
  * @returns {RPG.EventCommand}
  * @memberof Game_Interpreter
  */
 public dynamic function currentCommand(): EventCommand;

 /**
  * Returns the next event code.
  *
  * @returns {Int}
  * @memberof Game_Interpreter
  */
 public dynamic function nextEventCode(): Int;

 public dynamic function iterateActorId(param: Int,
  callback: (actor: Game_Actor) -> Void): Void;
 public dynamic function iterateActorEx(param1: Int, param2: Int,
  callback: (actor: Game_Actor) -> Void): Void;
 public dynamic function iterateActorIndex(param: Int,
  callback: (actor: Game_Actor) -> Void): Void;
 public dynamic function iterateEnemyIndex(param: Int,
  callback: (enemt: Game_Enemy) -> Void): Void;
 public dynamic function iterateBattler(param1: Int, param2: Int,
  callback: (battler: Game_Battler) -> Void): Void;
 public dynamic function character(param: Int): Game_Character;
 public dynamic function operateValue(operation: Int, operandType: Int,
  operand: Int): Int;
 public dynamic function changeHp(target: Int, value: Int,
  allowDeath: Bool): Void;

 /**
  * Show Text
  */
 public dynamic function command101(): Bool;

 /**
  * Show Choices
  */
 public dynamic function command102(): Bool;

 public dynamic function setupChoices(params: Array<Any>): Void;

 /**
  * When [**]
  */
 public dynamic function command402(): Bool;

 /**
  * When Cancel
  */
 public dynamic function command403(): Bool;

 /**
  * Input Number
  */
 public dynamic function command103(): Bool;

 /**
  *
  * @param params
  */
 public dynamic function setupNumInput(params: Array<Int>): Void;

 /**
  * Select Item
  */
 public dynamic function command104(): Bool;

 public dynamic function setupItemChoice(params: Array<Int>): Void;

 /**
  * Show Scrolling Text
  */
 public dynamic function command105(): Bool;

 /**
  * Comment
  */
 public dynamic function command108(): Bool;

 /**
  * Conditional Branch
  */
 public dynamic function command111(): Bool;

 /**
  * Else
  */
 public dynamic function command411(): Bool;

 /**
  * Loop
  */
 public dynamic function command112(): Bool;

 /**
  * Repeat Above
  */
 public dynamic function command413(): Bool;

 /**
  * Break Loop
  */
 public dynamic function command113(): Bool;

 /**
  * Exit Event Processing
  */
 public dynamic function command115(): Bool;

 /**
  * Common Event
  */
 public dynamic function command117(): Bool;

 public dynamic function setupChild(list: Array<EventCommand>,
  eventId: Int): Void;

 /**
  * Label
  */
 public dynamic function command118(): Bool;

 /**
  * Jump to Label
  */
 public dynamic function command119(): Bool;

 public dynamic function jumpTo(index: Int): Void;

 /**
  * Control Switches
  */
 public dynamic function command121(): Bool;

 /**
  * Control Variables
  */
 public dynamic function command122(): Bool;

 public dynamic function gameDataOperand(type: Int, param1: Int,
  param2: Int): Int;
 public dynamic function operateVariable(variableId: Int, operationType: Int,
  value: Int): Void;

 /**
  * Control Self Switch
  */
 public dynamic function command123(): Bool;

 /**
  * Control Timer
  */
 public dynamic function command124(): Bool;

 /**
  * Change Gold
  */
 public dynamic function command125(): Bool;

 /**
  * Change Items
  */
 public dynamic function command126(): Bool;

 /**
  * Change Weapons
  */
 public dynamic function command127(): Bool;

 /**
  * Change Armors
  */
 public dynamic function command128(): Bool;

 /**
  * Change Party Member
  */
 public dynamic function command129(): Bool;

 /**
  * Change Battle BGM
  */
 public dynamic function command132(): Bool;

 /**
  * Change Victory ME
  */
 public dynamic function command133(): Bool;

 /**
  * Change Save Access
  */
 public dynamic function command134(): Bool;

 /**
  * Change Menu Access
  */
 public dynamic function command135(): Bool;

 /**
  * Change Encounter Disable
  */
 public dynamic function command136(): Bool;

 /**
  * Change Formation Access
  */
 public dynamic function command137(): Bool;

 /**
  * Change Window Color
  */
 public dynamic function command138(): Bool;

 /**
  * Change Defeat ME
  */
 public dynamic function command139(): Bool;

 /**
  * Change Vehicle BGM
  */
 public dynamic function command140(): Bool;

 /**
  * Transfer Player
  */
 public dynamic function command201(): Bool;

 /**
  * Set Vehicle Location
  */
 public dynamic function command202(): Bool;

 /**
  * Set Event Location
  */
 public dynamic function command203(): Bool;

 /**
  * Scroll Map
  */
 public dynamic function command204(): Bool;

 /**
  * Set Movement Route
  */
 public dynamic function command205(): Bool;

 /**
  * Getting On and Off Vehicles
  */
 public dynamic function command206(): Bool;

 /**
  * Change Transparency
  */
 public dynamic function command211(): Bool;

 /**
  * Show Animation
  */
 public dynamic function command212(): Bool;

 /**
  * Show Balloon Icon
  */
 public dynamic function command213(): Bool;

 /**
  * Erase Event
  */
 public dynamic function command214(): Bool;

 /**
  * Change Player Followers
  */
 public dynamic function command216(): Bool;

 /**
  * Gather Followers
  */
 public dynamic function command217(): Bool;

 /**
  * Fadeout Screen
  */
 public dynamic function command221(): Bool;

 /**
  * Fadein Screen
  */
 public dynamic function command222(): Bool;

 /**
  * Tint Screen
  */
 public dynamic function command223(): Bool;

 /**
  * Flash Screen
  */
 public dynamic function command224(): Bool;

 /**
  * Shake Screen
  */
 public dynamic function command225(): Bool;

 /**
  * Wait
  */
 public dynamic function command230(): Bool;

 /**
  * Show Picture
  */
 public dynamic function command231(): Bool;

 /**
  * Move Picture
  */
 public dynamic function command232(): Bool;

 /**
  * Rotate Picture
  */
 public dynamic function command233(): Bool;

 /**
  * Tint Picture
  */
 public dynamic function command234(): Bool;

 /**
  * Erase Picture
  */
 public dynamic function command235(): Bool;

 /**
  * Set Weather Effect
  */
 public dynamic function command236(): Bool;

 /**
  * Play BGM
  */
 public dynamic function command241(): Bool;

 /**
  * Fadeout BGM
  */
 public dynamic function command242(): Bool;

 /**
  * Save BGM
  */
 public dynamic function command243(): Bool;

 /**
  * Resume BGM
  */
 public dynamic function command244(): Bool;

 /**
  * Play BGS
  */
 public dynamic function command245(): Bool;

 /**
  * Fadeout BGS
  */
 public dynamic function command246(): Bool;

 /**
  * Play ME
  */
 public dynamic function command249(): Bool;

 /**
  * Play SE
  */
 public dynamic function command250(): Bool;

 /**
  * Stop SE
  */
 public dynamic function command251(): Bool;

 /**
  * Play Movie
  */
 public dynamic function command261(): Bool;

 public dynamic function videoFileExt(): String;

 /**
  * Change Map Name Display
  */
 public dynamic function command281(): Bool;

 /**
  * Change Tileset
  */
 public dynamic function command282(): Bool;

 /**
  * Change Battle Back
  */
 public dynamic function command283(): Bool;

 /**
  * Change Parallax
  */
 public dynamic function command284(): Bool;

 /**
  * Get Location Info
  */
 public dynamic function command285(): Bool;

 /**
  * Battle Processing
  */
 public dynamic function command301(): Bool;

 /**
  * If Win
  */
 public dynamic function command601(): Bool;

 /**
  * If Escape
  */
 public dynamic function command602(): Bool;

 /**
  * If Lose
  */
 public dynamic function command603(): Bool;

 /**
  * Shop Processing
  */
 public dynamic function command302(): Bool;

 /**
  * Name Input Processing
  */
 public dynamic function command303(): Bool;

 /**
  * Change HP
  */
 public dynamic function command311(): Bool;

 /**
  * Change MP
  */
 public dynamic function command312(): Bool;

 /**
  * Change TP
  */
 public dynamic function command326(): Bool;

 /**
  * Change State
  */
 public dynamic function command313(): Bool;

 /**
  * Recover All
  */
 public dynamic function command314(): Bool;

 /**
  * Change EXP
  */
 public dynamic function command315(): Bool;

 /**
  * Change Level
  */
 public dynamic function command316(): Bool;

 /**
  * Change Parameter
  */
 public dynamic function command317(): Bool;

 /**
  * Change Skill
  */
 public dynamic function command318(): Bool;

 /**
  * Change Equipment
  */
 public dynamic function command319(): Bool;

 /**
  * Change Name
  */
 public dynamic function command320(): Bool;

 /**
  * Change Class
  */
 public dynamic function command321(): Bool;

 /**
  * Change Actor Images
  */
 public dynamic function command322(): Bool;

 /**
  * Change Vehicle Image
  */
 public dynamic function command323(): Bool;

 /**
  * Change Nickname
  */
 public dynamic function command324(): Bool;

 /**
  * Change Profile
  */
 public dynamic function command325(): Bool;

 /**
  * Change Enemy HP
  */
 public dynamic function command331(): Bool;

 /**
  * Change Enemy MP
  */
 public dynamic function command332(): Bool;

 /**
  * Change Enemy TP
  */
 public dynamic function command342(): Bool;

 /**
  * Change Enemy State
  */
 public dynamic function command333(): Bool;

 /**
  * Enemy Recover All
  */
 public dynamic function command334(): Bool;

 /**
  * Enemy Appear
  */
 public dynamic function command335(): Bool;

 /**
  * Enemy Transform
  */
 public dynamic function command336(): Bool;

 /**
  * Show Battle Animation
  */
 public dynamic function command337(): Bool;

 /**
  * Force Action
  */
 public dynamic function command339(): Bool;

 /**
  * Abort Battle
  */
 public dynamic function command340(): Bool;

 /**
  * Open Menu Screen
  */
 public dynamic function command351(): Bool;

 /**
  * Open Save Screen
  */
 public dynamic function command352(): Bool;

 /**
  * Game Over
  */
 public dynamic function command353(): Bool;

 /**
  * Return to Title Screen
  */
 public dynamic function command354(): Bool;

 /**
  * Script
  */
 public dynamic function command355(): Bool;

 /**
  * Plugin Command
  */
 public dynamic function command356(): Bool;

 // TODO: Updated for MZ - need to change
 public dynamic function pluginCommand(command: String,
  args: Array<String>): Void;
}
