package rm.windows;

import rm.core.Rectangle;

#if !compileMV
/**
 * The window for displaying a speaker name above
 * the message window.
 */
@:expose("Window_NameBox")
@:native("Window_NameBox")
extern class Window_NameBox extends Window_Base {
 /**
  * Sets the current message window.
  * @param messageWindow
  */
 public dynamic function setMessageWindow(messageWindow: Window_Message): Void;

 /**
  * Sets the name in the message window box.
  * @param name
  */
 public dynamic function setName(name: String): Void;

 /**
  * Clears the name in the message box.
  */
 public dynamic function clear(): Void;

 /**
  * Starts the name box window.
  */
 public dynamic function start(): Void;

 /**
  * Updates the placement of the name box window.
  */
 public dynamic function updatePlacement(): Void;

 /**
  * Updates the name box background
  * to match game message background.
  * ```js
  *  this.setBackgroundType($gameMessage.background());
  * ```
  */
 public dynamic function updateBackground(): Void;

 /**
  * Returns the window width based on the text size.
  * @returns Int
  */
 public dynamic function windowWidth(): Int;

 /**
  * Returns the window height based on
  * the fitting height.
  * @return Int
  */
 public dynamic function windowHeight(): Int;

 /**
  * Refreshes the window and
  * redraws the text.
  * ```js
  * const rect = this.baseTextRect();
    this.contents.clear();
    this.drawTextEx(this._name, rect.x, rect.y, rect.width);
  * ```
  * @return Int
  */
 public dynamic function refresh(): Void;
}
#else
@:expose("Window_NameBox")
@:native("Window_NameBox")
class Window_NameBox extends Window_Base {
 public dynamic function new() {
  // TODO: Fix and update with proper coordinates
  super(0, 0, 100, 100);
 }

 public dynamic function baseTextRect() {
  var rect = new Rectangle(0, 0, 100, 100);
  return rect;
 }
}
#end
