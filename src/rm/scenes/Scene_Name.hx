package rm.scenes;

import rm.core.Rectangle;

/**
 * Scene class of the name input screen.
 */
@:expose("Scene_Name")
@:native("Scene_Name")
extern class Scene_Name extends Scene_MenuBase {
 #if !compileMV
 public dynamic function editWindowRect(): Void;
 public dynamic function inputWindowRect(): Rectangle;
 #end

 /**
  * Prepares the name input scene for giving the specified
  * actor at actorId a name with a maximum number of characters
  * given by maxLength.
  * @param {number} actorId
  * @param {number} maxLength
  * @memberof Scene_Name
  */
 public dynamic function prepare(actorId: Int, maxLength: Int): Void;

 /**
  * Creates the edit window.
  *
  * @memberof Scene_Name
  */
 public dynamic function createEditWindow(): Void;

 /**
  * Creates the input window.
  *
  * @memberof Scene_Name
  */
 public dynamic function createInputWindow(): Void;

 /**
  * Handler for when ok is processed on the name input scene.
  *
  * @memberof Scene_Name
  */
 public dynamic function onInputOk(): Void;
}
