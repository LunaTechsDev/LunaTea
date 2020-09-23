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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
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
 public function commandWindowRect(): Rectangle;
 public function dummyWindowRect(): Rectangle;
 public function numberWindowRect(): Rectangle;
 public function statusWindowRect(): Rectangle;
 public function buyWindowRect(): Rectangle;
 public function categoryWindowRect(): Rectangle;
 public function sellWindowRect(): Rectangle;
 #end

 // Redefinition
 //  private var _helpWindow: Window_Help;
 public function prepare(goods: Array<Array<Any>>, purchaseOnly: Bool): Void;

 /**
  * Creates the gold window on the shop scene.
  *
  * @memberof Scene_Shop
  */
 public function createGoldWindow(): Void;

 /**
  * Creates the command window for buying or selling.
  *
  * @memberof Scene_Shop
  */
 public function createCommandWindow(): Void;

 public function createDummyWindow(): Void;

 /**
  * Creates the number input window on the shop scene.
  *
  * @memberof Scene_Shop
  */
 public function createNumberWindow(): Void;

 /**
  * Creates the status window.
  *
  * @memberof Scene_Shop
  */
 public function createStatusWindow(): Void;

 /**
  * Creates the buy window.
  *
  * @memberof Scene_Shop
  */
 public function createBuyWindow(): Void;

 /**
  * Creates the category window.
  *
  * @memberof Scene_Shop
  */
 public function createCategoryWindow(): Void;

 /**
  * Creates the sell window.
  *
  * @memberof Scene_Shop
  */
 public function createSellWindow(): Void;

 /**
  * Activates the buy window within the shop scene.
  *
  * @memberof Scene_Shop
  */
 public function activateBuyWindow(): Void;

 /**
  * Activates the sell window within the shop scene.
  *
  * @memberof Scene_Shop
  */
 public function activateSellWindow(): Void;

 /**
  * Handler for pressing buy within the shop scene.
  *
  * @memberof Scene_Shop
  */
 public function commandBuy(): Void;

 /**
  * Handler for pressing sell within the shop scene.
  *
  * @memberof Scene_Shop
  */
 public function commandSell(): Void;

 /**
  * Handler for when buying is confirmed.
  *
  * @memberof Scene_Shop
  */
 public function onBuyOk(): Void;

 /**
  * Handler for when buying is cancelled.
  *
  * @memberof Scene_Shop
  */
 public function onBuyCancel(): Void;

 public function onCategoryOk(): Void;
 public function onCategoryCancel(): Void;
 public function onSellOk(): Void;
 public function onSellCancel(): Void;
 public function onNumberOk(): Void;
 public function onNumberCancel(): Void;

 /**
  * Amount of item to buy.
  * @param number
  */
 public function doBuy(number: Int): Void;

 /**
  * Amount of item to sell.
  * @param number
  */
 public function doSell(number: Int): Void;

 public function endNumberInput(): Void;

 /**
  * Returns the maximum number bought.
  *
  * @returns {number}
  * @memberof Scene_Shop
  */
 public function maxBuy(): Int;

 /**
  * Returns the maximum number sold.
  *
  * @returns {number}
  * @memberof Scene_Shop
  */
 public function maxSell(): Int;

 /**
  * Returns the player gold within
  * the shop scene.
  * @returns {number}
  * @memberof Scene_Shop
  */
 public function money(): Money;

 /**
  * Returns the currency unit of the
  * game within the shop scene.
  * @returns {string}
  * @memberof Scene_Shop
  */
 public function currencyUnit(): String;

 /**
  * Returns the buying price for the current item.
  *
  * @returns {number}
  * @memberof Scene_Shop
  */
 public function buyingPrice(): Money;

 /**
  * Returns the selling price for the current item.
  *
  * @returns {number}
  * @memberof Scene_Shop
  */
 public function sellingPrice(): Money;
}
