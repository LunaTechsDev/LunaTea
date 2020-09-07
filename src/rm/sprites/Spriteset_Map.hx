package rm.sprites;

import rm.core.Weather;
import rm.core.ShaderTilemap;
import rm.core.Tilemap;
import rm.types.RPG.Tileset;
import haxe.extern.EitherType;
import rm.core.TilingSprite;
import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Spriteset_Map
 *
 * The set of sprites on the map screen.
 */
@:expose("Spriteset_Map")
@:native("Spriteset_Map")
extern class Spriteset_Map extends Spriteset_Base {
 @:native("_parallax")
 public var __parallax: TilingSprite;
 private var _parallax: TilingSprite;
 @:native("_tilemap")
 public var __tilemap: EitherType<Tilemap, ShaderTilemap>;
 private var _tilemap: EitherType<Tilemap, ShaderTilemap>;
 @:native("_tileset")
 public var __tileset: Tileset;
 private var _tileset: Tileset;
 @:native("_characterSprites")
 public var __characterSprites: Array<Sprite_Character>;
 private var _characterSprites: Array<Sprite_Character>;
 @:native("_shadowSprite")
 public var __shadowSprite: Sprite;
 private var _shadowSprite: Sprite;
 @:native("_destinationSprite")
 public var __destinationSprite: Sprite_Destination;
 private var _destinationSprite: Sprite_Destination;
 @:native("_weather")
 public var __weather: Weather;
 private var _weather: Weather;
 @:native("_parallaxName")
 public var __parallaxName: String;
 private var _parallaxName: String;

 /**
  * Hides the map spriteset character sprites.
  *
  * @memberof Spriteset_Map
  */
 public function hideCharacters(): Void;

 /**
  * Creates the map spriteset parallax.
  *
  * @memberof Spriteset_Map
  */
 public function createParallax(): Void;

 /**
  * Creates the map spriteset tile map.
  *
  * @memberof Spriteset_Map
  */
 public function createTilemap(): Void;

 /**
  * Loads the map spriteset tileset.
  *
  * @memberof Spriteset_Map
  */
 public function loadTileset(): Void;

 /**
  * Creates the map spriteset character sprite.
  *
  * @memberof Spriteset_Map
  */
 public function createCharacters(): Void;

 /**
  * Creates the map spriteset shadow sprite.
  *
  * @memberof Spriteset_Map
  */
 public function createShadow(): Void;

 /**
  * Creates the map spriteset destination sprite.
  *
  * @memberof Spriteset_Map
  */
 public function createDestination(): Void;

 /**
  * Creates the map spriteset weather.
  *
  * @memberof Spriteset_Map
  */
 public function createWeather(): Void;

 /**
  * Updates the map spriteset tileset.
  *
  * @memberof Spriteset_Map
  */
 public function updateTileset(): Void;

 /**
  * Simple fix for canvas parallax issue, destroy old parallax and readd to  the tree.
  */
 private function _canvasReAddParallax(): Void;

 public function updateParallax(): Void;

 /**
  * Updates the map spriteset tile map.
  *
  * @memberof Spriteset_Map
  */
 public function updateTilemap(): Void;

 /**
  * Updates the map spriteset shadow.
  *
  * @memberof Spriteset_Map
  */
 public function updateShadow(): Void;

 /**
  * Updates the map spriteset weather.
  *
  * @memberof Spriteset_Map
  */
 public function updateWeather(): Void;
}
