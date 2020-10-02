package rm.abstracts.windows;

import rm.windows.Window_ShopStatus;

@:forward
@:forwardStatics
abstract WindowShopStatus(Window_ShopStatus) from Window_ShopStatus
 to Window_ShopStatus {
 public inline function new(x: Float, y: Float, width: Float, height: Float) {
  this = new Window_ShopStatus(x, y, width, height);
 }
}
