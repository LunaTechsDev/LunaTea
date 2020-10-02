package rm.abstracts.windows;

import rm.windows.Window_HorzCommand;

@:forward
@:forwardStatics
abstract WindowHorzCommand(Window_HorzCommand) from Window_HorzCommand
 to Window_HorzCommand {
 public inline function new(x: Float, y: Float) {
  this = new Window_HorzCommand(x, y);
 }

 public inline function raw(): Window_HorzCommand {
  return this;
 }
}
