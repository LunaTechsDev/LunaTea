package rm.objects;

import rm.types.RPG;

/**
 * The game object for the map. It contains scrolling and passage functions
 * along with the game interpreter.
 */
@:expose("Game_Map")
@:native("Game_Map")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Map {
 private var _interpreter: Game_Interpreter;

 private var _mapId: Float;

 private var _tilesetId: Float;

 private var _events: Array<Game_Event>;

 private var _commonEvents: Array<Game_CommonEvent>;

 private var _vehicles: Array<Game_Vehicle>;

 private var _displayX: Float;

 private var _displayY: Float;

 private var _nameDisplay: Bool;

 private var _scrollDirection: Float;

 private var _scrollRest: Float;

 private var _scrollSpeed: Float;

 private var _parallaxName: String;

 private var _parallaxZero: Bool;

 private var _parallaxLoopX: Bool;

 private var _parallaxLoopY: Bool;

 private var _parallaxSx: Float;

 private var _parallaxSy: Float;

 private var _parallaxX: Float;

 private var _parallaxY: Float;

 private var _battleback1Name: String;

 private var _battleback2Name: String;

 private var _needsRefresh: Bool;

 public function new(): Void;
 public function initialize(): Void;

 public function setup(mapId: Float): Void;

 /**
  * Returns true if an event is running.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isEventRunning(): Bool;

 /**
  * Returns tile width.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function tileWidth(): Float;

 /**
  * Returns tile height.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function tileHeight(): Float;

 /**
  * Returns map id.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function mapId(): Float;

 /**
  * Returns the tileset id.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function tilesetId(): Float;

 /**
  * Returns the display x coordinate.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function displayX(): Float;

 /**
  * Returns the display y coordinate.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function displayY(): Float;

 public function parallaxName(): String;

 /**
  * Returns the name of battle back 1.
  *
  * @returns {String}
  * @memberof Game_Map
  */
 public function battleback1Name(): String;

 /**
  * Returns the name of battle back 2.
  *
  * @returns {String}
  * @memberof Game_Map
  */
 public function battleback2Name(): String;

 public function requestRefresh(mapId: Float): Void;

 /**
  * Returns true if the name display is enabled.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isNameDisplayEnabled(): Bool;

 /**
  * Disables name display.
  *
  * @memberof Game_Map
  */
 public function disableNameDisplay(): Void;

 /**
  * Enable name display.
  *
  * @memberof Game_Map
  */
 public function enableNameDisplay(): Void;

 /**
  * Creates the vehicles for the game map.
  *
  * @memberof Game_Map
  */
 public function createVehicles(): Void;

 /**
  * Refreshes the vehicles on the game map.
  *
  * @memberof Game_Map
  */
 public function refereshVehicles(): Void;

 public function vehicles(): Array<Game_Vehicle>;

 /**
  * Returns the game vehicle specified by type.
  *
  * @param {String} type
  * @returns {Game_Vehicle}
  * @memberof Game_Map
  */
 public function vehicle(type: String): Game_Vehicle;

 /**
  * Returns the game boat.
  *
  * @returns {Game_Vehicle}
  * @memberof Game_Map
  */
 public function boat(): Game_Vehicle;

 /**
  * Returns the game ship.
  *
  * @returns {Game_Vehicle}
  * @memberof Game_Map
  */
 public function ship(): Game_Vehicle;

 /**
  * Returns the game airship.
  *
  * @returns {Game_Vehicle}
  * @memberof Game_Map
  */
 public function airship(): Game_Vehicle;

 public function setupEvents(): Void;

 /**
  * Returns all events on the game map.
  *
  * @returns {Array<Game_Event>}
  * @memberof Game_Map
  */
 public function events(): Array<Game_Event>;

 /**
  * Returns an event, given the event id.
  *
  * @param {Float} eventId
  * @returns {Game_Event}
  * @memberof Game_Map
  */
 public function event(eventId: Float): Game_Event;

 /**
  * Erases the event given the event id.
  *
  * @param {Float} eventId
  * @memberof Game_Map
  */
 public function eraseEvent(eventId: Float): Void;

 /**
  * Returns all the parallel running common events.
  *
  * @returns {Array<RPG.CommonEvent>}
  * @memberof Game_Map
  */
 public function parallelCommonEvents(): Array<CommonEvent>;

 public function setupScroll(): Void;

 public function setupParallax(): Void;

 public function setupBattleback(): Void;

 public function setDisplayPos(x: Float, y: Float): Void;

 public function parallaxOx(): Float;

 public function parallaxOy(): Float;

 /**
  * Returns the tilset of the game map.
  *
  * @returns {RPG.Tileset}
  * @memberof Game_Map
  */
 public function tileset(): Tileset;

 /**
  * Returns the tileset flags of the game map.
  *
  * @returns {Array<Float>}
  * @memberof Game_Map
  */
 public function tilesetFlags(): Array<Float>;

 /**
  * Returns the display name of the game map.
  *
  * @returns {String}
  * @memberof Game_Map
  */
 public function displayName(): String;

 /**
  * Returns the map width.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function width(): Float;

 /**
  * Returns the map height.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function height(): Float;

 /**
  * Returns the map data.
  *
  * @returns {Array<Float>}
  * @memberof Game_Map
  */
 public function data(): Array<Float>;

 /**
  * Returns true if the map loops horizontally.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isLoopHorizontal(): Bool;

 /**
  * Returns true if the map loops vertically.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isLoopVertical(): Bool;

 /**
  * Returns true if dash is disabled on the map.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isDashDisabled(): Bool;

 /**
  * Returns the list of possible encounters on the current map.
  *
  * @returns {Array<RPG.Map.Encounter>}
  * @memberof Game_Map
  */
 public function encounterList(): Array<MapEncounter>;

 /**
  * Returns the Float of encounter steps on the map.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function encounterStep(): Float;

 /**
  * Returns true if the map is an over world map.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isOverworld(): Bool;

 /**
  * Returns the screen tile x coordinate.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function screenTileX(): Float;

 /**
  * Returns the screen tile y coordinate.
  *
  * @returns {Float}
  * @memberof Game_Map
  */
 public function screenTileY(): Float;

 public function adjustX(x: Float): Float;

 public function adjustY(y: Float): Float;

 public function roundX(x: Float): Float;

 public function roundY(y: Float): Float;

 public function xWithDirection(x: Float, d: Float): Float;

 public function yWithDirection(y: Float, d: Float): Float;

 public function roundXWithDirection(x: Float, d: Float): Float;

 public function roundYWithDirection(y: Float, d: Float): Float;

 public function deltaX(x1: Float, x2: Float): Float;

 public function deltaY(y1: Float, y2: Float): Float;

 public function distance(x1: Float, y1: Float, x2: Float, y2: Float): Float;

 /**
  * Converts the x coordinate from canvas to map coordinate x.
  *
  * @param {Float} x
  * @returns {Float}
  * @memberof Game_Map
  */
 public function canvasToMapX(x: Float): Float;

 /**
  * Converts the y coordinate from canvas to map y coordinate.
  *
  * @param {Float} y
  * @returns {Float}
  * @memberof Game_Map
  */
 public function canvasToMapY(y: Float): Float;

 /**
  * Auto plays the game map.
  *
  * @memberof Game_Map
  */
 public function autoplay(): Void;

 public function refreshIfNeeded(): Void;

 public function refresh(): Void;

 public function refreshTileEvents(): Void;

 /**
  * Returns the game events at the specified
  * x and y position.
  * @param {Float} x
  * @param {Float} y
  * @returns {Array<Game_Event>}
  * @memberof Game_Map
  */
 public function eventsXy(x: Float, y: Float): Array<Game_Event>;

 public function eventsXyNt(x: Float, y: Float): Array<Game_Event>;

 public function tileEventsXy(x: Float, y: Float): Array<Game_Event>;

 public function eventIdXy(x: Float, y: Float): Float;

 public function scrollDown(distance: Float): Void;

 public function scrollLeft(distance: Float): Void;

 public function scrollRight(distance: Float): Void;

 public function scrollUp(distance: Float): Void;

 /**
  * Returns true if the x and y coordinates are valid.
  *
  * @param {Float} x
  * @param {Float} y
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isValid(x: Float, y: Float): Bool;

 public function checkPassage(x: Float, y: Float, bit: Float): Bool;

 /**
  * Returns the tile id at the specified x, y, and z coordinates.
  *
  * @param {Float} x
  * @param {Float} y
  * @param {Float} z
  * @returns {Float}
  * @memberof Game_Map
  */
 public function tileId(x: Float, y: Float, z: Float): Float;

 public function layeredTiles(x: Float, y: Float): Array<Float>;

 public function allTiles(x: Float, y: Float): Array<Float>;

 public function autotileType(x: Float, y: Float, z: Float): Float;

 public function isPassable(x: Float, y: Float, d: Float): Bool;

 public function isBoatPassable(x: Float, y: Float): Bool;

 public function isShipPassable(x: Float, y: Float): Bool;

 public function isAirshipLandOk(x: Float, y: Float): Bool;

 public function checkLayeredTilesFlags(x: Float, y: Float, bit: Float): Bool;

 /**
  * Returns true if the specified element at the given x and y coordinates
  * is a ladder.
  * @param {Float} x
  * @param {Float} y
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isLadder(x: Float, y: Float): Bool;

 public function isBush(x: Float, y: Float): Bool;

 public function isCounter(x: Float, y: Float): Bool;

 public function isDamageFloor(x: Float, y: Float): Bool;

 public function terrainTag(x: Float, y: Float): Float;

 public function regionId(x: Float, y: Float): Float;

 public function startScroll(direction: Float, distance: Float,
  speed: Float): Void;

 public function isScrolling(): Bool;

 /**
  * Updates the game map, given that the scene is active.
  *
  * @param {Bool} sceneActive
  * @memberof Game_Map
  */
 public function update(sceneActive: Bool): Void;

 public function updateScroll(): Void;

 public function scrollDistance(): Float;

 public function doScroll(direction: Float, distance: Float): Void;

 /**
  * Updates all events on the map.
  *
  * @memberof Game_Map
  */
 public function updateEvents(): Void;

 /**
  * Updates all game vehicles on the map.
  *
  * @memberof Game_Map
  */
 public function updateVehicles(): Void;

 /**
  * Updates the map parallaxes.
  *
  * @memberof Game_Map
  */
 public function updateParallax(): Void;

 /**
  * Changes them ap tileset, given the tileset id.
  *
  * @param {Float} tilesetId
  * @memberof Game_Map
  */
 public function changeTileset(tilesetId: Float): Void;

 public function changeBattleback(battleback1Name: String,
  battleback2Name: String): Void;

 public function changeParallax(name: String, loopX: Bool, loopY: Bool,
  sx: Float, sy: Float): Void;

 /**
  * Updates the map's game interpreter.
  *
  * @memberof Game_Map
  */
 public function updateInterpreter(): Void;

 /**
  * Unlocks an event on the map given the event id.
  *
  * @param {Float} eventId
  * @memberof Game_Map
  */
 public function unlockEvent(eventId: Float): Void;

 public function setupStartingEvent(): Bool;

 public function setupTestEvent(): Bool;

 public function setupStartingMapEvent(): Bool;

 /**
  * Sets up an auto run common event.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function setupAutorunCommonEvent(): Bool;

 /**
  * Returns true if any event is starting on the map.
  *
  * @returns {Bool}
  * @memberof Game_Map
  */
 public function isAnyEventStarting(): Bool;
}
