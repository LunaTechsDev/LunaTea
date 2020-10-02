package rm.objects;

import rm.types.RPG.MoveCommand;
import rm.types.RPG.MoveRoute;

/**
 * Super class of Game_Player, Game_Follower, Game_Vehicle,
 * and Game_Event.
 */
@:expose("Game_Character")
@:native("Game_Character")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Character extends Game_CharacterBase {
 public static var ROUTE_END: Float;
 public static var ROUTE_MOVE_DOWN: Float;
 public static var ROUTE_MOVE_LEFT: Float;
 public static var ROUTE_MOVE_RIGHT: Float;
 public static var ROUTE_MOVE_UP: Float;
 public static var ROUTE_MOVE_LOWER_L: Float;
 public static var ROUTE_MOVE_LOWER_R: Float;
 public static var ROUTE_MOVE_UPPER_L: Float;
 public static var ROUTE_MOVE_UPPER_R: Float;
 public static var ROUTE_MOVE_RANDOM: Float;
 public static var ROUTE_MOVE_TOWARD: Float;
 public static var ROUTE_MOVE_AWAY: Float;
 public static var ROUTE_MOVE_FORWARD: Float;
 public static var ROUTE_MOVE_BACKWARD: Float;
 public static var ROUTE_JUMP: Float;
 public static var ROUTE_WAIT: Float;
 public static var ROUTE_TURN_DOWN: Float;
 public static var ROUTE_TURN_LEFT: Float;
 public static var ROUTE_TURN_RIGHT: Float;
 public static var ROUTE_TURN_UP: Float;
 public static var ROUTE_TURN_90D_R: Float;
 public static var ROUTE_TURN_90D_L: Float;
 public static var ROUTE_TURN_180D: Float;
 public static var ROUTE_TURN_90D_R_L: Float;
 public static var ROUTE_TURN_RANDOM: Float;
 public static var ROUTE_TURN_TOWARD: Float;
 public static var ROUTE_TURN_AWAY: Float;
 public static var ROUTE_SWITCH_ON: Float;
 public static var ROUTE_SWITCH_OFF: Float;
 public static var ROUTE_CHANGE_SPEED: Float;
 public static var ROUTE_CHANGE_FREQ: Float;
 public static var ROUTE_WALK_ANIME_ON: Float;
 public static var ROUTE_WALK_ANIME_OFF: Float;
 public static var ROUTE_STEP_ANIME_ON: Float;
 public static var ROUTE_STEP_ANIME_OFF: Float;
 public static var ROUTE_DIR_FIX_ON: Float;
 public static var ROUTE_DIR_FIX_OFF: Float;
 public static var ROUTE_THROUGH_ON: Float;
 public static var ROUTE_THROUGH_OFF: Float;
 public static var ROUTE_TRANSPARENT_ON: Float;
 public static var ROUTE_TRANSPARENT_OFF: Float;
 public static var ROUTE_CHANGE_IMAGE: Float;
 public static var ROUTE_CHANGE_OPACITY: Float;
 public static var ROUTE_CHANGE_BLEND_MODE: Float;
 public static var ROUTE_PLAY_SE: Float;
 public static var ROUTE_SCRIPT: Float;

 private var _moveRouteForcing: Bool;

 private var _moveRoute: MoveRoute;

 private var _moveRouteIndex: Float;

 private var _originalMoveRoute: MoveRoute;

 private var _originalMoveRouteIndex: Float;

 private var _waitCount: Float;

 public function initMembers(): Void;

 /**
  * Memorizes the movement route.
  *
  * @memberof Game_Character
  */
 public function memorizeMoveRoute(): Void;

 /**
  * Restores the original movement route.
  *
  * @memberof Game_Character
  */
 public function restoreMoveRoute(): Void;

 /**
  * Returns true if the move route is being forced.
  *
  * @returns {Bool}
  * @memberof Game_Character
  */
 public function isMoveRouteForcing(): Bool;

 /**
  * Sets the move route of the game character.
  *
  * @param {RPG.MoveRoute} moveRoute
  * @memberof Game_Character
  */
 public function setMoveRoute(moveRoute: MoveRoute): Void;

 /**
  * Forces the move route of the game character.
  *
  * @param {RPG.MoveRoute} moveRoute
  * @memberof Game_Character
  */
 public function forceMoveRoute(moveRoute: MoveRoute): Void;

 public function updateStop(): Void;

 /**
  * Updates the game character's move routine.
  *
  * @memberof Game_Character
  */
 public function updateRoutineMove(): Void;

 /**
  * Processes the given move commands.
  *
  * @param {RPG.MoveCommand} command
  * @memberof Game_Character
  */
 public function processMoveCommand(command: MoveCommand): Void;

 public function deltaXFrom(x: Float): Float;
 public function deltaYFrom(y: Float): Float;

 /**
  * Move's the game character at random.
  *
  * @memberof Game_Character
  */
 public function moveRandom(): Void;

 /**
  * Moves the game character toward the other game character.
  *
  * @param {Game_Character} character
  * @memberof Game_Character
  */
 public function moveTowardCharacter(character: Game_Character): Void;

 /**
  * Moves the game character away from the other game character.
  *
  * @param {Game_Character} character
  * @memberof Game_Character
  */
 public function moveAwayFromCharacter(character: Game_Character): Void;

 /**
  * Turns the game character toward the other game character.
  *
  * @param {Game_Character} character
  * @memberof Game_Character
  */
 public function turnTowardCharacter(character: Game_Character): Void;

 /**
  * Turns the game character away from the other game character.
  *
  * @param {Game_Character} character
  * @memberof Game_Character
  */
 public function turnAwayFromCharacter(character: Game_Character): Void;

 /**
  * Turns the game character toward the player.
  *
  * @memberof Game_Character
  */
 public function turnTowardPlayer(): Void;

 /**
  * Turns the game character away from the player.
  *
  * @memberof Game_Character
  */
 public function turnAwayFromPlayer(): Void;

 /**
  * Moves the game character toward the player.
  *
  * @memberof Game_Character
  */
 public function moveTowardPlayer(): Void;

 /**
  * Moves the game character away from the player.
  *
  * @memberof Game_Character
  */
 public function moveAwayFromPlayer(): Void;

 /**
  * Moves the game character forward.
  *
  * @memberof Game_Character
  */
 public function moveForward(): Void;

 /**
  * Moves the game character backward.
  *
  * @memberof Game_Character
  */
 public function moveBackward(): Void;

 /**
  * Handles the end of the move route.
  *
  * @memberof Game_Character
  */
 public function processRouteEnd(): Void;

 public function advanceMoveRouteIndex(): Void;

 /**
  * Turns the game character right by 90 degrees.
  *
  * @memberof Game_Character
  */
 public function turnRight90(): Void;

 /**
  * Turns the game character left by 90 degrees.
  *
  * @memberof Game_Character
  */
 public function turnLeft90(): Void;

 public function turn180(): Void;

 /**
  * Turns the game character or left by 90 degrees.
  *
  * @memberof Game_Character
  */
 public function turnRightOrLeft90(): Void;

 /**
  * Turns the game character at random.
  *
  * @memberof Game_Character
  */
 public function turnRandom(): Void;

 public function swap(character: Game_Character): Void;
 public function findDirectionTo(goalX: Float, goalY: Float): Float;

 /**
  * Returns the search limit for path finding.
  *
  * @returns {Float}
  * @memberof Game_Character
  */
 public function searchLimit(): Float;
}
