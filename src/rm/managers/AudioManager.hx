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

 public static dynamic function playBgm(bgm: AudioParameters,
  ?pos: Float): Void;
 public static dynamic function replayBgm(bgm: AudioParameters): Void;
 public static dynamic function isCurrentBgm(bgm: AudioParameters): Bool;
 public static dynamic function updateBgmParameters(bgm: AudioParameters): Void;
 public static dynamic function pdateCurrentBgm(bgm: AudioParameters,
  pos: Float): Void;
 public static dynamic function stopBgm(): Void;
 public static dynamic function fadeOutBgm(duration: Int): Void;
 public static dynamic function fadeInBgm(duration: Int): Void;

 public static dynamic function playBgs(bgs: AudioParameters,
  ?pos: Float): Void;
 public static dynamic function replayBgs(bgs: AudioParameters): Void;
 public static dynamic function isCurrentBgs(bgs: AudioParameters): Bool;
 public static dynamic function updateBgsParameters(bgs: AudioParameters): Void;
 public static dynamic function updateCurrentBgs(bgs: AudioParameters,
  pos: Float): Void;
 public static dynamic function stopBgs(): Void;
 public static dynamic function fadeOutBgs(duration: Int): Void;
 public static dynamic function fadeInBgs(duration: Int): Void;
 public static dynamic function playMe(me: AudioParameters): Void;
 public static dynamic function updateMeParameters(me: AudioParameters): Void;
 public static dynamic function fadeOutMe(duration: Int): Void;
 public static dynamic function stopMe(): Void;

 public static dynamic function playSe(se: AudioParameters): Void;
 public static dynamic function updateSeParameters(buffer: AudioParameters,
  se: AudioParameters): Void;
 public static dynamic function stopSe(): Void;
 public static dynamic function playStaticSe(se: AudioParameters): Void;
 public static dynamic function loadStaticSe(se: AudioParameters): Void;
 public static dynamic function isStaticSe(se: AudioParameters): Bool;
 public static dynamic function stopAll(): Void;
 public static dynamic function saveBgm(): AudioParameters;
 public static dynamic function saveBgs(): AudioParameters;
 public static dynamic function makeEmptyAudioObject(): AudioParameters;
 public static dynamic function createBuffer(): HTML5Audio;
 public static dynamic function updateBufferParameters(buffer: AudioParameters,
  configVolume: Int, audio: AudioParameters): Void;
 public static dynamic function audioFileExt(): String;
 public static dynamic function shouldUseHtml5Audio(): String;
 public static dynamic function checkErrors(): Void;
 public static dynamic function checkWebAudioError(?webAudio: HTML5Audio): Void;
 public static dynamic function playEncryptedBgm(bgm: AudioParameters,
  ?pos: Float): Void;
 public static dynamic function createDecryptBuffer(url: String,
  bgm: AudioParameters, ?pos: Float): Void;
}
