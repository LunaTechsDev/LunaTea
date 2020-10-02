package rm.objects;

import rm.types.RPG.AudioFile;
import rm.types.RPG.SystemVehicle;
import rm.types.LunaTea.Direction;

/**
 * The game object class for a vehicle.
 */
@:expose("Game_Vehicle")
@:native("Game_Vehicle")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Vehicle extends Game_Character {
 private var _type: String;

 private var _mapId: Float;

 private var _altitude: Float;

 private var _driving: Bool;

 private var _bgm: AudioFile;

 public function new(type: String);

 public function initMembers(): Void;

 /**
  * Returns true if the vehicle is a boat.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public function isBoat(): Bool;

 /**
  * Returns true if the vehicle is a ship.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public function isShip(): Bool;

 /**
  * Returns true if the vehicle is an airship.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public function isAirship(): Bool;

 /**
  * Resets the direction of the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public function resetDirection(): Void;

 public function initMoveSpeed(): Void;

 /**
  * Returns the current vehicle.
  *
  * @returns {RPG.System.Vehicle}
  * @memberof Game_Vehicle
  */
 public function vehicle(): SystemVehicle;

 public function loadSystemSettings(): Void;

 /**
  * Refreshes the game vehicle.
  *
  * @memberof Game_Vehicle
  */
 public function refresh(): Void;

 public function setLocation(mapId: Float, x: Float, y: Float): Void;

 public function pos(x: Float, y: Float): Bool;

 public function isMapPassable(x: Float, y: Float, d: Direction): Bool;

 /**
  * Gets on the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public function getOn(): Void;

 /**
  * Gets off the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public function getOff(): Void;

 /**
  * Sets the bgm associated with the vehicle.
  *
  * @param {RPG.AudioFile} bgm
  * @memberof Game_Vehicle
  */
 public function setBgm(bgm: AudioFile): Void;

 /**
  * Plays the bgm associated with the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public function playBgm(): Void;

 /**
  * Syncs the vehicle with the player.
  *
  * @memberof Game_Vehicle
  */
 public function syncWithPlayer(): Void;

 /**
  * Returns the screen y position of the vehicle.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public function screenY(): Float;

 /**
  * Returns the shadow x position of the vehicle's shadow.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public function shadowX(): Float;

 /**
  * Returns the shadow y position of the vehicle's shadow.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public function shadowY(): Float;

 /**
  * Returns the shadow opacity of the vehicle's shadow.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public function shadowOpacity(): Float;

 /**
  * Returns true if the vehicle can move.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public function canMove(): Bool;

 /**
  * Updates the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public function update(): Void;

 /**
  * Updates the airship.
  *
  * @memberof Game_Vehicle
  */
 public function updateAirship(): Void;

 /**
  * Updates airship altitude.
  *
  * @memberof Game_Vehicle
  */
 public function updateAirshipAltitude(): Void;

 /**
  * Returns the max altitude of the vehicle.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public function maxAltitude(): Float;

 /**
  * Returns true if the vehicle is at it's lowest altitude.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public function isLowest(): Bool;

 /**
  * Returns true if the vehicle is at it's highest altitude.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public function isHighest(): Bool;

 /**
  * Returns true if take off is ok.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public function isTakeoffOk(): Bool;

 /**
  * Returns true if the vehicle is capable of landing at the specified
  * x, y coordinate, with the specified direction (d).
  * @param {number} x
  * @param {number} y
  * @param {number} d
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public function isLandOk(x: Float, y: Float, d: Direction): Bool;
}
