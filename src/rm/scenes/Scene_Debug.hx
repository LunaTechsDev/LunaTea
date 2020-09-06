package rm.scenes;

import rm.core.Rectangle;

/**
 * Scene class of the debug menu screen.
 */
@:expose("Scene_Debug")
@:native("Scene_Debug")
extern class Scene_Debug extends Scene_MenuBase {
 /**
  * Creates the range window.
  *
  * @memberof Scene_Debug
  */
 public dynamic function createRangeWindow(): Void;

 #if !compileMV
 public dynamic function rangeWindowRect(): Rectangle;
 public dynamic function editWindowRect(): Rectangle;
 public dynamic function debugHelpWindowRect(): Rectangle;
 #end

 /**
  * Creates the edit window.
  *
  * @memberof Scene_Debug
  */
 public dynamic function createEditWindow(): Void;

 /**
  * Creates the debug help .window.
  *
  * @memberof Scene_Debug
  */
 public dynamic function createDebugHelpWindow(): Void;

 public dynamic function onRangeOk(): Void;
 public dynamic function onEditCancel(): Void;
 public dynamic function refreshHelpWindow(): Void;

 /**
  * Returns the help text within the
  * debug scene.
  * @returns {String}
  * @memberof Scene_Debug
  */
 public dynamic function helpText(): String;
}
