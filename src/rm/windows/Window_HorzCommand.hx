package rm.windows;

@:expose("Window_HorzCommand")
@:native("Window_HorzCommand")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_HorzCommand extends Window_Command {
 public function new(x: Float, y: Float): Void;
}
