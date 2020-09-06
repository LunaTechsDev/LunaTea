package rm.scenes;

import rm.core.Rectangle;
import rm.types.LunaTea.Money;
import rm.windows.Window_ItemCategory;
import rm.windows.Window_ShopSell;
import rm.windows.Window_ShopBuy;
import rm.windows.Window_ShopStatus;
import rm.windows.Window_ShopNumber;
import rm.types.RPG.BaseItem;
import rm.windows.Window_Base;
import rm.windows.Window_ShopCommand;
import rm.windows.Window_Gold;

/**
 * Scene class of the shop screen.
 */
@:expose("Scene_Shop")
@:native("Scene_Shop")
extern class Scene_Shop extends Scene_MenuBase {
 private var _goods: Array<Array<Any>>;
 private var _purchaseOnly: Bool;
 private var _item: BaseItem;
 private var _goldWindow: Window_Gold;
 private var _commandWindow: Window_ShopCommand;
 private var _dummyWindow: Window_Base;
 private var _numberWindow: Window_ShopNumber;
 private var _statusWindow: Window_ShopStatus;
 private var _buyWindow: Window_ShopBuy;
 private var _categoryWindow: Window_ItemCategory;
 private var _sellWindow: Window_ShopSell;

 #if !compileMV
 public dynamic function commandWindowRect(): Rectangle;
 public dynamic function dummyWindowRect(): Rectangle;
 public dynamic function numberWindowRect(): Rectangle;
 public dynamic function statusWindowRect(): Rectangle;
 public dynamic function buyWindowRect(): Rectangle;
 public dynamic function categoryWindowRect(): Rectangle;
 public dynamic function sellWindowRect(): Rectangle;
 #end

 // Redefinition
 //  private var _helpWindow: Window_Help;
 public dynamic function prepare(goods: Array<Array<Any>>,
  purchaseOnly: Bool): Void;

 /**
  * Creates the gold window on the shop scene.
  *
  * @memberof Scene_Shop
  */
 public dynamic function createGoldWindow(): Void;

 /**
  * Creates the command window for buying or selling.
  *
  * @memberof Scene_Shop
  */
 public dynamic function createCommandWindow(): Void;

 public dynamic function createDummyWindow(): Void;

 /**
  * Creates the number input window on the shop scene.
  *
  * @memberof Scene_Shop
  */
 public dynamic function createNumberWindow(): Void;

 /**
  * Creates the status window.
  *
  * @memberof Scene_Shop
  */
 public dynamic function createStatusWindow(): Void;

 /**
  * Creates the buy window.
  *
  * @memberof Scene_Shop
  */
 public dynamic function createBuyWindow(): Void;

 /**
  * Creates the category window.
  *
  * @memberof Scene_Shop
  */
 public dynamic function createCategoryWindow(): Void;

 /**
  * Creates the sell window.
  *
  * @memberof Scene_Shop
  */
 public dynamic function createSellWindow(): Void;

 /**
  * Activates the buy window within the shop scene.
  *
  * @memberof Scene_Shop
  */
 public dynamic function activateBuyWindow(): Void;

 /**
  * Activates the sell window within the shop scene.
  *
  * @memberof Scene_Shop
  */
 public dynamic function activateSellWindow(): Void;

 /**
  * Handler for pressing buy within the shop scene.
  *
  * @memberof Scene_Shop
  */
 public dynamic function commandBuy(): Void;

 /**
  * Handler for pressing sell within the shop scene.
  *
  * @memberof Scene_Shop
  */
 public dynamic function commandSell(): Void;

 /**
  * Handler for when buying is confirmed.
  *
  * @memberof Scene_Shop
  */
 public dynamic function onBuyOk(): Void;

 /**
  * Handler for when buying is cancelled.
  *
  * @memberof Scene_Shop
  */
 public dynamic function onBuyCancel(): Void;

 public dynamic function onCategoryOk(): Void;
 public dynamic function onCategoryCancel(): Void;
 public dynamic function onSellOk(): Void;
 public dynamic function onSellCancel(): Void;
 public dynamic function onNumberOk(): Void;
 public dynamic function onNumberCancel(): Void;

 /**
  * Amount of item to buy.
  * @param number
  */
 public dynamic function doBuy(number: Int): Void;

 /**
  * Amount of item to sell.
  * @param number
  */
 public dynamic function doSell(number: Int): Void;

 public dynamic function endNumberInput(): Void;

 /**
  * Returns the maximum number bought.
  *
  * @returns {number}
  * @memberof Scene_Shop
  */
 public dynamic function maxBuy(): Int;

 /**
  * Returns the maximum number sold.
  *
  * @returns {number}
  * @memberof Scene_Shop
  */
 public dynamic function maxSell(): Int;

 /**
  * Returns the player gold within
  * the shop scene.
  * @returns {number}
  * @memberof Scene_Shop
  */
 public dynamic function money(): Money;

 /**
  * Returns the currency unit of the
  * game within the shop scene.
  * @returns {string}
  * @memberof Scene_Shop
  */
 public dynamic function currencyUnit(): String;

 /**
  * Returns the buying price for the current item.
  *
  * @returns {number}
  * @memberof Scene_Shop
  */
 public dynamic function buyingPrice(): Money;

 /**
  * Returns the selling price for the current item.
  *
  * @returns {number}
  * @memberof Scene_Shop
  */
 public dynamic function sellingPrice(): Money;
}
