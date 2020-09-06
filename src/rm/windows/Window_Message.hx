package rm.windows;

import rm.core.Bitmap;
import rm.types.RM.TextState;

@:expose("Window_Message")
@:native("Window_Message")
extern class Window_Message extends Window_Base {
 private var _positionType: Int;
 private var _background: Int;
 private var _waitCount: Int;
 private var _faceBitmap: Bitmap;
 private var _textState: TextState;
 private var _pauseSkip: Bool;
 private var _showFast: Bool;
 private var _lineShowFast: Bool;

 private var _goldWindow: Window_Gold;
 private var _choiceWindow: Window_ChoiceList;
 private var _numberWindow: Window_NumberInput;
 private var _itemWindow: Window_EventItem;

 #if compileMV
 public dynamic function initialize(): Void;

 public dynamic function initMembers(): Void;

 /**
  * Processes normal characters displayed within the message window.
  * @param textState
  */
 public dynamic function processNormalCharacter(textState: String): Void;
 #else
 #end

 /**
  * Returns the sub windows attached to the message window.
  *
  * @returns {Array<Window_Base>}
  * @memberof Window_Message
  */
 public dynamic function subWindows(): Array<Window_Base>;

 /**
  * Creates the sub windows for the message window.
  *
  * @memberof Window_Message
  */
 public dynamic function createSubWindows(): Void;

 /**
  * Returns the width of the window.
  *
  * @returns {number}
  * @memberof Window_Message
  */
 public dynamic function windowWidth(): Int;

 /**
  * Returns the height of the window.
  *
  * @returns {number}
  * @memberof Window_Message
  */
 public dynamic function windowHeight(): Int;

 /**
  * Returns the number of visible rows within the message window.
  *
  * @returns {number}
  * @memberof Window_Message
  */
 public dynamic function numVisibleRows(): Int;

 public dynamic function checkToNotClose(): Void;

 /**
  * Returns true if the message window can start.
  *
  * @returns {boolean}
  * @memberof Window_Message
  */
 public dynamic function canStart(): Bool;

 /**
  * Starts the displaying of the message within the message window.
  *
  * @memberof Window_Message
  */
 public dynamic function startMessage(): Void;

 /**
  * Updates the placement of the message window.
  *
  * @memberof Window_Message
  */
 public dynamic function updatePlacement(): Void;

 /**
  * Clears the message window flags for
  * fast text, pause skip, and line show fast
  */
 public dynamic function clearFlags(): Void;

 /**
  * Sets the background type of the window in terms
  * of transparency.
  * 0,
  * 1,
  * 2
  */
 public dynamic function setBackgroundType(backgroundType: Int): Void;

 /**
  * Processes the escape characters in the message window.
  * @param code
  * @param textState
  */
 public dynamic function processEscapeCharacter(code: String,
  textState: String): Void;

 /**
  * Starts the wait count for the message window.
  * @param count
  */
 public dynamic function startWait(count: Int): Void;

 /**
  * Starts the pause for the window.
  * Sets the wait count to 10 and pauses
  * the window.
  */
 public dynamic function startPause(): Void;

 /**
  * Updates the background of the message window.
  *
  * @memberof Window_Message
  */
 public dynamic function updateBackground(): Void;

 /**
  * Terminates the message and closes the gold and message window.
  *
  * @memberof Window_Message
  */
 public dynamic function terminateMessage(): Void;

 /**
  * Updates the wait of the message window.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public dynamic function updateWait(): Bool;

 public dynamic function updateLoading(): Bool;

 /**
  * Updates input when the message window is processing.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public dynamic function updateInput(): Bool;

 /**
  * Returns true if any sub window is active.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public dynamic function isAnySubWindowActive(): Bool;

 /**
  * Updates the message.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public dynamic function updateMessage(): Bool;

 /**
  * Handler for when there is no text left to display within
  * the message window.
  * @memberof Window_Message
  */
 public dynamic function onEndOfText(): Void;

 public dynamic function startInput(): Bool;

 /**
  * Returns true if the ok or cancel inputs have been triggered
  * multiple times.
  * @returns {Bool}
  * @memberof Window_Message
  */
 public dynamic function isTriggered(): Bool;

 /**
  * Returns true if the message window still has text
  * and settings have not changed.
  * @returns {Bool}
  * @memberof Window_Message
  */
 public dynamic function doesContinue(): Bool;

 /**
  * Returns true if the message window settings have been changed.
  *
  * @returns {Bool}
  * @memberof Window_Message
  */
 public dynamic function areSettingsChanged(): Bool;

 public dynamic function updateShowFast(): Void;
 public dynamic function newPage(textState: TextState): Void;
 public dynamic function loadMessageFace(): Void;
 public dynamic function drawMessageFace(): Void;
 public dynamic function newLineX(): Int;
 public dynamic function processNewLine(textState: TextState): Void;
 public dynamic function processNewPage(textState: TextState): Void;
}
