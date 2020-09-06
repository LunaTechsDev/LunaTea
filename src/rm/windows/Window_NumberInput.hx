package rm.windows;

import rm.sprites.Sprite_Button;

@:expose("Window_NumberInput")
@:native("Window_NumberInput")
extern class Window_NumberInput extends Window_Selectable {
 private var _messageWindow: Window_Message;
 private var _number: Int;
 private var _maxDigits: Int;
 private var _buttons: Array<Sprite_Button>;

 public dynamic function new(messageWindow: Window_Message);

 public dynamic function start(): Void;
 public dynamic function updatePlacement(): Void;

 /**
  * Returns the window width.
  *
  * @returns {number}
  * @memberof Window_NumberInput
  */
 public dynamic function windowWidth(): Int;

 /**
  * Returns the window height.
  *
  * @returns {number}
  * @memberof Window_NumberInput
  */
 public dynamic function windowHeight(): Int;

 /**
  * Returns the item width.
  *
  * @returns {number}
  * @memberof Window_NumberInput
  */
 public dynamic function itemWidth(): Int;

 /**
  * Creates the number input window buttons.
  *
  * @memberof Window_NumberInput
  */
 public dynamic function createButtons(): Void;

 /**
  * Places the number input window buttons.
  *
  * @memberof Window_NumberInput
  */
 public dynamic function placeButtons(): Void;

 public dynamic function updateButtonsVisiblity(): Void;
 public dynamic function showButtons(): Void;
 public dynamic function hideButtons(): Void;
 public dynamic function buttonY(): Int;
 public dynamic function processDigitChange(): Void;
 public dynamic function changeDigit(up: Bool): Void;
 public dynamic function onButtonUp(): Void;
 public dynamic function onButtonDown(): Void;
 public dynamic function onButtonOk(): Void;
}
