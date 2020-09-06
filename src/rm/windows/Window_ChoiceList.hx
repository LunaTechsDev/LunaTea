package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_ChoiceList
 *
 * The window used for the event command [Show Choices].
 * @class Window_ChoiceList
 */
@:expose("Window_ChoiceList")
@:native("Window_ChoiceList")
extern class Window_ChoiceList extends Window_Command {
 private var _messageWindow: Window_Message;
 private var _background: Int;

 #if compileMV
 public dynamic function new(messageWindow: Window_Message);
 public dynamic function initialize(messageWindow: Window_Message): Void;
 #else
 public dynamic function new();
 public dynamic function initialize(): Void;
 public dynamic function setMessageWindow(messageWindow: Window_Message): Void;
 public dynamic function windowY(): Int;
 public dynamic function windowX(): Int;
 public dynamic function needsCancelButton(): Bool;
 public dynamic function maxLines(): Int;
 #end

 public dynamic function start(): Void;
 public dynamic function selectDefault(): Void;
 public dynamic function updatePlacement(): Void;
 public dynamic function updateBackground(): Void;
 public dynamic function maxChoiceWidth(): Int;
 public dynamic function textWidthEx(text: String): Int;
}
