package rm.objects;

import rm.types.LunaTea.ChoicePositionType;
import rm.types.LunaTea.ChocieBackgroundType;
import rm.types.LunaTea.ChoiceCancelType;
import rm.types.LunaTea.ChoiceDefaultType;
import rm.types.LunaTea.MessagePositionType;
import rm.types.LunaTea.MessageBackgroundType;

@:expose("Game_Message")
@:native("Game_Message")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Message {
 private var _texts: Array<String>;

 private var _choices: Array<String>;

 private var _faceName: String;

 private var _faceIndex: Float;

 private var _background: MessageBackgroundType;

 private var _positionType: MessagePositionType;

 private var _choiceDefaultType: ChoiceDefaultType;

 private var _choiceCancelType: ChoiceCancelType;

 private var _choiceBackground: ChocieBackgroundType;

 private var _choicePostionType: ChoicePositionType;

 private var _numInputVariableId: Float;

 private var _numInputMaxDigits: Float;

 private var _itemChoiceVariableId: Float;

 private var _itemChoiceItypeId: Float;

 private var _scrollMode: Bool;

 private var _scrollSpeed: Float;

 private var _scrollNoFast: Bool;

 private var _choiceCallback: (n: Float) -> Void;

 public function new(): Void;
 public function initialize(): Void;
 public function clear(): Void;
 public function choices(): Array<String>;

 /**
  * Returns the name of the face image used for the message.
  *
  * @returns {String}
  * @memberof Game_Message
  */
 public function faceName(): String;

 /**
  * Returns the face index within the face image to display the
  * correct face.
  * @returns {number}
  * @memberof Game_Message
  */
 public function faceIndex(): Float;

 /**
  * Returns the background associated with the message;
  * this is the background
  * @returns {number}
  * @memberof Game_Message
  */
 public function background(): Float;

 /**
  * Returns the current position type of the message window.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function positionType(): Float;

 public function choiceDefaultType(): Float;
 public function choiceCancelType(): Float;

 /**
  * Returns the background type of the choice window.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function choiceBackground(): Float;

 /**
  * Returns the position of the choice window.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function choicePositionType(): Float;

 /**
  * Returns the number input variable id.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function numInputVariableId(): Float;

 /**
  * Returns the number input maximum digits.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function numInputMaxDigits(): Float;

 /**
  * Returns the item choice variable id.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function itemChoiceVariableId(): Float;

 /**
  * Returns the item choice item type id.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function itemChoiceItypeId(): Float;

 /**
  * Returns true if the scroll mode is set to true.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function scrollMode(): Bool;

 /**
  * Returns the scroll speed.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function scrollSpeed(): Float;

 /**
  * Returns true if the scroll is set to not being fast.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function scrollNoFast(): Bool;

 /**
  * Adds text to the game message object.
  *
  * @param {String} text
  * @memberof Game_Message
  */
 public function add(text: String): Void;

 public function setFaceImage(faceName: String, faceIndex: Float): Void;

 /**
  * Sets the background of the message window;
  * options are 0 (fully opaque), 1 (transparent), 2 (invisible background).
  * The default is 0.
  * @param {number} background
  * @memberof Game_Message
  */
 public function setBackground(background: Float): Void;

 /**
  * Sets the position of the message window;
  * default is 2.
  * @param {number} positionType
  * @memberof Game_Message
  */
 public function setPositionType(positionType: Float): Void;

 /**
  * Sets the choices within the choice window;
  * sets the default and cancel choices for the window.
  * @param {Array<String>} choices
  * @param {number} defaultType
  * @param {number} cancelType
  * @memberof Game_Message
  */
 public function setChoices(choices: Array<String>, defaultType: Float,
  cancelType: Float): Void;

 public function setChoiceBackground(background: Float): Void;

 /**
  * Sets the position of the choice window associated with the
  * message window.
  * @param {number} positionType
  * @memberof Game_Message
  */
 public function setChoicePositionType(positionType: Float): Void;

 /**
  * Sets the number input and associates it with a variable id;
  * the max number of digits can also be set.
  * @param {number} variableId
  * @param {number} maxDigits
  * @memberof Game_Message
  */
 public function setNumberInput(variableId: Float, maxDigits: Float): Void;

 /**
  * Sets the choice and associates it with a variable id;
  * sets the itemtype id associated with the choice.
  * @param {number} variableId
  * @param {number} itemType
  * @memberof Game_Message
  */
 public function setItemChoice(variableId: Float, itemType: Float): Void;

 /**
  * Sets the scroll speed of the message window;
  * disable fast movement if noFast is set to true.
  * @param {number} speed
  * @param {boolean} noFast
  * @memberof Game_Message
  */
 public function setScroll(speed: Float, noFast: Bool): Void;

 /**
  * Sets a callback to be associated with a specific choice;
  * a callback is a JavaScript function that will be run when the
  * choice is selected.
  * @param {((n: number) => Void)} callback
  * @memberof Game_Message
  */
 public function setChoiceCallback(callback: ((n: Float) -> Void)): Void;

 public function onChoice(n: Float): Void;

 /**
  * Returns true if the game message object has text.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function hasText(): Bool;

 /**
  * Returns true if the game message object has a set of choices.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function isChoice(): Bool;

 /**
  * Returns true if the game message object has a number input attached.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function isNumberInput(): Bool;

 /**
  * Returns true if the game message object has an item choice attached.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function isItemChoice(): Bool;

 /**
  * Returns true if the game message object has text, choices, number input,
  * or item choice.
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function isBusy(): Bool;

 /**
  * Creates a new page for the text within the message window.
  *
  * @memberof Game_Message
  */
 public function newPage(): Void;

 /**
  * Returns all of the text contained within the message.
  *
  * @returns {String}
  * @memberof Game_Message
  */
 public function allText(): String;
}
