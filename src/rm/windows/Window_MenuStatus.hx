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
extern class Window_MenuStatus extends Window_Selectable {
 private var _formationMode: Bool;
 private var _pendingIndex: Int;

 /**
  * Creates an instance of Window_MenuStatus.
  * @param {number} x
  * @param {number} y
  * @memberof Window_MenuStatus
  */
 public dynamic function new(x: Int, y: Int);

 /**
  * Window width.
  * @return Int
  */
 public dynamic function windowWidth(): Int;

 /**
  * Window height.
  * @return Int
  */
 public dynamic function windowHeight(): Int;

 /**
  * Returns the height of each item (actor status) in the main menu
  * window.
  * @returns {number}
  * @memberof Window_MenuStatus
  */
 public dynamic function itemHeight(): Int;

 /**
  * Returns the number of visible rows in
  * menu status.
  * @returns {number}
  * @memberof Window_MenuStatus
  */
 public dynamic function numVisibleRows(): Int;

 /**
  * Loads the images for the main menu status window.
  *
  * @memberof Window_MenuStatus
  */
 public dynamic function loadImages(): Void;

 /**
  * Draws the item background at the given index.
  *
  * @param {number} index
  * @memberof Window_MenuStatus
  */
 public dynamic function drawItemBackground(index: Int): Void;

 public dynamic function drawItemImage(index: Int): Void;

 public dynamic function drawItemStatus(index: Int): Void;

 public dynamic function selectLast(): Void;

 /**
  * Determines if the window is in formation mode;
  * if true, the player can select characters to swap
  * positions with.
  * @returns {boolean}
  * @memberof Window_MenuStatus
  */
 public dynamic function formationMode(): Bool;

 /**
  * Sets the formation mode to true or false.
  *
  * @param {boolean} formationMode
  * @memberof Window_MenuStatus
  */
 public dynamic function setFormationMode(formationMode: Bool): Void;

 public dynamic function pendingIndex(): Int;

 public dynamic function setPendingIndex(index: Int): Void;
}
