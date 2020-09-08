package rm.objects;

/**
 * The game object class for game variables.
 */
@:expose("Game_Variables")
@:native("Game_Variables")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Variables {
 /**
  * List of all active game variables in the game and their values.
  */
 private var _data: Array<Int>;

 public function new(): Void;

 public function initialize(): Void;

 public function clear(): Void;
 public function value(variableId: Int): Int;
 public function setValue(variableId: Int, value: Int): Void;
 public function onChange(): Void;
}
