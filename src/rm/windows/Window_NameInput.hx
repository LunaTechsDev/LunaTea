package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_NameInput
 *
 * The window for selecting text characters on the name input screen.
 * @class Window_NameInputt
 */
@:expose("Window_NameInput")
@:native("Window_NameInput")
extern class Window_NameInput extends Window_Selectable {
 public static var LATIN1: Array<String>;
 public static var LATIN2: Array<String>;
 public static var RUSSIA: Array<String>;
 public static var JAPAN1: Array<String>;
 public static var JAPAN2: Array<String>;
 public static var JAPAN3: Array<String>;

 private var _editWindow: Window_NameEdit;
 private var _page: Int;

 public dynamic function new(editWindow: Window_NameEdit);

 /**
  * Returns the window height.
  *
  * @returns {number}
  * @memberof Window_NameInput
  */
 public dynamic function windowHeight(): Int;

 /**
  * Returns the table of characters to input.
  *
  * @returns {Array<Array<String>>}
  * @memberof Window_NameInput
  */
 public dynamic function table(): Array<Array<String>>;

 public dynamic function character(): String;
 public dynamic function isPageChange(): Bool;
 public dynamic function isOk(): Bool;
 public dynamic function processJump(): Void;
 public dynamic function processBack(): Void;
 public dynamic function onNameAdd(): Void;
 public dynamic function onNameOk(): Void;
}
