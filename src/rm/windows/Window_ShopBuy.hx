package rm.windows;

import rm.types.RPG.BaseItem;

/**
 * -----------------------------------------------------------------------------
 * Window_ShopBuy
 *
 * The window for selecting an item to buy on the shop screen.
 * @class Window_ShopBuy
 */
@:expose("Window_ShopBuy")
@:native("Window_ShopBuy")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_ShopBuy extends Window_Selectable {
 private var _shopGoods: Array<Array<Any>>;
 private var _money: Float;
 private var _data: Array<BaseItem>;
 private var _price: Array<Float>;
 private var _statusWindow: Window_ShopStatus;

 /**
  * Creates an instance of Window_ShopBuy.
  * @param {number} x
  * @param {number} y
  * @param {number} height
  * @param {Array<Array<any>>} shopGoods
  * @memberof Window_ShopBuy
  */
 public function new(x: Float, y: Float, height: Float,
  shopGoods: Array<Array<Any>>);

 /**
  * Returns the width of the window.
  *
  * @returns {number}
  * @memberof Window_ShopBuy
  */
 public function windowWidth(): Float;

 /**
  * Returns the current item of the window.
  *
  * @returns {RPG.BaseItem}
  * @memberof Window_ShopBuy
  */
 public function item(): BaseItem;

 public function setMoney(money: Float): Void;

 /**
  * Returns the p rice of an item
  * @param item
  * @return Float
  */
 public function price(item: BaseItem): Float;

 /**
  * Checks if the current item is enabled (can be bought/sold).
  *
  * @param {RPG.BaseItem} item
  * @returns {boolean}
  * @memberof Window_ShopBuy
  */
 public function isEnabled(item: BaseItem): Bool;

 /**
  * Creates a list of items for the shop window.
  *
  * @memberof Window_ShopBuy
  */
 public function makeItemList(): Void;

 /**
  * Sets the status window for the shop buy window.
  * @param statusWindow
  */
 public function setStatusWindow(statusWindow: Window_ShopStatus): Void;
}
