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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_BattleItem extends Window_ItemList {
 #if compileMV
 public function new(x: Float, y: Float, width: Float, height: Float);
 public function initialize(x: Float, y: Float, width: Float,
  height: Float): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end

 public function includes(item: UsableItem): Bool;
}
