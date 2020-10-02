package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_MenuStatus
 *
 * The window for displaying party member status on the menu screen.
 * @class Window_MenuStatus
 * @extends {Window_Selectable}
 */
@:expose("Window_MenuStatus")
@:native("Window_MenuStatus")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_MenuStatus extends Window_Selectable {
 private var _formationMode: Bool;
 private var _pendingIndex: Float;

 /**
  * Creates an instance of Window_MenuStatus.
  * @param {number} x
  * @param {number} y
  * @memberof Window_MenuStatus
  */
 public function new(x: Float, y: Float);

 /**
  * Window width.
  * @return Float
  */
 public function windowWidth(): Float;

 /**
  * Window height.
  * @return Float
  */
 public function windowHeight(): Float;

 /**
  * Returns the height of each item (actor status) in the main menu
  * window.
  * @returns {number}
  * @memberof Window_MenuStatus
  */
 public function itemHeight(): Float;

 /**
  * Returns the number of visible rows in
  * menu status.
  * @returns {number}
  * @memberof Window_MenuStatus
  */
 public function numVisibleRows(): Float;

 /**
  * Loads the images for the main menu status window.
  *
  * @memberof Window_MenuStatus
  */
 public function loadImages(): Void;

 /**
  * Draws the item background at the given index.
  *
  * @param {number} index
  * @memberof Window_MenuStatus
  */
 public function drawItemBackground(index: Float): Void;

 public function drawItemImage(index: Float): Void;

 public function drawItemStatus(index: Float): Void;

 public function selectLast(): Void;

 /**
  * Determines if the window is in formation mode;
  * if true, the player can select characters to swap
  * positions with.
  * @returns {boolean}
  * @memberof Window_MenuStatus
  */
 public function formationMode(): Bool;

 /**
  * Sets the formation mode to true or false.
  *
  * @param {boolean} formationMode
  * @memberof Window_MenuStatus
  */
 public function setFormationMode(formationMode: Bool): Void;

 public function pendingIndex(): Float;

 public function setPendingIndex(index: Float): Void;
}
