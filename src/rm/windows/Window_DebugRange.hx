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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_DebugRange extends Window_Selectable {
 private static var lastTopRow: Float;
 private static var lastIndex: Float;

 private var _editWindow: Window_DebugEdit;

 public function new(x: Float, y: Float);

 public function windowWidth(): Float;
 public function windowHeight(): Float;
 public function mode(): String;
 public function topId(): Float;
 public function setEditWindow(editWindow: Window_DebugEdit): Void;
}
