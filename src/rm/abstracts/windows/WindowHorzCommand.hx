package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_HorzCommand;

@:forward
@:forwardStatics
abstract WindowHorzCommand(Window_HorzCommand) from Window_HorzCommand
 to Window_HorzCommand {
 public inline function new(x: Float, y: Float, ?width: Float,
   ?height: Float) {
  #if compileMV
  this = new Window_HorzCommand(x, y);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_HorzCommand(rect);
  #end
 }

 public inline function raw(): Window_HorzCommand {
  return this;
 }
}
