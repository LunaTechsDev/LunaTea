package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_Gold;
import rm.windows.Window_MenuCommand;
import rm.windows.Window_MenuStatus;

/**
 * The menu scene in your RPGMakerMV game.
 */
@:expose("Scene_Menu")
@:native("Scene_Menu")
extern class Scene_Menu extends Scene_MenuBase {
 private var _commandWindow: Window_MenuCommand;
 private var _goldWindow: Window_Gold;
 private var _statusWindow: Window_MenuStatus;

 #if !compileMV
 public dynamic function commandWindowRect(): Rectangle;
 public dynamic function goldWindowRect(): Rectangle;
 #end

 /**
  * Creates the main menu window on the
  * menu scene; contains the commands for
  * menu usage.
  * @memberof Scene_Menu
  */
 public dynamic function createCommandWindow(): Void;

 /**
  * Creates the gold window on the menu scene.
  *
  * @memberof Scene_Menu
  */
 public dynamic function createGoldWindow(): Void;

 /**
  * Creates the status window on the menu scene.
  *
  * @memberof Scene_Menu
  */
 public dynamic function createStatusWindow(): Void;

 /**
  * Handler for what to do when the 'item'
  * command is clicked.
  * @memberof Scene_Menu
  */
 public dynamic function commandItem(): Void;

 public dynamic function commandPersonal(): Void;
 public dynamic function commandFormation(): Void;

 /**
  * Handler for what to do when the 'option'
  * command is clicked.
  * @memberof Scene_Menu
  */
 public dynamic function commandOptions(): Void;

 /**
  * Handler for what to do when the 'save'
  * command is clicked.
  * @memberof Scene_Menu
  */
 public dynamic function commandSave(): Void;

 /**
  * Handler for what to do when the 'game end'
  * command is clicked.
  * @memberof Scene_Menu
  */
 public dynamic function commandGameEnd(): Void;

 public dynamic function onPersonalOk(): Void;
 public dynamic function onPersonalCancel(): Void;
 public dynamic function onFormationOk(): Void;
 public dynamic function onFormationCancel(): Void;
}
