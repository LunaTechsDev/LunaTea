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
 private var _urls: DynamicAccess<String>;
 private var _states: DynamicAccess<String>;

 public function load(family: String, fileName: String): Void;

 public function isReady(): Bool;
 public function startLoading(family: String, url: String): Void;

 /**
  * Throws an error if loading the font fails.
  * This will appear on the screen.
  * @param family
  */
 public function throwLoadError(family: String): Void;

 /**
  * Makes the url for the filename for the font
  * and appens it with the 'fonts/'.
  * @param fileName
  * @return String
  */
 public function makeUrl(fileName: String): String;
}
#else
class FontManager {
 private var _urls: DynamicAccess<String>;
 private var _states: DynamicAccess<String>;

 public function isReady(): Bool {
  for (family in this._states) {
   var state = this._states[family];
   if (state == "loading") {
    return false;
   }
   if (state == "error") {
    this.throwLoadError(family);
   }
  }
  return true;
 }

 public function startLoading(family: String, url: String) {
  var sourceUrl = 'url(${url})';
  var font = new FontFace(family, sourceUrl);
  this._urls[family] = sourceUrl;
  this._states[family] = "loading";
  // TODO: May need to update for base MV that has
  // no promise support.
  font.load().then((loadedFont) -> {
   Browser.document.fonts.add(font);
   this._states[family] = "loaded";
   return 0; // Load Complete
  }).catchError((_) -> {
   this._states[family] = "error";
  });
 }

 public function throwLoadError(family: String): Void {
  var url = this._urls[family];
  var retry = () -> this.startLoading(family, url);
  var result: Dynamic = ["LoadError", url, retry];
  throw result;
 }

 public function makeUrl(fileName: String): String {
  return "fonts/" + Amaryllis.encodeURI(fileName);
 }
}
#end
