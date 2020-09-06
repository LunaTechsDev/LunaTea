package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_TitleCommand
 *
 * The window for selecting New Game/Continue on the title screen.
 * @class Window_TitleCommand
 */
@:expose("Window_TitleCommand")
@:native("Window_TitleCommand")
extern class Window_TitleCommand extends Window_Command {
 private static var _lastCommandSymbol: String;

 public dynamic function updatePlacement(): Void;
 public dynamic function isContinueEnabled(): Bool;
 public dynamic function initCommandPosition(): Void;
 public dynamic function selectLast(): Void;
}
