package rm.scenes;

import rm.core.WindowLayer;
import rm.core.Stage;
import rm.windows.Window_Base;
import haxe.extern.EitherType;

@:expose("Scene_Base")
@:native("Scene_Base")
extern class Scene_Base extends Stage {
 #if !compileMV
 private var _started: Bool;
 #end
 private var _active: Bool;
 private var _fadeSign: Int;
 private var _fadeDuration: Int;
 private var _imageReservationId: EitherType<Dynamic, Int>;
 private var _windowLayer: WindowLayer;
 @:native("_windowLayer")
 public var windowLayer: WindowLayer;

 public dynamic function new(): Void;

 /**
  * Initializes the scene.
  * @return Void
  */
 public dynamic function initialize(): Void;

 /**
  * Creates the scene's important properties.
  */
 public dynamic function create(): Void;

 /**
  * Returns whether the scene is active or not.
  * @return Bool
  */
 public dynamic function isActive(): Bool;

 /**
  * Returns if the scene is ready or not.
  * @return Bool
  */
 public dynamic function isReady(): Bool;

 /**
  * Starts the scene.
  */
 public dynamic function start(): Void;

 /**
  * Updates the scene.
  */
 public dynamic function update(): Void;

 /**
  * Stops the scene.
  */
 public dynamic function stop(): Void;

 /**
  * Checks if the Scene is busy processing an event
  * or other conditions.
  * @return Bool
  */
 public dynamic function isBusy(): Bool;

 #if !compileMV
 public dynamic function isStarted(): Bool;
 public dynamic function isFading(): Bool;
 public dynamic function createColorFilter(): Void;
 public dynamic function updateColorFilter(): Void;
 public dynamic function scaleSprite(): Void;
 public dynamic function centerSprite(): Void;
 public dynamic function isBottomHelpMode(): Bool;
 public dynamic function isBottomButtonMode(): Bool;
 public dynamic function isRightInputMode(): Bool;
 public dynamic function mainCommandWidth(): Int;
 public dynamic function buttonAreaTop(): Int;
 public dynamic function buttonAreaBottom(): Int;
 public dynamic function buttonAreaHeight(): Int;
 public dynamic function buttonY(): Int;
 public dynamic function calcWindowHeight(): Int;
 public dynamic function requestAutosave(): Void;
 public dynamic function isAutosaveEnabled(): Bool;
 public dynamic function executeAutosave(): Void;
 public dynamic function onAutosaveSuccess(): Void;
 public dynamic function onAutosaveFailure(): Void;
 #end

 /**
  * Terminates/ends the scene.
  */
 public dynamic function terminate(): Void;

 /**
  * Creates the window layer on the current scene
  * for displaying any and all windows.
  */
 public dynamic function createWindowLayer(): Void;

 /**
  * Adds a child window to the window layer for processing.
  * @param window
  */
 public dynamic function addWindow(window: Window_Base): Void;

 /**
  * Request a fadeIn screen process
  * @param duration  [duration=30] The time the process will take to fadeIn the screen.
  * @param white  [white=false] If true the fadeIn will process with a white color else it will be black.
  */
 public dynamic function startFadeIn(duration: Int, white: Bool): Void;

 /**
  * Request a fadeOut screen process
  * @param duration  [duration=30] The time the process will take to fadeOut the screen.
  * @param white  [white=false] If true the fadeOut will process with a white color else it will be black.
  */
 public dynamic function startFadeOut(duration: Int, white: Bool): Void;

 public dynamic function createFadeSprite(white: Bool): Void;

 /**
  * Updates the scene's fade
  */
 public dynamic function updateFade(): Void;

 public dynamic function updateChildren(): Void;

 /**
  * Pops the current scene and returns to the previous scene if available.
  */
 public dynamic function popScene(): Void;

 /**
  * Checks for game over.
  */
 public dynamic function checkGameOver(): Void;

 public dynamic function fadeOutAll(): Void;

 /**
  * Returns the fade speed.
  * @return Int
  */
 public dynamic function fadeSpeed(): Int;

 /**
  * Returns the slow fade speed.
  * @return Int
  */
 public dynamic function slowFadeSpeed(): Int;
}
