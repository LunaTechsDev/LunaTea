package rm.objects;

/**
 * The game object class for game switches.
 *
 * @class Game_Switches
 */
@:expose("Game_Switches")
@:native("Game_Switches")
extern class Game_Switches {
 @:native("_data")
 public var __data: Array<Bool>;
 private var _data: Array<Bool>;

 public dynamic function new(): Void;
 public dynamic function initialize(): Void;
 public dynamic function clear(): Void;
 public dynamic function value(switchId: Int): Bool;
 public dynamic function setValue(switchId: Int, value: Bool): Void;
 public dynamic function onChange(): Void;
}
