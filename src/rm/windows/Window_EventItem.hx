package rm.windows;

import rm.types.RPG.BaseItem;

/**
 * -----------------------------------------------------------------------------
 * Window_EventItem
 *
 * The window used for the event command [Select Item].
 * @class Window_EventItem
 */
@:expose("Window_EventItem")
@:native("Window_EventItem")
extern class Window_EventItem extends Window_ItemList {
 private var _messageWindow: Window_Message;

 public dynamic function new(messageWindow: Window_Message);

 /**
  * Returns the height off the window.
  *
  * @returns {number}
  * @memberof Window_EventItem
  */
 public dynamic function windowHeight(): Int;

 /**
  * Returns the number of visible rows.
  *
  * @returns {number}
  * @memberof Window_EventItem
  */
 public dynamic function numVisibleRows(): Int;

 /**
  * Starts the event item window.
  *
  * @memberof Window_EventItem
  */
 public dynamic function start(): Void;

 public dynamic function updatePlacement(): Void;
 public dynamic function includes(item: BaseItem): Bool;
 public dynamic function isEnabled(item: BaseItem): Bool;
 public dynamic function onOk(): Void;
 public dynamic function onCancel(): Void;
}
