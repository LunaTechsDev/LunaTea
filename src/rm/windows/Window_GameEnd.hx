package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_GameEnd
 *
 * The window for selecting "Go to Title" on the game end screen.
 * @class Window_GameEnd
 */
@:expose("Window_GameEnd")
@:native("Window_GameEnd")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_GameEnd extends Window_Command {
 public function new();

 public function updatePlacement(): Void;
}
