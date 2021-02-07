package rm.scenes;

import rm.core.WindowLayer;
import rm.core.Stage;
import rm.windows.Window_Base;
import haxe.extern.EitherType;
import rm.core.Sprite;

@:expose("Scene_Base")
@:native("Scene_Base")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Scene_Base extends Stage {
 #if !compileMV
 private var _started: Bool;
 #end
 private var _active: Bool;
 private var _fadeSign: Float;
 private var _fadeDuration: Float;
 private var _imageReservationId: EitherType<Dynamic, Float>;
 private var _windowLayer: WindowLayer;
 @:native("_windowLayer")
 public var windowLayer: WindowLayer;

 public function new(): Void;

 /**
  * Initializes the scene.
  * @return Void
  */
 public function initialize(): Void;

 /**
  * Creates the scene's important properties.
  */
 public function create(): Void;

 /**
  * Returns whether the scene is active or not.
  * @return Bool
  */
 public function isActive(): Bool;

 /**
  * Returns if the scene is ready or not.
  * @return Bool
  */
 public function isReady(): Bool;

 /**
  * Starts the scene.
  */
 public function start(): Void;

 /**
  * Updates the scene.
  */
 public function update(): Void;

 /**
  * Stops the scene.
  */
 public function stop(): Void;

 /**
  * Checks if the Scene is busy processing an event
  * or other conditions.
  * @return Bool
  */
 public function isBusy(): Bool;

 #if !compileMV
 public function isStarted(): Bool;
 public function isFading(): Bool;
 public function createColorFilter(): Void;
 public function updateColorFilter(): Void;
 public function scaleSprite(sprite: Sprite): Void;
 public function centerSprite(sprite: Sprite): Void;
 public function isBottomHelpMode(): Bool;
 public function isBottomButtonMode(): Bool;
 public function isRightInputMode(): Bool;
 public function mainCommandWidth(): Float;
 public function buttonAreaTop(): Float;
 public function buttonAreaBottom(): Float;
 public function buttonAreaHeight(): Float;
 public function buttonY(): Float;
 public function calcWindowHeight(numLines: Float, selectable: Bool): Float;
 public function requestAutosave(): Void;
 public function isAutosaveEnabled(): Bool;
 public function executeAutosave(): Void;
 public function onAutosaveSuccess(): Void;
 public function onAutosaveFailure(): Void;
 #end

 /**
  * Terminates/ends the scene.
  */
 public function terminate(): Void;

 /**
  * Creates the window layer on the current scene
  * for displaying any and all windows.
  */
 public function createWindowLayer(): Void;

 /**
  * Adds a child window to the window layer for processing.
  * @param window
  */
 public function addWindow(window: Window_Base): Void;

 /**
  * Request a fadeIn screen process
  * @param duration  [duration=30] The time the process will take to fadeIn the screen.
  * @param white  [white=false] If true the fadeIn will process with a white color else it will be black.
  */
 public function startFadeIn(duration: Float, white: Bool): Void;

 /**
  * Request a fadeOut screen process
  * @param duration  [duration=30] The time the process will take to fadeOut the screen.
  * @param white  [white=false] If true the fadeOut will process with a white color else it will be black.
  */
 public function startFadeOut(duration: Float, white: Bool): Void;

 public function createFadeSprite(white: Bool): Void;

 /**
  * Updates the scene's fade
  */
 public function updateFade(): Void;

 public function updateChildren(): Void;

 /**
  * Pops the current scene and returns to the previous scene if available.
  */
 public function popScene(): Void;

 /**
  * Checks for game over.
  */
 public function checkGameOver(): Void;

 public function fadeOutAll(): Void;

 /**
  * Returns the fade speed.
  * @return Float
  */
 public function fadeSpeed(): Float;

 /**
  * Returns the slow fade speed.
  * @return Float
  */
 public function slowFadeSpeed(): Float;
}
