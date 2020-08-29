package rm.managers;

import rm.core.HTML5Audio;
import js.html.Audio;
import rm.types.RM;

/**
 * Static class that handles BGM, BGS, ME, and SE.
 */
@:expose("AudioManager")
@:native("AudioManager")
extern class AudioManager {
 @:native("_bgmVolume")
 public static var __bgmVolume: Int;
 private static var _bgmVolume: Int;
 @:native("_bgsVolume")
 public static var __bgsVolume: Int;
 private static var _bgsVolume: Int;
 @:native("_meVolume")
 public static var __meVolume: Int;
 private static var _meVolume: Int;
 @:native("_seVolume")
 public static var __seVolume: Int;
 private static var _seVolume: Int;
 @:native("_currentBgm")
 public static var __currentBgm: AudioParameters;
 private static var _currentBgm: AudioParameters;
 @:native("_currentBgs")
 public static var __currentBgs: AudioParameters;
 private static var _currentBgs: AudioParameters; // TODO: Create Unifieid Type for Web Audio
 @:native("_bgmBuffer")
 public static var __bgmBuffer: HTML5Audio;
 private static var _bgmBuffer: HTML5Audio; // WebAudio
 @:native("_bgsBuffer")
 public static var __bgsBuffer: HTML5Audio;
 private static var _bgsBuffer: HTML5Audio; // WebAudio
 @:native("_meBuffer")
 public static var __meBuffer: HTML5Audio;
 private static var _meBuffer: HTML5Audio; // WebAudio
 @:native("_seBuffers")
 public static var __seBuffers: Array<HTML5Audio>;
 private static var _seBuffers: Array<HTML5Audio>;
 @:native("_staticBuffers")
 public static var __staticBuffers: Array<HTML5Audio>;
 private static var _staticBuffers: Array<HTML5Audio>;
 @:native("_replayFadeTime")
 public static var __replayFadeTime: Int;
 private static var _replayFadeTime: Int;
 @:native("_path")
 public static var __path: String;
 private static var _path: String;
 @:native("_blobUrl")
 public static var __blobUrl: String;
 private static var _blobUrl: String;

 public static var bgmVolume: Int;
 public static var bgsVolume: Int;
 public static var meVolume: Int;
 public static var seVolume: Int;

 public static function playBgm(bgm: AudioParameters, ?pos: Float): Void;
 public static function replayBgm(bgm: AudioParameters): Void;
 public static function isCurrentBgm(bgm: AudioParameters): Bool;
 public static function updateBgmParameters(bgm: AudioParameters): Void;
 public static function pdateCurrentBgm(bgm: AudioParameters,
  pos: Float): Void;
 public static function stopBgm(): Void;
 public static function fadeOutBgm(duration: Int): Void;
 public static function fadeInBgm(duration: Int): Void;

 public static function playBgs(bgs: AudioParameters, ?pos: Float): Void;
 public static function replayBgs(bgs: AudioParameters): Void;
 public static function isCurrentBgs(bgs: AudioParameters): Bool;
 public static function updateBgsParameters(bgs: AudioParameters): Void;
 public static function updateCurrentBgs(bgs: AudioParameters,
  pos: Float): Void;
 public static function stopBgs(): Void;
 public static function fadeOutBgs(duration: Int): Void;
 public static function fadeInBgs(duration: Int): Void;
 public static function playMe(me: AudioParameters): Void;
 public static function updateMeParameters(me: AudioParameters): Void;
 public static function fadeOutMe(duration: Int): Void;
 public static function stopMe(): Void;

 public static function playSe(se: AudioParameters): Void;
 public static function updateSeParameters(buffer: AudioParameters,
  se: AudioParameters): Void;
 public static function stopSe(): Void;
 public static function playStaticSe(se: AudioParameters): Void;
 public static function loadStaticSe(se: AudioParameters): Void;
 public static function isStaticSe(se: AudioParameters): Bool;
 public static function stopAll(): Void;
 public static function saveBgm(): AudioParameters;
 public static function saveBgs(): AudioParameters;
 public static function makeEmptyAudioObject(): AudioParameters;
 public static function createBuffer(): HTML5Audio;
 public static function updateBufferParameters(buffer: AudioParameters,
  configVolume: Int, audio: AudioParameters): Void;
 public static function audioFileExt(): String;
 public static function shouldUseHtml5Audio(): String;
 public static function checkErrors(): Void;
 public static function checkWebAudioError(?webAudio: HTML5Audio): Void;
 public static function playEncryptedBgm(bgm: AudioParameters,
  ?pos: Float): Void;
 public static function createDecryptBuffer(url: String, bgm: AudioParameters,
  ?pos: Float): Void;
}
