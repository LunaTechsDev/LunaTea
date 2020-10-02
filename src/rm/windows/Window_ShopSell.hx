package rm.windows;

import rm.types.RPG.BaseItem;

/**
 * -----------------------------------------------------------------------------
 * Window_ShopSell
 *
 * The window for selecting an item to sell on the shop screen.
 * @class Window_ShopSell
 */
@:expose("Window_ShopSell")
@:native("Window_ShopSell")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_ShopSell extends Window_ItemList {
 public function new(x: Float, y: Float, width: Float, height: Float);

 /**
  * Determines if the item is sellable, otherwise, greyed out.
  *
  * @param {RPG.BaseItem} item
  * @returns {boolean}
  * @memberof Window_ShopSell
  */
 public function isEnabled(item: BaseItem): Bool;
}
