package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_StatusBase;

#if !compileMV
abstract WindowStatusBase(Window_StatusBase) from Window_StatusBase
 to Window_StatusBase {
 public inline function new(x: Float, y: Float, width: Float, height: Float) {
  var rect = new Rectangle(x, y, width, height);
  this = new Window_StatusBase(rect);
 }
}
#else
#end
