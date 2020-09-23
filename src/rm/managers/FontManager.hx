package rm.managers;

import js.Browser;
import js.html.FontFace;
import core.Amaryllis;
import haxe.DynamicAccess;

/**
 * ------------
 * FontManager
 * Static RPGMakerMZ class for loading fonts in
 * RPGMakerMZ.
 */
@:native("FontManager")
@:expose("FontManager")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
#if !compileMV
extern class FontManager {
 private static var _urls: DynamicAccess<String>;
 private static var _states: DynamicAccess<String>;

 public static function load(family: String, fileName: String): Void;

 public static function isReady(): Bool;
 public static function startLoading(family: String, url: String): Void;

 /**
  * Throws an error if loading the font fails.
  * This will appear on the screen.
  * @param family
  */
 public static function throwLoadError(family: String): Void;

 /**
  * Makes the url for the filename for the font
  * and appens it with the 'fonts/'.
  * @param fileName
  * @return String
  */
 public static function makeUrl(fileName: String): String;
}
#else
class FontManager {
 private static var _urls: DynamicAccess<String>;
 private static var _states: DynamicAccess<String>;

 public static function load(family: String, filename: String): Void {
  if (_states[family] != "loaded") {
   if (filename != null) {
    var url = makeUrl(filename);
    startLoading(family, url);
   } else {
    _urls[family] = "";
    _states[family] = "loaded";
   }
  }
 };

 public static function isReady(): Bool {
  for (family in _states) {
   var state = _states[family];
   if (state == "loading") {
    return false;
   }
   if (state == "error") {
    throwLoadError(family);
   }
  }
  return true;
 }

 public static function startLoading(family: String, url: String) {
  var sourceUrl = 'url(${url})';
  var font = new FontFace(family, sourceUrl);
  _urls[family] = sourceUrl;
  _states[family] = "loading";
  // TODO: May need to update for base MV that has
  // no promise support.
  font.load().then((loadedFont) -> {
   Browser.document.fonts.add(font);
   _states[family] = "loaded";
   return 0; // Load Complete
  }).catchError((_) -> {
   _states[family] = "error";
  });
 }

 public static function throwLoadError(family: String): Void {
  var url = _urls[family];
  var retry = () -> startLoading(family, url);
  var result: Dynamic = ["LoadError", url, retry];
  throw result;
 }

 public static function makeUrl(fileName: String): String {
  return "fonts/" + Amaryllis.encodeURI(fileName);
 }
}
#end
