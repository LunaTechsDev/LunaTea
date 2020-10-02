package rm.windows;

import rm.sprites.Sprite_Button;
import rm.types.RPG.BaseItem;

/**
 * -----------------------------------------------------------------------------
 * Window_ShopNumber
 *
 * The window for inputting quantity of items to buy or sell on the shop
 * screen.
 * @class Window_ShopNumber
 */
@:expose("Window_ShopNumber")
@:native("Window_ShopNumber")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_ShopNumber extends Window_Selectable {
 /**
  * The current item being bought/sold.
  *
  * @private var
  * @type {RPG.BaseItem}
  * @memberof Window_ShopNumber
  */
 private var _item: BaseItem;

 /**
  * Returns the maximum number of the item
  * that can be bought/sold.
  * @private var
  * @type {number}
  * @memberof Window_ShopNumber
  */
 private var _max: Float;

 /**
  * The current price of the items.
  *
  * @private var
  * @type {number}
  * @memberof Window_ShopNumber
  */
 private var _price: Float;

 private var _number: Float;

 /**
  * Returns the currency unit of the game.
  *
  * @private var
  * @type {String}
  * @memberof Window_ShopNumber
  */
 private var _currencyUnit: String;

 /**
  * The buttons to input quantity
  * for the quantity of the item to be bought/sold.
  * @private var
  * @type {Array<Sprite_Button>}
  * @memberof Window_ShopNumber
  */
 private var _buttons: Array<Sprite_Button>;

 /**
  * Creates an instance of Window_ShopNumber.
  * @param {number} x
  * @param {number} y
  * @param {number} height
  * @memberof Window_ShopNumber
  */
 public function new(x: Float, y: Float, height: Float);

 /**
  * Returns the width of the window.
  *
  * @returns {number}
  * @memberof Window_ShopNumber
  */
 public function windowWidth(): Float;

 public function number(): Float;

 public function setup(item: BaseItem, max: Float, price: Float): Void;

 public function setCurrencyUnit(currencyUnit: String): Void;

 public function createButtons(): Void;

 public function placeButtons(): Void;

 public function updateButtonsVisiblity(): Void;

 /**
  * Shows the quantity input buttons.
  *
  * @memberof Window_ShopNumber
  */
 public function showButtons(): Void;

 /**
  * Hides the quantity input buttons.
  *
  * @memberof Window_ShopNumber
  */
 public function hideButtons(): Void;

 public function drawMultiplicationSign(): Void;

 /**
  * Draws the number.
  */
 public function drawNumber(): Void;

 /**
  * Draws the total price of the selected
  * quantity of item.
  * @memberof Window_ShopNumber
  */
 public function drawTotalPrice(): Void;

 /**
  * Item y position.
  * @return Float
  */
 public function itemY(): Float;

 /**
  * Y position of the price.
  * @return Float
  */
 public function priceY(): Float;

 /**
  * Y position of the button.
  * @return Float
  */
 public function buttonY(): Float;

 /**
  * Returns the width of the cursor.
  *
  * @returns {number}
  * @memberof Window_ShopNumber
  */
 public function cursorWidth(): Float;

 /**
  * Cursor x position.
  * @return Float
  */
 public function cursorX(): Float;

 /**
  * The max number of digits for the shop number display
  * window.
  */
 public function maxDigits(): Float;

 /**
  * Processes the change in quantity.
  *
  * @memberof Window_ShopNumber
  */
 public function processNumberChange(): Void;

 /**
  * Changes the quantity, given a number.
  *
  * @param {number} amount
  * @memberof Window_ShopNumber
  */
 public function changeNumber(amount: Float): Void;

 /**
  * Handle for button up event.
  */
 public function onButtonUp(): Void;

 /**
  * Handler for button up event 2.
  */
 public function onButtonUp2(): Void;

 /**
  * Handler for button down event.
  */
 public function onButtonDown(): Void;

 /**
  * Handler for button down event.
  */
 public function onButtonDown2(): Void;

 /**
  * Handler for button ok event.
  */
 public function onButtonOk(): Void;
}
