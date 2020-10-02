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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_DebugEdit extends Window_Selectable {
 private var _mode: String;
 private var _topId: Float;

 public function new(x: Float, y: Float, width: Float);

 public function itemName(dataId: Float): String;
 public function itemStatus(dataId: String): String;
 public function setMode(mode: String): Void;
 public function setTopId(id: Float): Void;
 public function currentId(): Float;
 public function updateSwitch(): Void;
 public function updateVariable(): Void;
}
