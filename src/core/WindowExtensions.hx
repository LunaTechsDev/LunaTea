import pixi.core.math.Point;
import rm.core.TouchInput;
import rm.windows.Window_Base;

class WindowExtensions {
 public static function isTouchInsideFrame(win: Window_Base) {
  #if compileMV
  var x = win.canvasToLocalX(TouchInput.x);
  var y = win.canvasToLocalY(TouchInput.y);
  return x >= 0 && y >= 0 && x < win.width && y < win.height;
  #else
  var touchPos = new Point(TouchInput.x, TouchInput.y);
  var localPos = win.worldTransform.applyInverse(touchPos);
  return win.innerRect.contains(localPos.x, localPos.y);
  #end
 }

 public static function isOpenOrVisible(win: Window_Base) {
  return win.isOpen() || win.visible;
 }
}
