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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Player extends Game_Character {
 private var _vehicleType: String;

 private var _vehicleGettingOn: Bool;

 private var _vehicleGettingOff: Bool;

 private var _dashing: Bool;

 private var _needsMapReload: Bool;

 private var _transferring: Bool;
 private var _newMapId: Float;

 private var _newX: Float;

 private var _newY: Float;

 private var _newDirection: Direction;

 private var _fadeType: FadeType;

 private var _followers: Game_Followers;

 private var _encounterCount: Float;

 /**
  * Clears the transfer information for the player.
  *
  * @memberof Game_Player
  */
 public function clearTransferInfo(): Void;

 /**
  * Returns the player followers (party members).
  *
  * @returns {Game_Followers}
  * @memberof Game_Player
  */
 public function followers(): Game_Followers;

 /**
  * Refreshes the game player.
  *
  * @memberof Game_Player
  */
 public function refresh(): Void;

 /**
  * Returns true if the player is stopping.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function isStopping(): Bool;

 /**
  * Reserves a transfer of the player to the specified map, at the given
  * x and y coordinates, facing the given direction (d). Using a specific fade.
  * @param {Float} mapId
  * @param {Float} x
  * @param {Float} y
  * @param {Float} [d]
  * @param {Float} [fadeType]
  * @memberof Game_Player
  */
 public function reserveTransfer(mapId: Float, x: Float, y: Float, ?d: Float,
  ?fadeType: Float): Void;

 public function requestMapReload(): Void;

 public function isTransferring(): Bool;

 /**
  * Returns the new map id.
  *
  * @returns {Float}
  * @memberof Game_Player
  */
 public function newMapId(): Float;

 public function fadeType(): Float;

 /**
  * Performs a transfer of the player to a different area or map.
  *
  * @memberof Game_Player
  */
 public function performTransfer(): Void;

 public function isMapPassable(x: Float, y: Float, d: Float): Bool;

 /**
  * Returns the current vehicles the player is riding in.
  *
  * @returns {Game_Vehicle}
  * @memberof Game_Player
  */
 public function vehicle(): Game_Vehicle;

 /**
  * Returns true if the player is in a boat.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function isInBoat(): Bool;

 /**
  * Returns true if the player is in a ship.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function isInShip(): Bool;

 /**
  * Returns true if the player is in an airship.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function isInAirship(): Bool;

 /**
  * Returns true if the player is in a vehicle.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function isInVehicle(): Bool;

 /**
  * Returns true if the player is in their normal state.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function isNormal(): Bool;

 /**
  * Returns true if the player is dashing.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function isDashRing(): Bool;

 public function isDebugThrough(): Bool;

 public function isCollided(x: Float, y: Float): Bool;

 /**
  * Returns the player's center x coordinate.
  *
  * @returns {Float}
  * @memberof Game_Player
  */
 public function centerX(): Float;

 /**
  * Returns the player's center y coordinate.
  *
  * @returns {Float}
  * @memberof Game_Player
  */
 public function centerY(): Float;

 public function center(x: Float, y: Float): Void;

 public function locate(x: Float, y: Float): Void;

 public function increaseSteps(): Void;

 /**
  * Creates the encounter count for the player.
  *
  * @memberof Game_Player
  */
 public function makeEncounterCount(): Void;

 /**
  * Creates the encounter troop id and returns it.
  *
  * @returns {Float}
  * @memberof Game_Player
  */
 public function makeEncounterTroopId(): Float;

 public function meetsEncounterConditions(encounter: MapEncounter): Bool;

 /**
  * Executes an encounter.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function executeEncounter(): Bool;

 /**
  * Has the player start a map event at the given x and y coordinates.
  * Also passing the triggers and whether the event start is normal.
  * @param {Float} x
  * @param {Float} y
  * @param {Array<Float>} triggers
  * @param {Bool} normal
  * @memberof Game_Player
  */
 public function startMapEvent(x: Float, y: Float, triggers: Array<Float>,
  normal: Bool): Void;

 public function moveByInput(): Void;

 /**
  * Returns true if the player can move.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function canMove(): Bool;

 /**
  * Gets the input direction of the player as a Float.
  *
  * @returns {Float}
  * @memberof Game_Player
  */
 public function getInputDirection(): Float;

 public function executeMove(direction: Float): Void;

 public function update(?sceneActive: Bool): Void;

 /**
  * Updates the dashing of the player.
  *
  * @memberof Game_Player
  */
 public function updateDashing(): Void;

 /**
  * Returns true if the dash button is pressed.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function isDashButtonPressed(): Bool;

 public function updateScroll(lastScrolledX: Float,
  lastScrolledY: Float): Void;

 /**
  * Updates the vehicle.
  *
  * @memberof Game_Player
  */
 public function updateVehicle(): Void;

 /**
  * Updates the player getting on the vehicle.
  *
  * @memberof Game_Player
  */
 public function updateVehicleGetOn(): Void;

 /**
  * Updates the player getting off the vehicle.
  *
  * @memberof Game_Player
  */
 public function updateVehicleGetOff(): Void;

 public function updateNonmoving(wasMoving: Bool): Void;

 public function triggerAction(): Bool;

 public function triggerButtonAction(): Bool;

 /**
  * Returns true if the player triggered a touch action.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function triggerTouchAction(): Bool;

 public function triggerTouchActionD1(x1: Float, y1: Float): Bool;

 public function triggerTouchActionD2(x2: Float, y2: Float): Bool;

 public function triggerTouchActionD3(x2: Float, y2: Float): Bool;

 /**
  * Updates the player encounter count.
  *
  * @memberof Game_Player
  */
 public function updateEncounterCount(): Void;

 /**
  * Returns true if the player can encounter enemies.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function canEncounter(): Bool;

 /**
  * Returns the encounter progress value of the player.
  *
  * @returns {Float}
  * @memberof Game_Player
  */
 public function encounterProgressValue(): Float;

 public function checkEventTriggerHere(triggers: Array<Float>): Void;

 public function checkEventTriggerThere(triggers: Array<Float>): Void;

 /**
  * Returns true if the player can start local events.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function canStartLocalEvents(): Bool;

 /**
  * Returns true if the player is getting on/off a vehicle.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function getOnOffVehicle(): Bool;

 /**
  * Returns true if the player is getting on a vehicle.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function getOnVehicle(): Bool;

 /**
  * Returns true if the player is getting off a vehicle.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function getOffVehicle(): Bool;

 /**
  * Forces the player to move forward.
  *
  * @memberof Game_Player
  */
 public function forceMoveForward(): Void;

 /**
  * Returns true if the player is on a floor that does damage.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function isOnDamageFloor(): Bool;

 /**
  * Moves the player straight, given a direction.
  *
  * @param {Float} d
  * @memberof Game_Player
  */
 public function moveStraight(d: Float): Void;

 /**
  * Moves the player diagonally, given a horizontal
  * and vertical direction. The numpad represents the directions.
  * @param {Float} horz
  * @param {Float} vert
  * @memberof Game_Player
  */
 public function moveDiagonally(horz: Float, vert: Float): Void;

 /**
  * Has the player jump in the given direction at the specified
  * x and y coordinate. This x and y will be added to the player's current
  * position.
  * @param {Float} xPlus
  * @param {Float} yPlus
  * @memberof Game_Player
  */
 public function jump(xPlus: Float, yPlus: Float): Void;

 /**
  * Shows the player followers.
  *
  * @memberof Game_Player
  */
 public function showFollowers(): Void;

 /**
  * Hides the player followers.
  *
  * @memberof Game_Player
  */
 public function hideFollowers(): Void;

 /**
  * Gather followers around the player.
  *
  * @memberof Game_Player
  */
 public function gatherFollowers(): Void;

 /**
  * Returns true if the followers are currently gathering.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function areFollowersGathering(): Bool;

 /**
  * Returns true if the followers are gathered.
  *
  * @returns {Bool}
  * @memberof Game_Player
  */
 public function areFollowersGathered(): Bool;
}
