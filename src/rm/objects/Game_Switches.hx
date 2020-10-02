package rm.objects;

/**
 * The game object class for game switches.
 *
 * @class Game_Switches
 */
@:expose("Game_Switches")
@:native("Game_Switches")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Switches {
 /**
  * List of all the game switches in game.
  */
 private var _data: Array<Bool>;

 public function new(): Void;
 public function initialize(): Void;
 public function clear(): Void;
 public function value(switchId: Float): Bool;
 public function setValue(switchId: Float, value: Bool): Void;
 public function onChange(): Void;
}
