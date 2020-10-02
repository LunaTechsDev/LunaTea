package rm.core;

import pixi.core.display.DisplayObject;
import pixi.core.display.Container;

@:expose("Tilemap")
@:native("Tilemap")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Tilemap extends Container {
 // Tile type checkers
 public static var TILE_ID_A1: Float;

 public static var TILE_ID_A2: Float;

 public static var TILE_ID_A3: Float;

 public static var TILE_ID_A4: Float;

 public static var TILE_ID_A5: Float;

 public static var TILE_ID_B: Float;

 public static var TILE_ID_C: Float;

 public static var TILE_ID_D: Float;

 public static var TILE_ID_E: Float;

 public static var TILE_ID_MAX: Float;

 public static var FLOOR_AUTOTILE_TABLE: Array<Array<Array<Float>>>;

 public static var WALL_AUTOTILE_TABLE: Array<Array<Array<Float>>>;

 public static var WATERFALL_AUTOTILE_TABLE: Array<Array<Array<Float>>>;

 public static function isVisibleTile(tileId: Float): Bool;

 public static function isAutotile(tileId: Float): Bool;

 public static function getAutotileKind(tileId: Float): Float;

 public static function getAutotileShape(tileId: Float): Float;
 // TODO: Turn Kind into an abstract Enum
 public static function makeAutotileId(kind: Float, shape: Float): Float;

 public static function isSameKindTile(tileID1: Float, tileID2: Float): Bool;

 public static function isTileA1(tileId: Float): Bool;

 public static function isTileA2(tileId: Float): Bool;

 public static function isTileA3(tileId: Float): Bool;

 public static function isTileA4(tileId: Float): Bool;

 public static function isTileA5(tileId: Float): Bool;

 public static function isWaterTile(tileId: Float): Bool;

 public static function isWaterfallTile(tileId: Float): Bool;

 public static function isGroundTile(tileId: Float): Bool;

 public static function isShadowingTile(tileId: Float): Bool;

 public static function isRoofTile(tileId: Float): Bool;

 public static function isWallTopTile(tileId: Float): Bool;

 public static function isWallSideTile(tileId: Float): Bool;

 public static function isWallTile(tileId: Float): Bool;

 public static function isFloorTypeAutotile(tileId: Float): Bool;

 public static function isWallTypeAutotile(tileId: Float): Bool;
 public static function isWaterfallTypeAutotile(tileId: Float): Bool;

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
 public var flags: Array<Float>;

 /**
  * The animation count for autotiles.
  *
  * @property animationCount
  * @type Number
  */
 public var animationCount: Float; // TODO: Enum AnimationCount

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
 //  public var width: Float;
 /**
  * The height of the screen in pixels.
  *
  * @property height
  * @type Number
  */
 //  public var height: Float;

 /**
  * The width of a tile in pixels.
  *
  * @property tileWidth
  * @type Number
  */
 public var tileWidth: Float;

 /**
  * The height of a tile in pixels.
  *
  * @property tileHeight
  * @type Number
  */
 public var tileHeight: Float;

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
 public function new();

 /**
  * Sets the tilemap data.
  *
  * @method setData
  * @param {Number} width The width of the map in number of tiles
  * @param {Number} height The height of the map in number of tiles
  * @param {Array} data The one dimensional array for the map data
  */
 public function setData(width: Float, height: Float,
  data: Array<Float>): Void;

 /**
  * Checks whether the tileset is ready to render.
  *
  * @method isReady
  * @type Boolean
  * @return {Boolean} True if the tilemap is ready
  */
 public function isReady(): Bool;

 /**
  * Updates the tilemap for each frame.
  *
  * @method update
  */
 public function update(): Void;

 /**
  * @method updateTransform
  * @private
  */
 public function updateTransform(): Void;

 /**
  * Forces to repaint the entire static
  *
  * @method refresh
  */
 public function refresh(): Void;

 /**
  * Adds a child to the container.
  *
  * @method addChild
  * @param {PIXI.DisplayObject} child The child to add
  * @return {PIXI.DisplayObject} The child that was added
  */
 public function addChild(child: DisplayObject): DisplayObject;

 /**
  * Adds a child to the container at a specified index.
  *
  * @method addChildAt
  * @param {PIXI.DisplayObject} child The child to add
  * @param {Number} index The index to place the child in
  * @return {PIXI.DisplayObject} The child that was added
  */
 public function addChildAt(child: DisplayObject, index: Int): DisplayObject;

 /**
  * Removes a child from the container.
  *
  * @method removeChild
  * @param {PIXI.DisplayObject} child The child to remove
  * @return {PIXI.DisplayObject} The child that was removed
  */
 public function removeChild(child: DisplayObject): DisplayObject;

 /**
  * Removes a child from the specified index position.
  *
  * @method removeChildAt
  * @param {Number} index The index to get the child from
  * @return {PIXI.DisplayObject} The child that was removed
  */
 public function removeChildAt(index: Int): DisplayObject;

 /**
  * Forces to refresh the tileset
  *
  * @method refresh
  */
 public function refreshTileset(): Void;

 private var _margin: Float;
 private var _width: Float;
 private var _height: Float;
 private var _tileWidth: Float;
 private var _tileHeight: Float;
 private var _mapWidth: Float;
 private var _mapHeight: Float;
 private var _mapData: Array<Float>;
 private var _layerWidth: Float;
 private var _layerHeight: Float;
 private var _lastTiles: Array<Array<Array<Array<Float>>>>;
 private var _lowerLayer: Sprite;
 private var _upperLayer: Sprite;

 /**
  * @method _createLayers
  * @private
  */
 private function _createLayers(): Void;

 /**
  * @method _updateLayerPositions
  * @param {Number} startX
  * @param {Number} startY
  * @private
  */
 private function _updateLayerPositions(startX: Float, startY: Float): Void;

 /**
  * @method _paintAllTiles
  * @param {Number} startX
  * @param {Number} startY
  * @private
  */
 private function _paintAllTiles(startX: Float, startY: Float): Void;

 /**
  * @method _paintTiles
  * @param {Number} startX
  * @param {Number} startY
  * @param {Number} x
  * @param {Number} y
  * @private
  */
 private function _paintTiles(startX: Float, startY: Float, x: Float,
  y: Float): Void;

 /**
  * @method _readLastTiles
  * @param {Number} i
  * @param {Number} x
  * @param {Number} y
  * @private
  */
 private function _readLastTiles(i: Float, x: Float, y: Float): Array<Float>;

 /**
  * @method _writeLastTiles
  * @param {Number} i
  * @param {Number} x
  * @param {Number} y
  * @param {Array} tiles
  * @private
  */
 private function _writeLastTiles(i: Float, x: Float, y: Float,
  tiles: Array<Float>): Void;

 /**
  * @method _drawTile
  * @param {Bitmap} bitmap
  * @param {Number} tileId
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private function _drawTile(bitmap: Bitmap, tileId: Float, dx: Float,
  dy: Float): Void;

 /**
  * @method _drawNormalTile
  * @param {Bitmap} bitmap
  * @param {Number} tileId
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private function _drawNormalTile(bitmap: Bitmap, tileId: Float, dx: Float,
  dy: Float): Void;

 /**
  * @method _drawAutotile
  * @param {Bitmap} bitmap
  * @param {Number} tileId
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private function _drawAutotile(bitmap: Bitmap, tileId: Float, dx: Float,
  dy: Float): Void;

 /**
  * @method _drawTableEdge
  * @param {Bitmap} bitmap
  * @param {Number} tileId
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private function _drawTableEdge(bitmap: Bitmap, tileId: Float, dx: Float,
  dy: Float): Void;

 /**
  * @method _drawShadow
  * @param {Bitmap} bitmap
  * @param {Number} shadowBits
  * @param {Number} dx
  * @param {Number} dy
  * @private
  */
 private function _drawShadow(bitmap: Bitmap, shadowBits: Float, dx: Float,
  dy: Float): Void;

 /**
  * @method _readMapData
  * @param {Number} x
  * @param {Number} y
  * @param {Number} z
  * @return {Number}
  * @private
  */
 private function _readMapData(x: Float, y: Float, z: Float): Float;

 /**
  * @method _isHigherTile
  * @param {Number} tileId
  * @return {Boolean}
  * @private
  */
 private function _isHigherTile(tileId: Float): Bool;

 /**
  * @method _isTableTile
  * @param {Number} tileId
  * @return {Boolean}
  * @private
  */
 private function _isTableTile(tileId: Float): Bool;

 /**
  * @method _isOverpassPosition
  * @param {Number} mx
  * @param {Number} my
  * @return {Boolean}
  * @private
  */
 private function _isOverpassPosition(mx: Float, my: Float): Bool;

 /**
  * @method _sortChildren
  * @private
  */
 private function _sortChildren(): Void;

 /**
  * @method _compareChildOrder
  * @param {Sprite} a
  * @param {Sprite} b
  * @private
  */
 private function _compareChildOrder(a: Sprite, b: Sprite): Float;
}
