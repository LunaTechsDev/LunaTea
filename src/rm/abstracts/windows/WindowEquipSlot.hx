package rm.abstracts.windows;

import rm.windows.Window_EquipSlot;

@:forward
@:forwardStatics
abstract WindowEquipSlot(Window_EquipSlot) from Window_EquipSlot
 to Window_EquipSlot {
 public inline function new(x: Float, y: Float, width: Float, height: Float) {
  this = new Window_EquipSlot(x, y, width, height);
 }
}
