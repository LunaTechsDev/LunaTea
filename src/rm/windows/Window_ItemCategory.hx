package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_ItemCategory
 *
 * The window for selecting a category of items on the item and shop screens.
 * @class Window_ItemCategory
 */
@:expose("Window_ItemCategory")
@:native("Window_ItemCategory")
extern class Window_ItemCategory extends Window_HorzCommand {
 @:native("_itemWindow")
 public var __itemWindow: Window_ItemList;
 private var _itemWindow: Window_ItemList;

 /**
  * Sets the item window on the item category window.
  *
  * @param {Window_ItemList} itemWindow
  * @memberof Window_ItemCategory
  */
 public dynamic function setItemWindow(itemWindow: Window_ItemList): Void;
}
