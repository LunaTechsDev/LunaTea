package rm.objects;

/**
 * The game object class for game variables.
 */
@:expose("Game_Variables")
@:native("Game_Variables")
extern class Game_Variables {
 @:native("_data")
 public var __data: Array<Int>;
 private var _data: Array<Int>;

 public dynamic function new(): Void;

 public dynamic function initialize(): Void;

 public dynamic function clear(): Void;
 public dynamic function value(variableId: Int): Int;
 public dynamic function setValue(variableId: Int, value: Int): Void;
 public dynamic function onChange(): Void;
}
