package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_ItemCategory;

@:forward
@:forwardStatics
abstract WindowItemCategory(Window_ItemCategory) from Window_ItemCategory
 to Window_ItemCategory {
 public inline function new(x: Float, y: Float, ?width: Float,
   ?height: Float) {
  #if compileMV
  this = new Window_ItemCategory(x, y);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_ItemCategory(rect);
  #end
 }
}
