package rm.windows;

import rm.core.Rectangle;

#if !compileMV
@:expose("Window_Scrollable")
@:native("Window_Scrollable")
extern class Window_Scrollable extends Window_Base {
 private var _scrollX: Int;
 private var _ScrollY: Int;
 private var _scrollBaseX: Int;
 private var _scrollBaseY: Int;
 private var _scrollAccelX: Int;
 private var _scrollAccelY: Int;
 private var _scrollTouching: Bool;
 private var _scrollLastTouchX: Int;
 private var _scrollLastTouchY: Int;
 private var _scrollLastCursorVisible: Bool;

 /**
  * Constructor for Window_Scrollable
  * @param rect
  */
 public dynamic function new(rect: Rectangle): Void;

 /**
  * Initializes the scrollable window with a rectangle
  * called internally by new operator.
  * @param rect
  */
 public dynamic function initialize(rect: Rectangle): Void;

 public dynamic function clearScrollStatus(): Void;

 public dynamic function scrollX(): Int;

 public dynamic function scrollY(): Int;

 public dynamic function scrollBaseX(): Int;

 public dynamic function scrollBaseY(): Int;

 public dynamic function scrollTo(x: Int, y: Int): Void;

 public dynamic function scrollBy(x: Int, y: Int): Void;

 public dynamic function smoothScrollTo(x: Int, y: Int): Void;

 public dynamic function setScrollAccel(x: Int, y: Int): Void;

 /**
  *
  * Overall width of the window.
  * @return Int
  */
 public dynamic function overallWidth(): Int;

 /**
  * Overall height of the window.
  * @return Int
  */
 public dynamic function overallHeight(): Int;

 public dynamic function maxScrollX(): Int;

 public dynamic function maxScrollY(): Int;

 public dynamic function scrollBlockWidth(): Int;

 public dynamic function scrollBlockHeight(): Int;

 /**
  * Smoothly scrolls down to the number by the
  * height of each item.
  * @param num
  * @return Int
  */
 public dynamic function smoothScrollDown(num: Int): Int;

 /**
  * Smoothly scrolls up to the number by the height
  * of each item.
  * @param num
  * @return Int
  */
 public dynamic function smoothScrollUp(num: Int): Int;

 /**
  * Process wheel scrolling with the TouchInput wheel.
  * @return Int
  */
 public dynamic function processWheelScroll(): Void;

 /**
  * Processes touch input scrolling.
  */
 public dynamic function processTouchScroll(): Void;

 /**
  * Defaults to isScrollEnabled();
  * Determines if wheel scroll is enabled.
  * @return Bool
  */
 public dynamic function isWheelScrollEnabled(): Bool;

 /**
  * Defaults to isScrollEnabled();
  * Determines if touch scroll is enabled.
  * @return Bool
  */
 public dynamic function isTouchScrollEnabled(): Bool;

 /**
  * Whether scrolling is enabled; default to true.
  * @return Bool
  */
 public dynamic function isScrollEnable(): Bool;

 /**
  * Returns true if the window is touched
  * within the frame.
  * @return Bool
  */
 public dynamic function isTouchedInsideFrame(): Bool;

 /**
  * Handler for when touch scroll is started.
  */
 public dynamic function onTouchScrollStart(): Void;

 /**
  * Handler for when touch scrolling.
  */
 public dynamic function onTouchScroll(): Void;

 /**
  * Handler for when touch scroll is ending.
  */
 public dynamic function onTouchScrollEnd(): Void;

 /**
  * Update dynamic function for smooth scrolling.
  */
 public dynamic function updateSmoothScroll(): Void;

 /**
  * Update dynamic function for scroll accelleration.
  */
 public dynamic function updateScrollAccel(): Void;

 /**
  * Update dynamic function for the scrolling arrows.
  */
 public dynamic function updateArrows(): Void;

 /**
  * Update dynamic function for the origin when scrolling.
  */
 public dynamic function updateOrigin(): Void;

 /**
  * Update dynamic function for the Scroll Base.
  */
 public dynamic function updateScrollBase(): Void;

 /**
  * Function to be overriden for your personal use.
  */
 public dynamic function paint(): Void;
}
#else
#end
