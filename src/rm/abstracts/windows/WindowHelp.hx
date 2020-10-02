package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_Help;

abstract WindowHelp(Window_Help) from Window_Help to Window_Help {
 /**
  * Abstraction Layer for conditional compilation.
  * If Compiling for MV/MZ, x, y, width, height
  * required.
  * @param numLines
  * @param x
  * @param y
  * @param width
  * @param height
  */
 public inline function new(numLines: Float, ?x: Float, ?y: Float,
   ?width: Float, ?height: Float) {
  #if compileMV
  this = new Window_Help(numLines);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_Help(rect);
  #end
 }

 public inline function raw(): Window_Help {
  return this;
 }
}
