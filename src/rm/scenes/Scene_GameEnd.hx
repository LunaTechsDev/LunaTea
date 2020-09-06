package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_GameEnd;

/**
 * Scene class of the game end screen.
 */
@:expose("Scene_GameEnd")
@:native("Scene_GameEnd")
extern class Scene_GameEnd extends Scene_MenuBase {
 private var _commandWindow: Window_GameEnd;

 #if !compileMV
 public dynamic function commandWindowRect(): Rectangle;
 #end

 public dynamic function stop(): Void;

 /**
  * Creates the background for
  * the game end scene.
  * @memberof Scene_GameEnd
  */
 public dynamic function createBackground(): Void;

 /**
  * Creates the command window
  * for the game end screen.
  * @memberof Scene_GameEnd
  */
 public dynamic function createCommandWindow(): Void;

 /**
  * Handler for when to title
  * is clicked within the game end screen.
  * @memberof Scene_GameEnd
  */
 public dynamic function commandToTitle(): Void;
}
