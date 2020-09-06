package rm.windows;

import rm.core.Rectangle;

@:expose("Window_Selectable")
@:native("Window_Selectable")
#if compileMV
extern class Window_Selectable extends Window_Base {
#else
extern class Window_Selectable extends Window_Scrollable {
#end

/**
 * The index property of Window_Selectable; this is used
 * to select items from the list within the window.
 * @private var
 * @type {number}
 * @memberof Window_Selectable
 */
private var _index: Int;

/**
 * The boolean property that determines if the cursor is
 * fixed(locked to a position).
 * @private var
 * @type {boolean}
 * @memberof Window_Selectable
 */
private var _cursorFixed: Bool;

private var _cursorAll: Bool;
private var _stayCount: Int;
private var _helpWindow: Window_Help;
private var _handlers: Any;
private var _touching: Bool;
#if compileMV
private var _scrollX: Float;
private var _scrollY: Float;
public dynamic function new(x: Int, y: Int, width: Int, height: Int): Void;

public dynamic function initialize(x: Int, y: Int, height: Int,
 width: Int): Void;
#else
public dynamic function new(rect: Rectangle);
public dynamic function initialize(rect: Rectangle): Void;

/**
 * Forcefully selects the index and cursor
 * visibility is set to false.
 * @param index
 */
public dynamic function forceSelect(index: Int): Void;

/**
 * Smoothly scrolls to the index.
 * Cursor visibility is set to true.
 * @param index
 */
public dynamic function smoothSelect(index: Int): Void;

public dynamic function itemRectWithPadding(index: Int): Rectangle;

/**
 * Return the rectangle for the line item with padding.
 * @param index
 */
public dynamic function itemLineRect(index: Int): Rectangle;

/**
 * Overwrite this or add to it to add your own draw dynamic functions.
 */
public dynamic function paint(): Void;

/**
 * Refreshes the cursor.
 */
public dynamic function refreshCursor(): Void;

/**
 * Refreshes cursor for selecting all items.
 */
public dynamic function refreshCursorForAll(): Void;

/**
 * Returns true by default.
 * Determines if hover support is enabled.
 * @return Bool
 */
public dynamic function isHoverEnabled(): Bool;

/**
 * Handler for Touching okay in the window.
 */
public dynamic function onTouchOk(): Void;

/**
 * Handler for selecting in the window.
 */
public dynamic function onTouchSelect(): Void;

/**
 * Handler for touching and processing cancel in
 * the window.
 */
public dynamic function onTouchCancel(): Void;
#end

/**
 * Returns the current position of the _index property.
 *
 * @returns {Int}
 * @memberof Window_Selectable
 */
public dynamic function index(): Int;

/**
 * Returns true if the _cursorFixed property is true;
 * this means the cursor is locked to a position.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public dynamic function cursorFixed(): Bool;

/**
 * Sets the _cursorFixed property of the
 * window.
 * @param {boolean} cursorFixed
 * @memberof Window_Selectable
 */
public dynamic function setCursorFixed(cursorFixed: Bool): Void;

public dynamic function cursorAll(): Bool;
public dynamic function setCursorAll(cursorAll: Bool): Void;

/**
 * Returns the maximum number of columns
 * for the window.
 * @returns {number}
 * @memberof Window_Selectable
 */
public dynamic function maxCols(): Int;

/**
 * Returns the maximum number of items within the window;
 * useful to overwrite when creating a new window.
 * This method is used to calculate the number of rows and more.
 * @returns {number}
 * @memberof Window_Selectable
 */
public dynamic function maxItems(): Int;

public dynamic function spacing(): Float;

/**
 * Returns the width of an item within the window;
 * determines the width of a column.
 * @returns {number}
 * @memberof Window_Selectable
 */
public dynamic function itemWidth(): Float;

/**
 * Returns the height of an item within the window;
 * determines the height of a row.
 * @returns {number}
 * @memberof Window_Selectable
 */
public dynamic function itemHeight(): Float;

/**
 * Selects the current index within the window given a number.
 *
 * @param {number} index
 * @memberof Window_Selectable
 */
public dynamic function select(index: Int): Void;

/**
 * Deselects the currently selected index.
 *
 * @memberof Window_Selectable
 */
public dynamic function deselect(): Void;

/**
 * Reselects the index based on the window's _index property.
 *
 * @memberof Window_Selectable
 */
public dynamic function reselect(): Void;

public dynamic function row(): Int;
public dynamic function topRow(): Int;
public dynamic function maxTopRow(): Int;

/**
 * Sets the current top row of the given a number.
 * The top row will then be moved to an index
 * of the window.
 * @param {number} row
 * @memberof Window_Selectable
 */
public dynamic function setTopRow(row: Int): Void;

public dynamic function resetScroll(): Void;
public dynamic function maxPageRows(): Int;
public dynamic function maxPageItems(): Int;

/**
 * Returns true if the window is horizontal;
 * means the window only has a single row.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public dynamic function isHorizontal(): Bool;

public dynamic function bottomRow(): Int;
public dynamic function setBottomRow(row: Int): Void;

/**
 * Creates a new rectangle based on itemWidth and itemHeight.
 * The rectangle is mainly used for positioning items within
 * the selectable window.
 * @param {number} index
 * @returns {Rectangle}
 * @memberof Window_Selectable
 */
public dynamic function itemRect(index: Int): Rectangle;

/**
 * Creates a new rectangle based on itemWidth and itemHeight
 * The rectangle is used for positioning text within
 * the selectable window.
 * @param {number} index
 * @returns {Rectangle}
 * @memberof Window_Selectable
 */
public dynamic function itemRectForText(index: Int): Rectangle;

public dynamic function setHelpWindow(helpWindow: Window_Help): Void;

/**
 * Shows the attached help window.
 *
 * @memberof Window_Selectable
 */
public dynamic function showHelpWindow(): Void;

/**
 * Hides the attached help window.
 *
 * @memberof Window_Selectable
 */
public dynamic function hideHelpWindow(): Void;

/**
 * Creates a new handler with the symbol as the handler name
 * and a method (JS dynamic function) bound to it.
 * @param {string} symbol
 * @param {*} method
 * @memberof Window_Selectable
 */
public dynamic function setHandler(symbol: String, method: Any): Void;

public dynamic function isHandled(symbol: String): Bool;
public dynamic function callHandler(symbol: String): Void;
public dynamic function isOpenAndActive(): Bool;
public dynamic function isCursorMovable(): Bool;

/**
 * Moves the cursor down; if wrap is passed
 * as true, then it will return to the top when
 * at the end of the list.
 * @param {boolean} wrap
 * @memberof Window_Selectable
 */
public dynamic function cursorDown(wrap: Bool): Void;

/**
 * Moves the cursor up; if wrap is passed
 * as true, then it will return to the bottom
 * when at the top of the list.
 * @param {boolean} wrap
 * @memberof Window_Selectable
 */
public dynamic function cursorUp(wrap: Bool): Void;

public dynamic function cursorRight(wrap: Bool): Void;
public dynamic function cursorLeft(wrap: Bool): Void;
public dynamic function cursorPagedown(): Void;
public dynamic function cursorPageup(): Void;
public dynamic function scrollDown(): Void;
public dynamic function scrollUp(): Void;
public dynamic function updateArrows(): Void;

/**
 * Handles the processing of cursor movement.
 *
 * @memberof Window_Selectable
 */
public dynamic function processCursorMove(): Void;

/**
 * Handles the process of attached handlers.
 *
 * @memberof Window_Selectable
 */
public dynamic function processHandling(): Void;

/**
 * Handles the processing of the scroll wheel within
 * the window.
 * @memberof Window_Selectable
 */
public dynamic function processWheel(): Void;

/**
 * Handles the processing of touch input.
 *
 * @memberof Window_Selectable
 */
public dynamic function processTouch(): Void;

public dynamic function isTouchedInsideFrame(): Bool;
public dynamic function onTouch(triggered: Bool): Void;
public dynamic function hitTest(x: Float, y: Float): Float;
public dynamic function isContentsArea(x: Float, y: Float): Bool;

/**
 * Determines if touch ok is enabled as an option;
 * this means whether you can confirm the selection
 * of an item within the window with touch input.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public dynamic function isTouchOkEnabled(): Bool;

/**
 * Determines if ok is enabled as an option;
 * this means whether you can confirm selection
 * of an item within the window.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public dynamic function isOkEnabled(): Bool;

public dynamic function isCancelEnabled(): Bool;
public dynamic function isOkTriggered(): Bool;
public dynamic function isCancelTriggered(): Bool;
public dynamic function processOk(): Void;
public dynamic function callOkHandler(): Void;
public dynamic function processCancel(): Void;
public dynamic function callCancelHandler(): Void;
public dynamic function processPageup(): Void;
public dynamic function processPagedown(): Void;
public dynamic function updateInputData(): Void;
public dynamic function updateCursor(): Void;

/**
 * Determines if the cursor is visible within
 * the window.
 * @returns {boolean}
 * @memberof Window_Selectable
 */
public dynamic function isCursorVisible(): Bool;

public dynamic function ensureCursorVisible(): Void;
public dynamic function callUpdateHelp(): Void;
public dynamic function updateHelp(): Void;
public dynamic function setHelpWindowItem(item: Any): Void;
public dynamic function isCurrentItemEnabled(): Bool;

/**
 * Draws all items within the window; this method
 * cals drawItem multiple times.
 * @memberof Window_Selectable
 */
public dynamic function drawAllItems(): Void;

public dynamic function drawItem(index: Int): Void;
public dynamic function clearItem(index: Int): Void;
public dynamic function redrawItem(index: Int): Void;
public dynamic function redrawCurrentItem(): Void;

/**
 * Refreshes the window contents.
 *
 * @memberof Window_Selectable
 */
public dynamic function refresh(): Void;
}
