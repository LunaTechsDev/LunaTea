package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_SavefileList;

/**
 *  Super class of Scene_Save and Scene_Load
 */
@:expose("Scene_File")
@:native("Scene_File")
extern class Scene_File extends Scene_MenuBase {
 private var _listWindow: Window_SavefileList;

 #if !compileMV
 public dynamic function isSavefileEnabled(): Bool;
 public dynamic function listWindowRect(): Rectangle;

 public dynamic function needsAutosave(): Bool;

 public dynamic function firstSavefileId(): Int;
 #else

 /**
  * Returns the index of the first
  * save file.
  * @returns {number}
  * @memberof Scene_File
  */
 public dynamic function firstSavefileIndex(): Int;
 #end

 /**
  * Returns the current savefileId.
  *
  * @memberof Scene_File
  */
 public dynamic function savefileId(): Int;

 public dynamic function createHelpWindow(): Void;
 public dynamic function createListWindow(): Void;

 /**
  * The current mode of the scene;
  * the modes are 'save' or 'load'.
  * @memberof Scene_File
  */
 public dynamic function mode(): Void;

 public dynamic function activateListWindow(): Void;
 public dynamic function helpWindowText(): String;

 /**
  * Handler for when a
  * save file is selected within the file scene.
  * @memberof Scene_File
  */
 public dynamic function onSavefileOk(): Void;
}
