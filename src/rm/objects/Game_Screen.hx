package rm.objects;

import rm.objects.Game_Picture;

/**
 * The game object class for screen effect data, such as
 * changes in color tone and flashes.
 * aliased as $gameScreen.
 * @class Game_Screen
 */
@:expose("Game_Screen")
@:native("Game_Screen")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Screen {
 private var _shake: Float;
 private var _shakePower: Float;
 private var _shakeSpeed: Float;
 private var _shakeDuration: Float;
 private var _shakeDirection: Float;

 /**
  * _zoomX property of the game screen.
  *
  * @protected
  * @type {number}
  * @memberof Game_Screen
  */
 private var _zoomX: Float;

 /**
  * _zoomY property of the game screen.
  *
  * @protected
  * @type {number}
  * @memberof Game_Screen
  */
 private var _zoomY: Float;

 private var _zoomScale: Float;
 private var _zoomScaleTarget: Float;
 private var _zoomDuration: Float;
 private var _weatherType: String;
 private var _weatherPower: Float;
 private var _weatherPowerTarget: Float;
 private var _weatherDuration: Float;

 /**
  * The _brightness property of the game screen;
  * returned when calling the brightness method.
  * @protected
  * @type {number}
  * @memberof Game_Screen
  */
 private var _brightness: Float;

 private var _fadeOutDuration: Float;
 private var _fadeInDuration: Float;
 private var _tone: Array<Float>;
 private var _toneTarget: Array<Float>;
 private var _toneDuration: Float;
 private var _flashColor: Array<Float>;
 private var _flashDuration: Float;

 public function new(): Void;
 public function initialize(): Void;

 /**
  * The array of Game_Pictures that are
  * attached to the game screen.
  * @protected
  * @type {Array<Game_Picture>}
  * @memberof Game_Screen
  */
 private var _pictures: Array<Game_Picture>;

 public function clear(): Void;

 /**
  * Handler for when the battle starts in game; prepares
  * the screen for the battle scene.
  * @memberof Game_Screen
  */
 public function onBattleStart(): Void;

 /**
  * Returns the brightness of the game screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function brightness(): Float;

 public function tone(): Array<Float>;
 public function flashColor(): Array<Float>;
 public function shake(): Float;

 /**
  * Returns the  zoom x coordinate of the screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function zoomX(): Float;

 /**
  * Returns the zoom y coordiante of the screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function zoomY(): Float;

 /**
  * Returns the zoom scale of the screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function zoomScale(): Float;

 /**
  * Returns the current weather type.
  *
  * @returns {string}
  * @memberof Game_Screen
  */
 public function weatherType(): String; // TODO: Refactor to enum for weather type

 /**
  * Returns the weather power.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function weatherPower(): Float;

 /**
  * Returns the specified picture given the picture id.
  *
  * @param {number} pictureId
  * @returns {Game_Picture}
  * @memberof Game_Screen
  */
 public function picture(pictureId: Float): Game_Picture;

 /**
  * Returns the real picture id, given the picture id.
  *
  * @param {number} pictureId
  * @returns {number}
  * @memberof Game_Screen
  */
 public function realPictureId(pictureId: Float): Float;

 /**
  * Clears the screen fade.
  *
  * @memberof Game_Screen
  */
 public function clearFade(): Void;

 /**
  * Clears the screen tone.
  *
  * @memberof Game_Screen
  */
 public function clearTone(): Void;

 /**
  * Clears the screen flash.
  *
  * @memberof Game_Screen
  */
 public function clearFlash(): Void;

 /**
  * Clears the screen shake.
  *
  * @memberof Game_Screen
  */
 public function clearShake(): Void;

 /**
  * Clears the screen zoom.
  *
  * @memberof Game_Screen
  */
 public function clearZoom(): Void;

 /**
  * Clears the screen weather.
  *
  * @memberof Game_Screen
  */
 public function clearWeather(): Void;

 /**
  * Clears the pictures set on the game screen.
  *
  * @memberof Game_Screen
  */
 public function clearPictures(): Void;

 /**
  * Erases the battle pictures.
  *
  * @memberof Game_Screen
  */
 public function eraseBattlePictures(): Void;

 /**
  * Returns the maximum number of pictures set on the game screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function maxPictures(): Float;

 public function startFadeOut(duration: Float): Void;

 public function startFadeIn(duration: Float): Void;

 public function startTint(tone: Array<Float>, duration: Float): Void;

 public function startFlash(color: Array<Float>, duration: Float): Void;

 public function startShake(power: Float, speed: Float, duration: Float): Void;

 public function startZoom(x: Float, y: Float, scale: Float,
  duration: Float): Void;

 public function setZoom(x: Float, y: Float, scale: Float): Void;
 // TODO: change the weather type to an num
 public function changeWeather(type: String, power: Float,
  duration: Float): Void;

 /**
  * Updates the game screen.
  *
  * @memberof Game_Screen
  */
 public function update(): Void;

 /**
  * Updates the screen fade out.
  *
  * @memberof Game_Screen
  */
 public function updateFadeOut(): Void;

 /**
  * Updates the screen fade in.
  *
  * @memberof Game_Screen
  */
 public function updateFadeIn(): Void;

 /**
  * Updates the screen tone.
  *
  * @memberof Game_Screen
  */
 public function updateTone(): Void;

 /**
  * Update the screen flash.
  *
  * @memberof Game_Screen
  */
 public function updateFlash(): Void;

 /**
  * Update the screen shake.
  *
  * @memberof Game_Screen
  */
 public function updateShake(): Void;

 /**
  * Update the screen zoom.
  *
  * @memberof Game_Screen
  */
 public function updateZoom(): Void;

 /**
  * Update the screen weather.
  *
  * @memberof Game_Screen
  */
 public function updateWeather(): Void;

 /**
  * Update the screen pictures.
  *
  * @memberof Game_Screen
  */
 public function updatePictures(): Void;

 public function startFlashForDamage(): Void;

 public function showPicture(pictureId: Float, name: String, origin: Float,
  x: Float, y: Float, scaleX: Float, scaleY: Float, opacity: Float,
  blendMode: Float): Void;

 public function movePicture(pictureId: Float, origin: Float, x: Float,
  y: Float, scaleX: Float, scaleY: Float, opacity: Float, blendMode: Float,
  duration: Float): Void;

 public function rotatePicture(pictureId: Float, speed: Float): Void;

 public function tintPicture(pictureId: Float, tone: Array<Float>,
  duration: Float): Void;

 /**
  * Erases a picture from the screen given the respected picture id.
  *
  * @param {number} pictureId
  * @memberof Game_Screen
  */
 public function erasePicture(pictureId: Float): Void;
}
