package rm.abstracts.windows;

import rm.windows.Window_ShopBuy;

@:forward
@:forwardStatics
abstract WindowShopBuy(Window_ShopBuy) from Window_ShopBuy to Window_ShopBuy {
 public inline function new(x: Float, y: Float, height: Float,
   shopGoods: Array<Array<Any>>) {
  this = new Window_ShopBuy(x, y, height, shopGoods);
 }
}
