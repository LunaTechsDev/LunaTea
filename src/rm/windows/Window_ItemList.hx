package rm.windows;

import rm.types.RPG.Item;
import rm.core.Rectangle;

@:expose("Window_ItemList")
@:native("Window_ItemList")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_ItemList extends Window_Selectable {
 private var _category: String;

 #if compileMV
 public function new(x: Float, y: Float, width: Float, height: Float);
 public function initialize(x: Float, y: Float, width: Float,
  height: Float): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;

 /**
  * Returns the item at the current index of the window.
  * @return Item
  */
 public function item(): Item;

 /**
  * Returns item at the specific index.
  * @return Null<Item>
  */
 public function itemAt(): Null<Item>;
 #end

 public function needsNumber(): Bool;

 public function selectLast(): Void;

 public function makeItemList(): Void;

 public function numberWidth(): Float;
}
