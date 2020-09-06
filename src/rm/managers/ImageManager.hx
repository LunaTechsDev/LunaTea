package rm.managers;

import haxe.DynamicAccess;
import rm.core.CacheMap;
import rm.core.Bitmap;

/**
 * Static class that manages images. Loading the images
 * and create bitmap objects.
 */
@:expose("ImageManager")
@:native("ImageManager")
extern class ImageManager {
 #if !compileMV
 /**
  *  returns 32
  */
 public static var iconWidth: Int;

 /**
  * returns 32
  */
 public static var iconHeight: Int;

 /**
  * 144
  */
 public static var faceWidth: Int;

 /**
  * returns 144
  */
 public static var faceHeight: Int;

 private static var _cache: DynamicAccess<Dynamic>;

 private static var _system: DynamicAccess<Dynamic>;

 private static var _emptyBitmap: Bitmap;

 @:native("_cache")
 public static var cache: DynamicAccess<Dynamic>;

 @:native("_system")
 public static var system: DynamicAccess<Dynamic>;

 @:native("_emptyBitmap")
 public static var emptyBitmap: Bitmap;

 /**
  * Loads the bitmap from url and returns it.
  * @param url
  * @return Bitmap
  */
 public static dynamic function loadBitmapFromUrl(url: String): Bitmap;

 /**
  * Throws a load error and retries loading the bitmap.
  * @param bitmap
  */
 public static dynamic function throwLoadError(bitmap: Bitmap): Void;
 #else
 public static var cache: CacheMap;
 #end

 public static dynamic function loadFace(filename: String, ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/parallaxes/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadParallax(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/pictures/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadPicture(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/animations/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadAnimation(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/battlebacks1/' folder
  *  and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadBattleback1(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/battlebacks2/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadBattleback2(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/enemies/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadEnemy(filename: String, ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/characters/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadCharacter(filename: String,
  ?hue: Int): Bitmap;

 public static dynamic function loadSvActor(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/sv_enemies/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadSvEnemy(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from 'img/system/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadSystem(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/tilesets/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadTileset(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/titles1/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadTitle1(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from the 'img/titles2/' folder
  * and returns it.
  * @param {string} filename
  * @param {number} [hue]
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadTitle2(filename: String,
  ?hue: Int): Bitmap;

 /**
  * Loads a Bitmap object from any folder and returns it.
  *
  * @param {string} folder
  * @param {string} filename
  * @param {number} hue
  * @param {boolean} smooth
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadBitmap(folder: String, filename: String,
  hue: Int, smooth: Bool): Bitmap;

 /**
  * Loads an empty Bitmap object and returns it.
  *
  * @param {string} path
  * @param {number} hue
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadEmptyBitmap(path: String,
  hue: Int): Bitmap;

 /**
  * Loads a Bitmap object given a path
  * and returns it.
  * @param {string} path
  * @param {number} hue
  * @returns {Bitmap}
  * @memberof ImageManagerStatic
  */
 public static dynamic function loadNormalBitmap(path: String,
  hue: Int): Bitmap;

 /**
  * Clears the image cache in RPGMakerMV.
  *
  * @memberof ImageManagerStatic
  */
 public static dynamic function clear(): Void;

 /**
  * Returns true if the image cache
  * is ready.
  * @returns {boolean}
  * @memberof ImageManagerStatic
  */
 public static dynamic function isReady(): Bool;

 /**
  * Returns true if the given filename
  * is an object character. Must contain
  * a  '!' in the file name to be an
  * object character.
  * @param {string} filename
  * @returns {boolean}
  * @memberof ImageManagerStatic
  */
 public static dynamic function isObjectCharacter(filename: String): Bool;

 /**
  * Returns true if the given filename is
  * a large character. Must contain a '$'
  * in the file name to be a large character.
  * @param {string} filename
  * @returns {boolean}
  * @memberof ImageManagerStatic
  */
 public static dynamic function isBigCharacter(filename: String): Bool;

 public static dynamic function isZeroParallax(filename: String): Bool;
}
