package rm.abstracts.windows;

import rm.windows.Window_DebugRange;

@:forward
@:forwardStatics
abstract WindowDebugRange(Window_DebugRange) from Window_DebugRange
 to Window_DebugRange {
 public inline function new(x: Float, y: Float) {
  this = new Window_DebugRange(x, y);
 }
}
