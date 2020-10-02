package rm.abstracts.windows;

import rm.windows.Window_ShopSell;

@:forward
@:forwardStatics
abstract WindowShopSell(Window_ShopSell) from Window_ShopSell
 to Window_ShopSell {
 public inline function new(x: Float, y: Float, width: Float, height: Float) {
  this = new Window_ShopSell(x, y, width, height);
 }
}
