package rm.managers;

import js.html.Event;
import js.html.KeyboardEvent;
import rm.core.Bitmap;
import rm.scenes.Scene_Base;

/**
 * Manages the scenes of the game.
 */
@:expose("SceneManager")
@:native("SceneManager")
extern class SceneManager {
 @:native("_scene")
 public static var __scene: Scene_Base;
 private static var _scene: Scene_Base;
 @:native("_nextScene")
 public static var __nextScene: Scene_Base;
 private static var _nextScene: Scene_Base;
 @:native("_stack")
 public static var __stack: Array<Any>;
 private static var _stack: Array<Any>;
 @:native("_screenWidth")
 public static var __screenWidth: Int;
 private static var _screenWidth: Int;
 @:native("_screenHeight")
 public static var __screenHeight: Int;
 private static var _screenHeight: Int;
 @:native("_backgroundBitmap")
 public static var __backgroundBitmap: Bitmap;
 private static var _backgroundBitmap: Bitmap;
 @:native("_boxWidth")
 public static var __boxWidth: Int;
 private static var _boxWidth: Int;
 @:native("_boxHeight")
 public static var __boxHeight: Int;
 private static var _boxHeight: Int;
 @:native("_deltaTime")
 public static var __deltaTime: Float;
 private static var _deltaTime: Float;
 @:native("_currentTime")
 public static var __currentTime: Float;
 private static var _currentTime: Float;
 private static var _accumulator: Int;
 @:native("_accumulator")
 public static var __accumulator: Int;

 /**
  * Convenience variable for getting the current scene.
  */
 @:native("_scene")
 public static var currentScene: Any;

 public static dynamic function preferableRendererType(): String;
 public static dynamic function shouldUseCanvasRenderer(): Bool;

 public static dynamic function initialize(): Void;
 public static dynamic function initGraphics(): Void;
 public static dynamic function initAudio(): Void;
 public static dynamic function initInput(): Void;
 public static dynamic function initNwjs(): Void;
 public static dynamic function update(): Void;
 public static dynamic function terminate(): Void;
 public static dynamic function tickStart(): Void;
 public static dynamic function tickEnd(): Void;
 public static dynamic function changeScene(): Void;
 public static dynamic function updateScene(): Void;
 public static dynamic function renderScene(): Void;
 public static dynamic function onSceneCreate(): Void;
 public static dynamic function onSceneStart(): Void;
 public static dynamic function onSceneLoading(): Void;

 public static dynamic function onError(e: Event): Void;
 public static dynamic function onKeyDown(event: KeyboardEvent): Void;
 public static dynamic function catchException(e: Event): Void;

 public static dynamic function isSceneChanging(): Bool;
 public static dynamic function isCurrentSceneBusy(): Bool;
 public static dynamic function isCurrentSceneStarted(): Bool;
 public static dynamic function isNextScene(sceneClass: Any): Bool;
 public static dynamic function isPreviousScene(sceneClass: Any): Bool;

 /**
  * Goes to the scene passed in.
  * @param sceneClass
  */
 public static dynamic function goto(sceneClass: Any): Void;

 /**
  * Pushes the scene passed in to the scene stack.
  * Immediately goes to the scene passed in.
  * @param sceneClass
  */
 public static dynamic function push(sceneClass: Any): Void;

 /**
  * Pops the current scene from the stack.
  */
 public static dynamic function pop(): Void;

 /**
  * Exits the current scene.
  */
 public static dynamic function exit(): Void;

 public static dynamic function clearStack(): Void;

 /**
  * Stops the current scene.
  */
 public static dynamic function stop(): Void;

 public static dynamic function prepareNextScene(): Void;
 public static dynamic function snap(): Bitmap;
 public static dynamic function snapForBackground(): Void;
 public static dynamic function backgroundBitmap(): Bitmap;
 public static dynamic function updateManagers(ticks: Float,
  delta: Float): Void;
 #if !compileMV
 public static dynamic function showDevTools(): Void;
 #else
 #end
}
