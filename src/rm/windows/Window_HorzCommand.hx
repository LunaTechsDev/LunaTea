package rm.windows;

import rm.core.Rectangle;

@:expose("Window_HorzCommand")
@:native("Window_HorzCommand")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_HorzCommand extends Window_Command {
 #if compileMV
 public function new(x: Float, y: Float): Void;
 #else
 public function new(rect: Rectangle): Void;
 #end
}
