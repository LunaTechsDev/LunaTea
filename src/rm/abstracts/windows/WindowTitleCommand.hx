package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_TitleCommand;

@:forward
@:forwardStatics
abstract WindowTitleCommand(Window_TitleCommand) from Window_TitleCommand
 to Window_TitleCommand {
 public inline function new(x: Int, y: Int, ?width: Int,
   ?height: Int): Window_TitleCommand {
  #if compileMV
  this = new Window_TitleCommand(x, y);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_TitleCommand(rect);
  #end
 }

 public inline function raw(): Window_TitleCommand {
  return this;
 }
}
