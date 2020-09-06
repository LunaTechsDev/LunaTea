package rm.windows;

import rm.core.Rectangle;
import rm.types.RPG.BaseItem;

@:expose("Window_Help")
@:native("Window_Help")
extern class Window_Help extends Window_Base {
 /**
  * The text that is displayed within the window.
  *
  * @protected
  * @type {string}
  * @memberof Window_Help
  */
 private var _text: String;

 #if compileMV
 /**
  * Creates an instance of Window_Help.
  * @param {number} numLines
  * @memberof Window_Help
  */
 public dynamic function new(numLines: Int): Void;
 #else
 public dynamic function new(rect: Rectangle): Void;
 #end

 /**
  * Sets the _text property of the window;
  * this text will be displayed within the window.
  * @param {string} text
  * @memberof Window_Help
  */
 public dynamic function setText(text: String): Void;

 public dynamic function clear(): Void;

 /**
  * Sets the current item of the help window.
  *
  * @param {RPG.BaseItem} item
  * @memberof Window_Help
  */
 public dynamic function setItem(item: BaseItem): Void;
}
