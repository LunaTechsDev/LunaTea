package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_Scrollable;

#if !compileMV
abstract WindowScrollable(Window_Scrollable) from Window_Scrollable
 to Window_Scrollable {
 public inline function new(x: Float, y: Float, width: Float, height: Float) {
  var rect = new Rectangle(x, y, width, height);
  this = new Window_Scrollable(rect);
 }
}
#else
#end
