package rm.abstracts.windows;

import rm.windows.Window_ShopNumber;

@:forward
@:forwardStatics
abstract WindowShopNumber(Window_ShopNumber) from Window_ShopNumber
 to Window_ShopNumber {
 public inline function new(x: Float, y: Float, height: Float) {
  this = new Window_ShopNumber(x, y, height);
 }
}
