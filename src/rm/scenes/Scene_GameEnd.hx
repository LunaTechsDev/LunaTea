package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_GameEnd;

/**
 * Scene class of the game end screen.
 */
@:expose("Scene_GameEnd")
@:native("Scene_GameEnd")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Scene_GameEnd extends Scene_MenuBase {
 private var _commandWindow: Window_GameEnd;

 #if !compileMV
 public function commandWindowRect(): Rectangle;
 #end

 public function stop(): Void;

 /**
  * Creates the background for
  * the game end scene.
  * @memberof Scene_GameEnd
  */
 public function createBackground(): Void;

 /**
  * Creates the command window
  * for the game end screen.
  * @memberof Scene_GameEnd
  */
 public function createCommandWindow(): Void;

 /**
  * Handler for when to title
  * is clicked within the game end screen.
  * @memberof Scene_GameEnd
  */
 public function commandToTitle(): Void;
}
