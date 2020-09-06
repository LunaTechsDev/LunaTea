package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_DebugRange
 *
 * The window for selecting a block of switches/variables on the debug screen.
 * @class Window_DebugRange
 */
@:expose("Window_DebugRange")
@:native("Window_DebugRange")
extern class Window_DebugRange extends Window_Selectable {
 private static var lastTopRow: Int;
 private static var lastIndex: Int;

 private var _editWindow: Window_DebugEdit;

 public dynamic function new(x: Int, y: Int);

 public dynamic function windowWidth(): Int;
 public dynamic function windowHeight(): Int;
 public dynamic function mode(): String;
 public dynamic function topId(): Int;
 public dynamic function setEditWindow(editWindow: Window_DebugEdit): Void;
}
