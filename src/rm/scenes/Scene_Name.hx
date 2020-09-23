package rm.scenes;

import rm.core.Rectangle;

/**
 * Scene class of the name input screen.
 */
@:expose("Scene_Name")
@:native("Scene_Name")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Scene_Name extends Scene_MenuBase {
 #if !compileMV
 public function editWindowRect(): Void;
 public function inputWindowRect(): Rectangle;
 #end

 /**
  * Prepares the name input scene for giving the specified
  * actor at actorId a name with a maximum number of characters
  * given by maxLength.
  * @param {number} actorId
  * @param {number} maxLength
  * @memberof Scene_Name
  */
 public function prepare(actorId: Int, maxLength: Int): Void;

 /**
  * Creates the edit window.
  *
  * @memberof Scene_Name
  */
 public function createEditWindow(): Void;

 /**
  * Creates the input window.
  *
  * @memberof Scene_Name
  */
 public function createInputWindow(): Void;

 /**
  * Handler for when ok is processed on the name input scene.
  *
  * @memberof Scene_Name
  */
 public function onInputOk(): Void;
}
