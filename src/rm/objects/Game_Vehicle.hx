package rm.objects;

import rm.types.RPG.AudioFile;
import rm.types.RPG.SystemVehicle;
import rm.types.LunaTea.Direction;

/**
 * The game object class for a vehicle.
 */
@:expose("Game_Vehicle")
@:native("Game_Vehicle")
extern class Game_Vehicle extends Game_Character {
 @:native("_type")
 public var __type: String;
 private var _type: String;
 @:native("_mapId")
 public var __mapId: Int;
 private var _mapId: Int;
 @:native("_altitude")
 public var __altitude: Int;
 private var _altitude: Int;
 @:native("_driving")
 public var __driving: Bool;
 private var _driving: Bool;
 @:native("_bgm")
 public var __bgm: AudioFile;
 private var _bgm: AudioFile;

 public dynamic function new(type: String);

 public dynamic function initMembers(): Void;

 /**
  * Returns true if the vehicle is a boat.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public dynamic function isBoat(): Bool;

 /**
  * Returns true if the vehicle is a ship.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public dynamic function isShip(): Bool;

 /**
  * Returns true if the vehicle is an airship.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public dynamic function isAirship(): Bool;

 /**
  * Resets the direction of the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public dynamic function resetDirection(): Void;

 public dynamic function initMoveSpeed(): Void;

 /**
  * Returns the current vehicle.
  *
  * @returns {RPG.System.Vehicle}
  * @memberof Game_Vehicle
  */
 public dynamic function vehicle(): SystemVehicle;

 public dynamic function loadSystemSettings(): Void;

 /**
  * Refreshes the game vehicle.
  *
  * @memberof Game_Vehicle
  */
 public dynamic function refresh(): Void;

 public dynamic function setLocation(mapId: Int, x: Int, y: Int): Void;

 public dynamic function pos(x: Int, y: Int): Bool;

 public dynamic function isMapPassable(x: Int, y: Int, d: Direction): Bool;

 /**
  * Gets on the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public dynamic function getOn(): Void;

 /**
  * Gets off the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public dynamic function getOff(): Void;

 /**
  * Sets the bgm associated with the vehicle.
  *
  * @param {RPG.AudioFile} bgm
  * @memberof Game_Vehicle
  */
 public dynamic function setBgm(bgm: AudioFile): Void;

 /**
  * Plays the bgm associated with the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public dynamic function playBgm(): Void;

 /**
  * Syncs the vehicle with the player.
  *
  * @memberof Game_Vehicle
  */
 public dynamic function syncWithPlayer(): Void;

 /**
  * Returns the screen y position of the vehicle.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public dynamic function screenY(): Int;

 /**
  * Returns the shadow x position of the vehicle's shadow.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public dynamic function shadowX(): Int;

 /**
  * Returns the shadow y position of the vehicle's shadow.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public dynamic function shadowY(): Int;

 /**
  * Returns the shadow opacity of the vehicle's shadow.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public dynamic function shadowOpacity(): Int;

 /**
  * Returns true if the vehicle can move.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public dynamic function canMove(): Bool;

 /**
  * Updates the vehicle.
  *
  * @memberof Game_Vehicle
  */
 public dynamic function update(): Void;

 /**
  * Updates the airship.
  *
  * @memberof Game_Vehicle
  */
 public dynamic function updateAirship(): Void;

 /**
  * Updates airship altitude.
  *
  * @memberof Game_Vehicle
  */
 public dynamic function updateAirshipAltitude(): Void;

 /**
  * Returns the max altitude of the vehicle.
  *
  * @returns {number}
  * @memberof Game_Vehicle
  */
 public dynamic function maxAltitude(): Int;

 /**
  * Returns true if the vehicle is at it's lowest altitude.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public dynamic function isLowest(): Bool;

 /**
  * Returns true if the vehicle is at it's highest altitude.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public dynamic function isHighest(): Bool;

 /**
  * Returns true if take off is ok.
  *
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public dynamic function isTakeoffOk(): Bool;

 /**
  * Returns true if the vehicle is capable of landing at the specified
  * x, y coordinate, with the specified direction (d).
  * @param {number} x
  * @param {number} y
  * @param {number} d
  * @returns {Bool}
  * @memberof Game_Vehicle
  */
 public dynamic function isLandOk(x: Int, y: Int, d: Direction): Bool;
}
