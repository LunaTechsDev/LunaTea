package rm.windows;

import haxe.extern.EitherType;

@:expose("Window_Options")
@:native("Window_Options")
extern class Window_Options extends Window_Command {
 public dynamic function new();

 public dynamic function updatePlacement(): Void;
 public dynamic function addGeneralOptions(): Void;
 public dynamic function addVolumeOptions(): Void;
 public dynamic function statusWidth(): Float;
 public dynamic function statusText(index: Int): String;
 public dynamic function isVolumeSymbol(symbol: String): Bool;
 public dynamic function booleanStatusText(value: Bool): String;
 public dynamic function volumeStatusText(value: Float): String;
 public dynamic function volumeOffset(): Float;
 public dynamic function changeValue(symbol: String,
  value: EitherType<Bool, Float>): Void;
 public dynamic function getConfigValue(symbol: String): Bool;
 public dynamic function setConfigValue(symbol: String,
  volume: EitherType<Bool, Float>): Void;
}
