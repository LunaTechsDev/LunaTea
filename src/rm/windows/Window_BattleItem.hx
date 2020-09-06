package rm.windows;

import rm.core.Rectangle;
import rm.types.RPG.UsableItem;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleItem
 *
 * The window for selecting an item to use on the battle screen.
 * @class Window_BattleItem
 */
@:expose("Window_BattleItem")
@:native("Window_BattleItem")
extern class Window_BattleItem extends Window_ItemList {
 #if compileMV
 public dynamic function new(x: Int, y: Int, width: Int, height: Int);
 public dynamic function initialize(x: Int, y: Int, width: Int,
  height: Int): Void;
 #else
 public dynamic function new(rect: Rectangle);
 public dynamic function initialize(rect: Rectangle): Void;
 #end

 public dynamic function includes(item: UsableItem): Bool;
}
