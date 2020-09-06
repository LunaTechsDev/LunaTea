package rm.scenes;

/**
 * The scene class of the load game screen.
 */
@:expose("Scene_Load")
@:native("Scene_Load")
extern class Scene_Load extends Scene_File {
 private var _loadSuccess: Bool;

 /**
  * Returns the mode of the
  * load scene.
  * @returns {string}
  * @memberof Scene_Load
  */
 public dynamic function mode(): String;

 /**
  * Returns the help window text on the
  * game load scene.
  * @returns {string}
  * @memberof Scene_Load
  */
 public dynamic function helpWindowText(): String;

 #if !compileMV
 public dynamic function executeLoad(saveFileId: Int): Void;
 #end

 public dynamic function firstSavefileIndex(): Int;
 public dynamic function onSavefileOk(): Void;
 public dynamic function onLoadSuccess(): Void;
 public dynamic function onLoadFailure(): Void;
 public dynamic function reloadMapIfUpdated(): Void;
}
