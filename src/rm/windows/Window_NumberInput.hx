package rm.windows;

import rm.sprites.Sprite_Button;

@:expose("Window_NumberInput")
@:native("Window_NumberInput")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_NumberInput extends Window_Selectable {
 private var _messageWindow: Window_Message;
 private var _number: Float;
 private var _maxDigits: Float;
 private var _buttons: Array<Sprite_Button>;

 public function new(messageWindow: Window_Message);

 public function start(): Void;
 public function updatePlacement(): Void;

 /**
  * Returns the window width.
  *
  * @returns {number}
  * @memberof Window_NumberInput
  */
 public function windowWidth(): Float;

 /**
  * Returns the window height.
  *
  * @returns {number}
  * @memberof Window_NumberInput
  */
 public function windowHeight(): Float;

 /**
  * Returns the item width.
  *
  * @returns {number}
  * @memberof Window_NumberInput
  */
 public function itemWidth(): Float;

 /**
  * Creates the number input window buttons.
  *
  * @memberof Window_NumberInput
  */
 public function createButtons(): Void;

 /**
  * Places the number input window buttons.
  *
  * @memberof Window_NumberInput
  */
 public function placeButtons(): Void;

 public function updateButtonsVisiblity(): Void;
 public function showButtons(): Void;
 public function hideButtons(): Void;
 public function buttonY(): Float;
 public function processDigitChange(): Void;
 public function changeDigit(up: Bool): Void;
 public function onButtonUp(): Void;
 public function onButtonDown(): Void;
 public function onButtonOk(): Void;
}
