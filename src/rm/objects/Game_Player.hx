package rm.objects;

import rm.types.LunaTea.FadeType;
import rm.types.LunaTea.Direction;
import rm.types.RPG.MapEncounter;

/**
 * The game object class for the player. It contains,
 * encounter information, x, y, vehicle type, and whether
 * the player is dashing. The Game Player State is this
 * object.
 */
@:expose("Game_Player")
@:native("Game_Player")
extern class Game_Player extends Game_Character {
 @:native("_vehicleType")
 public var __vehicleType: String;
 private var _vehicleType: String;
 @:native("_vehicleGettingOn")
 public var __vehicleGettingOn: Bool;
 private var _vehicleGettingOn: Bool;
 @:native("_vehicleGettingOff")
 public var __vehicleGettingOff: Bool;
 private var _vehicleGettingOff: Bool;
 @:native("_dashing")
 public var __dashing: Bool;
 private var _dashing: Bool;
 @:native("_needsMapReload")
 public var __needsMapReload: Bool;
 private var _needsMapReload: Bool;
 @:native("_transferring")
 public var __transferring: Bool;
 private var _transferring: Bool;
 private var _newMapId: Int;
 @:native("_newX")
 public var __newX: Int;
 private var _newX: Int;
 @:native("_newY")
 public var __newY: Int;
 private var _newY: Int;
 @:native("_newDirection")
 public var __newDirection: Direction;
 private var _newDirection: Direction;
 @:native("_fadeType")
 public var __fadeType: FadeType;
 private var _fadeType: FadeType;
 @:native("_followers")
 public var __followers: Game_Followers;
 private var _followers: Game_Followers;
 @:native("_encounterCount")
 public var __encounterCount: Int;
 private var _encounterCount: Int;

 /**
  * Clears the transfer information for the player.
  *
  * @memberof Game_Player
  */
 public dynamic function clearTransferInfo(): Void;

 /**
  * Returns the player followers (party members).
  *
  * @returns {Game_Followers}
  * @memberof Game_Player
  */
 public dynamic function followers(): Game_Followers;

 /**
  * Refreshes the game player.
  *
  * @memberof Game_Player
  */
 public dynamic function refresh(): Void;

 /**
  * Returns true if the player is stopping.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function isStopping(): Bool;

 /**
  * Reserves a transfer of the player to the specified map, at the given
  * x and y coordinates, facing the given direction (d). Using a specific fade.
  * @param {Int} mapId
  * @param {Int} x
  * @param {Int} y
  * @param {Int} [d]
  * @param {Int} [fadeType]
  * @memberof Game_Player
  */
 public dynamic function reserveTransfer(mapId: Int, x: Int, y: Int, ?d: Int,
  ?fadeType: Int): Void;

 public dynamic function requestMapReload(): Void;

 public dynamic function isTransferring(): Bool;

 /**
  * Returns the new map id.
  *
  * @returns {Int}
  * @memberof Game_Player
  */
 public dynamic function newMapId(): Int;

 public dynamic function fadeType(): Int;

 /**
  * Performs a transfer of the player to a different area or map.
  *
  * @memberof Game_Player
  */
 public dynamic function performTransfer(): Void;

 public dynamic function isMapPassable(x: Int, y: Int, d: Int): Bool;

 /**
  * Returns the current vehicles the player is riding in.
  *
  * @returns {Game_Vehicle}
  * @memberof Game_Player
  */
 public dynamic function vehicle(): Game_Vehicle;

 /**
  * Returns true if the player is in a boat.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function isInBoat(): Bool;

 /**
  * Returns true if the player is in a ship.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function isInShip(): Bool;

 /**
  * Returns true if the player is in an airship.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function isInAirship(): Bool;

 /**
  * Returns true if the player is in a vehicle.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function isInVehicle(): Bool;

 /**
  * Returns true if the player is in their normal state.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function isNormal(): Bool;

 /**
  * Returns true if the player is dashing.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function isDashRing(): Bool;

 public dynamic function isDebugThrough(): Bool;

 public dynamic function isCollided(x: Int, y: Int): Bool;

 /**
  * Returns the player's center x coordinate.
  *
  * @returns {Int}
  * @memberof Game_Player
  */
 public dynamic function centerX(): Int;

 /**
  * Returns the player's center y coordinate.
  *
  * @returns {Int}
  * @memberof Game_Player
  */
 public dynamic function centerY(): Int;

 public dynamic function center(x: Int, y: Int): Void;

 public dynamic function locate(x: Int, y: Int): Void;

 public dynamic function increaseSteps(): Void;

 /**
  * Creates the encounter count for the player.
  *
  * @memberof Game_Player
  */
 public dynamic function makeEncounterCount(): Void;

 /**
  * Creates the encounter troop id and returns it.
  *
  * @returns {Int}
  * @memberof Game_Player
  */
 public dynamic function makeEncounterTroopId(): Int;

 public dynamic function meetsEncounterConditions(encounter: MapEncounter): Bool;

 /**
  * Executes an encounter.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function executeEncounter(): Bool;

 /**
  * Has the player start a map event at the given x and y coordinates.
  * Also passing the triggers and whether the event start is normal.
  * @param {Int} x
  * @param {Int} y
  * @param {Array<Int>} triggers
  * @param {Bool} normal
  * @memberof Game_Player
  */
 public dynamic function startMapEvent(x: Int, y: Int, triggers: Array<Int>,
  normal: Bool): Void;

 public dynamic function moveByInput(): Void;

 /**
  * Returns true if the player can move.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function canMove(): Bool;

 /**
  * Gets the input direction of the player as a Int.
  *
  * @returns {Int}
  * @memberof Game_Player
  */
 public dynamic function getInputDirection(): Int;

 public dynamic function executeMove(direction: Int): Void;

 public dynamic function update(?sceneActive: Bool): Void;

 /**
  * Updates the dashing of the player.
  *
  * @memberof Game_Player
  */
 public dynamic function updateDashing(): Void;

 /**
  * Returns true if the dash button is pressed.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function isDashButtonPressed(): Bool;

 public dynamic function updateScroll(lastScrolledX: Int,
  lastScrolledY: Int): Void;

 /**
  * Updates the vehicle.
  *
  * @memberof Game_Player
  */
 public dynamic function updateVehicle(): Void;

 /**
  * Updates the player getting on the vehicle.
  *
  * @memberof Game_Player
  */
 public dynamic function updateVehicleGetOn(): Void;

 /**
  * Updates the player getting off the vehicle.
  *
  * @memberof Game_Player
  */
 public dynamic function updateVehicleGetOff(): Void;

 public dynamic function updateNonmoving(wasMoving: Bool): Void;

 public dynamic function triggerAction(): Bool;

 public dynamic function triggerButtonAction(): Bool;

 /**
  * Returns true if the player triggered a touch action.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function triggerTouchAction(): Bool;

 public dynamic function triggerTouchActionD1(x1: Int, y1: Int): Bool;

 public dynamic function triggerTouchActionD2(x2: Int, y2: Int): Bool;

 public dynamic function triggerTouchActionD3(x2: Int, y2: Int): Bool;

 /**
  * Updates the player encounter count.
  *
  * @memberof Game_Player
  */
 public dynamic function updateEncounterCount(): Void;

 /**
  * Returns true if the player can encounter enemies.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function canEncounter(): Bool;

 /**
  * Returns the encounter progress value of the player.
  *
  * @returns {Int}
  * @memberof Game_Player
  */
 public dynamic function encounterProgressValue(): Int;

 public dynamic function checkEventTriggerHere(triggers: Array<Int>): Void;

 public dynamic function checkEventTriggerThere(triggers: Array<Int>): Void;

 /**
  * Returns true if the player can start local events.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function canStartLocalEvents(): Bool;

 /**
  * Returns true if the player is getting on/off a vehicle.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function getOnOffVehicle(): Bool;

 /**
  * Returns true if the player is getting on a vehicle.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function getOnVehicle(): Bool;

 /**
  * Returns true if the player is getting off a vehicle.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function getOffVehicle(): Bool;

 /**
  * Forces the player to move forward.
  *
  * @memberof Game_Player
  */
 public dynamic function forceMoveForward(): Void;

 /**
  * Returns true if the player is on a floor that does damage.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function isOnDamageFloor(): Bool;

 /**
  * Moves the player straight, given a direction.
  *
  * @param {Int} d
  * @memberof Game_Player
  */
 public dynamic function moveStraight(d: Int): Void;

 /**
  * Moves the player diagonally, given a horizontal
  * and vertical direction. The numpad represents the directions.
  * @param {Int} horz
  * @param {Int} vert
  * @memberof Game_Player
  */
 public dynamic function moveDiagonally(horz: Int, vert: Int): Void;

 /**
  * Has the player jump in the given direction at the specified
  * x and y coordinate. This x and y will be added to the player's current
  * position.
  * @param {Int} xPlus
  * @param {Int} yPlus
  * @memberof Game_Player
  */
 public dynamic function jump(xPlus: Int, yPlus: Int): Void;

 /**
  * Shows the player followers.
  *
  * @memberof Game_Player
  */
 public dynamic function showFollowers(): Void;

 /**
  * Hides the player followers.
  *
  * @memberof Game_Player
  */
 public dynamic function hideFollowers(): Void;

 /**
  * Gather followers around the player.
  *
  * @memberof Game_Player
  */
 public dynamic function gatherFollowers(): Void;

 /**
  * Returns true if the followers are currently gathering.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function areFollowersGathering(): Bool;

 /**
  * Returns true if the followers are gathered.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public dynamic function areFollowersGathered(): Bool;
}
