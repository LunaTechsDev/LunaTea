package rm.core;

import pixi.core.display.DisplayObject;
import pixi.core.display.Container;

@:expose("Tilemap")
@:native("Tilemap")
extern class Tilemap extends Container {
 // Tile type checkers
 public static var TILE_ID_A1: Int;

 public static var TILE_ID_A2: Int;

 public static var TILE_ID_A3: Int;

 public static var TILE_ID_A4: Int;

 public static var TILE_ID_A5: Int;

 public static var TILE_ID_B: Int;

 public static var TILE_ID_C: Int;

 public static var TILE_ID_D: Int;

 public static var TILE_ID_E: Int;

 public static var TILE_ID_MAX: Int;

 public static var FLOOR_AUTOTILE_TABLE: Array<Array<Array<Int>>>;

 public static var WALL_AUTOTILE_TABLE: Array<Array<Array<Int>>>;

 public static var WATERFALL_AUTOTILE_TABLE: Array<Array<Array<Int>>>;

 public static dynamic function isVisibleTile(tileId: Int): Bool;

 public static dynamic function isAutotile(tileId: Int): Bool;

 public static dynamic function getAutotileKind(tileId: Int): Int;

 public static dynamic function getAutotileShape(tileId: Int): Int;
 // TODO: Turn Kind into an abstract Enum
 public static dynamic function makeAutotileId(kind: Int, shape: Int): Int;

 public static dynamic function isSameKindTile(tileID1: Int,
  tileID2: Int): Bool;

 public static dynamic function isTileA1(tileId: Int): Bool;

 public static dynamic function isTileA2(tileId: Int): Bool;

 public static dynamic function isTileA3(tileId: Int): Bool;

 public static dynamic function isTileA4(tileId: Int): Bool;

 public static dynamic function isTileA5(tileId: Int): Bool;

 public static dynamic function isWaterTile(tileId: Int): Bool;

 public static dynamic function isWaterfallTile(tileId: Int): Bool;

 public static dynamic function isGroundTile(tileId: Int): Bool;

 public static dynamic function isShadowingTile(tileId: Int): Bool;

 public static dynamic function isRoofTile(tileId: Int): Bool;

 public static dynamic function isWallTopTile(tileId: Int): Bool;

 public static dynamic function isWallSideTile(tileId: Int): Bool;

 public static dynamic function isWallTile(tileId: Int): Bool;

 public static dynamic function isFloorTypeAutotile(tileId: Int): Bool;

 public static dynamic function isWallTypeAutotile(tileId: Int): Bool;
 public static dynamic function isWaterfallTypeAutotile(tileId: Int): Bool;

 /**
  * The bitmaps used as a tileset.
  *
  * @property bitmaps
  * @type Array
  */
 public var bitmaps: Array<Bitmap>;

 /**
  * The origin point of the tilemap for scrolling.
  *
  * @property origin
  * @type Point
  */
 public var origin: Point;

 /**
  * The tileset flags.
  *
  * @property flags
  * @type Array
  */
 public var flags: Array<Int>;

 /**
  * The animation count for autotiles.
  *
  * @property animationCount
  * @type Number
  */
 public var animationCount: Int; // TODO: Enum AnimationCount

 /**
  * Whether the tilemap loops horizontal.
  *
  * @property horizontalWrap
  * @type Boolean
  */
 public var horizontalWrap: Bool;

 /**
  * Whether the tilemap loops vertical.
  *
  * @property verticalWrap
  * @type Boolean
  */
 public var verticalWrap: Bool;

 /**
  * The width of the screen in pixels.
  *
  * @property width
  * @type Number
  */
 //  public var width: Int;
 /**
  * The height of the screen in pixels.
  *
  * @property height
  * @type Number
  */
 //  public var height: Int;

 /**
  * The width of a tile in pixels.
  *
  * @property tileWidth
  * @type Number
  */
 public var tileWidth: Int;

 /**
  * The height of a tile in pixels.
  *
  * @property tileHeight
  * @type Number
  */
 public var tileHeight: Int;

 /**
  * [read-only] The array of children of the sprite.
  *
  * @property children
  * @type Array<PIXI.DisplayObject>
  */
 //  public var children: Array<DisplayObject>;
 /**
  * [read-only] The object that contains the sprite.
  *
  * @property parent
  * @type PIXI.DisplayObjectContainer
  */
 //  public var parent: Container;

 /**
  * The tilemap which displays 2D tile-based game map.
  *
  * @class Tilemap
  * @constructor
  */
 public dynamic function new();

 /**
  * Sets the tilemap data.
  *
  * @method setData
  * @param {Number} width The width of the map in number of tiles
  * @param {Number} height The height of the map in number of tiles
  * @param {Array} data The one dimensional array for the map data
  */
 public dynamic function setData(width: Int, height: Int,
  data: Array<Int>): Void;

 /**
  * Checks whether the tileset is ready to render.
  *
  * @method isReady
  * @type Boolean
  * @return {Boolean} True if the tilemap is ready
  */
 public dynamic function isReady(): Bool;

 /**
  * Updates the tilemap for each frame.
  *
  * @method update
  */
 public dynamic function update(): Void;

 /**
  * @method updateTransform
  * @private
  */
 public dynamic function updateTransform(): Void;

 /**
  * Forces to repaint the entire static
  *
  * @method refresh
  */
 public dynamic function refresh(): Void;

 /**
  * Adds a child to the container.
  *
  * @method addChild
  * @param {PIXI.DisplayObject} child The child to add
  * @return {PIXI.DisplayObject} The child that was added
  */
 public dynamic function addChild(child: DisplayObject): DisplayObject;

 /**
  * Adds a child to the container at a specified index.
  *
  * @method addChildAt
  * @param {PIXI.DisplayObject} child The child to add
  * @param {Number} index The index to place the child in
  * @return {PIXI.DisplayObject} The child that was added
  */
 public dynamic function addChildAt(child: DisplayObject,
  index: Int): DisplayObject;

 /**
  * Removes a child from the container.
  *
  * @method removeChild
  * @param {PIXI.DisplayObject} child The child to remove
  * @return {PIXI.DisplayObject} The child that was removed
  */
 public dynamic function removeChild(child: DisplayObject): DisplayObject;

 /**
  * Removes a child from the specified index position.
  *
  * @method removeChildAt
  * @param {Number} index The index to get the child from
  * @return {PIXI.DisplayObject} The child that was removed
  */
 public dynamic function removeChildAt(index: Int): DisplayObject;

 /**
  * Forces to refresh the tileset
  *
  * @method refresh
  */
 public dynamic function refreshTileset(): Void;

 private var _margin: Int;
 private var _width: Int;
 private var _height: Int;
 private var _tileWidth: Int;
 private var _tileHeight: Int;
 private var _mapWidth: Int;
 private var _mapHeight: Int;
 private var _mapData: Array<Int>;
 private var _layerWidth: Int;
 private var _layerHeight: Int;
 private var _lastTiles: Array<Array<Array<Array<Int>>>>;
 private var _lowerLayer: Sprite;
 private var _upperLayer: Sprite;

 /**
  * @method _createLayers
  * @private
  */
 private dynamic function _createLayers(): Void;

 /**
  * @method _updateLayerPositions
  * @param {Number} startX
  * @param {Number} startY
  * @private
  */
 private dynamic function _updateLayerPositions(startX: Int,
  startY: Int): Void;

 /**
  * @method _paintAllTiles
  * @param {Number} startX
  * @param {Number} startY
  * @private
  */
 private dynamic function _paintAllTiles(startX: Int, startY: Int): Void;

 /**
  * @method _paintTiles
  * @param {Number} startX
  * @param {Number} startY
  * @param {Number} x
  * @param {Number} y
  * @private
  */
 private dynamic function _paintTiles(startX: Int, startY: Int, x: Int,
  y: Int): Void;

 /**
  * @method _readLastTiles
  * @param {Number} i
  * @param {Number} x
  * @param {Number} y
  * @private
  */
 private dynamic function _readLastTiles(i: Int, x: Int, y: Int): Array<Int>;

 /**
  * @method _writeLastTiles
  * @param {Number} i
  * @param {Number} x
  * @param {Number} y
  * @param {Array} tiles
  * @private
  */
 private dynamic function _writeLastTiles(i: Int, x: Int, y: Int,
  tiles: Array<Int>): Void;

 /**
  * @method _drawTile
  * @param {Bitmap} bitmap
  * @param {Number} tileId
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private dynamic function _drawTile(bitmap: Bitmap, tileId: Int, dx: Int,
  dy: Int): Void;

 /**
  * @method _drawNormalTile
  * @param {Bitmap} bitmap
  * @param {Number} tileId
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private dynamic function _drawNormalTile(bitmap: Bitmap, tileId: Int,
  dx: Int, dy: Int): Void;

 /**
  * @method _drawAutotile
  * @param {Bitmap} bitmap
  * @param {Number} tileId
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private dynamic function _drawAutotile(bitmap: Bitmap, tileId: Int, dx: Int,
  dy: Int): Void;

 /**
  * @method _drawTableEdge
  * @param {Bitmap} bitmap
  * @param {Number} tileId
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private dynamic function _drawTableEdge(bitmap: Bitmap, tileId: Int, dx: Int,
  dy: Int): Void;

 /**
  * @method _drawShadow
  * @param {Bitmap} bitmap
  * @param {Number} shadowBits
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private dynamic function _drawShadow(bitmap: Bitmap, shadowBits: Int,
  dx: Int, dy: Int): Void;

 /**
  * @method _readMapData
  * @param {Number} x
  * @param {Number} y
  * @param {Number} z
  * @return {Number}
  * @private
  */
 private dynamic function _readMapData(x: Int, y: Int, z: Int): Int;

 /**
  * @method _isHigherTile
  * @param {Number} tileId
  * @return {Boolean}
  * @private
  */
 private dynamic function _isHigherTile(tileId: Int): Bool;

 /**
  * @method _isTableTile
  * @param {Number} tileId
  * @return {Boolean}
  * @private
  */
 private dynamic function _isTableTile(tileId: Int): Bool;

 /**
  * @method _isOverpassPosition
  * @param {Number} mx
  * @param {Number} my
  * @return {Boolean}
  * @private
  */
 private dynamic function _isOverpassPosition(mx: Int, my: Int): Bool;

 /**
  * @method _sortChildren
  * @private
  */
 private dynamic function _sortChildren(): Void;

 /**
  * @method _compareChildOrder
  * @param {Sprite} a
  * @param {Sprite} b
  * @private
  */
 private dynamic function _compareChildOrder(a: Sprite, b: Sprite): Int;
}
