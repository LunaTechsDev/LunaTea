package rm.windows;

import rm.types.RPG.Item;
import rm.core.Rectangle;

@:expose("Window_ItemList")
@:native("Window_ItemList")
extern class Window_ItemList extends Window_Selectable {
 private var _category: String;

 #if compileMV
 public dynamic function new(x: Int, y: Int, width: Int, height: Int);
 public dynamic function initialize(x: Int, y: Int, width: Int,
  height: Int): Void;
 #else
 public dynamic function new(rect: Rectangle);
 public dynamic function initialize(rect: Rectangle): Void;

 /**
  * Returns the item at the current index of the window.
  * @return Item
  */
 public dynamic function item(): Item;

 /**
  * Returns item at the specific index.
  * @return Null<Item>
  */
 public dynamic function itemAt(): Null<Item>;
 #end

 public dynamic function needsNumber(): Bool;

 public dynamic function selectLast(): Void;

 public dynamic function makeItemList(): Void;

 public dynamic function numberWidth(): Int;
}
