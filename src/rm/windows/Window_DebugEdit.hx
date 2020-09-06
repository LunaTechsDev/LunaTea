package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_DebugEdit
 *
 * The window for displaying switches and variables on the debug screen.
 * @class Window_DebugEdit
 */
@:expose("Window_DebugEdit")
@:native("Window_DebugEdit")
extern class Window_DebugEdit extends Window_Selectable {
 private var _mode: String;
 private var _topId: Int;

 public dynamic function new(x: Int, y: Int, width: Int);

 public dynamic function itemName(dataId: Int): String;
 public dynamic function itemStatus(dataId: String): String;
 public dynamic function setMode(mode: String): Void;
 public dynamic function setTopId(id: Int): Void;
 public dynamic function currentId(): Int;
 public dynamic function updateSwitch(): Void;
 public dynamic function updateVariable(): Void;
}
