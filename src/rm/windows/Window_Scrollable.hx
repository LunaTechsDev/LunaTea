package rm.windows;

import rm.core.Rectangle;

#if !compileMV
@:expose("Window_Scrollable")
@:native("Window_Scrollable")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_Scrollable extends Window_Base {
 private var _scrollX: Float;
 private var _ScrollY: Float;
 private var _scrollBaseX: Float;
 private var _scrollBaseY: Float;
 private var _scrollAccelX: Float;
 private var _scrollAccelY: Float;
 private var _scrollTouching: Bool;
 private var _scrollLastTouchX: Float;
 private var _scrollLastTouchY: Float;
 private var _scrollLastCursorVisible: Bool;

 /**
  * Constructor for Window_Scrollable
  * @param rect
  */
 public function new(rect: Rectangle): Void;

 /**
  * Initializes the scrollable window with a rectangle
  * called internally by new operator.
  * @param rect
  */
 public function initialize(rect: Rectangle): Void;

 public function clearScrollStatus(): Void;

 public function scrollX(): Float;

 public function scrollY(): Float;

 public function scrollBaseX(): Float;

 public function scrollBaseY(): Float;

 public function scrollTo(x: Float, y: Float): Void;

 public function scrollBy(x: Float, y: Float): Void;

 public function smoothScrollTo(x: Float, y: Float): Void;

 public function setScrollAccel(x: Float, y: Float): Void;

 /**
  *
  * Overall width of the window.
  * @return Float
  */
 public function overallWidth(): Float;

 /**
  * Overall height of the window.
  * @return Float
  */
 public function overallHeight(): Float;

 public function maxScrollX(): Float;

 public function maxScrollY(): Float;

 public function scrollBlockWidth(): Float;

 public function scrollBlockHeight(): Float;

 /**
  * Smoothly scrolls down to the number by the
  * height of each item.
  * @param num
  * @return Float
  */
 public function smoothScrollDown(num: Float): Float;

 /**
  * Smoothly scrolls up to the number by the height
  * of each item.
  * @param num
  * @return Float
  */
 public function smoothScrollUp(num: Float): Float;

 /**
  * Process wheel scrolling with the TouchInput wheel.
  * @return Float
  */
 public function processWheelScroll(): Void;

 /**
  * Processes touch input scrolling.
  */
 public function processTouchScroll(): Void;

 /**
  * Defaults to isScrollEnabled();
  * Determines if wheel scroll is enabled.
  * @return Bool
  */
 public function isWheelScrollEnabled(): Bool;

 /**
  * Defaults to isScrollEnabled();
  * Determines if touch scroll is enabled.
  * @return Bool
  */
 public function isTouchScrollEnabled(): Bool;

 /**
  * Whether scrolling is enabled; default to true.
  * @return Bool
  */
 public function isScrollEnable(): Bool;

 /**
  * Returns true if the window is touched
  * within the frame.
  * @return Bool
  */
 public function isTouchedInsideFrame(): Bool;

 /**
  * Handler for when touch scroll is started.
  */
 public function onTouchScrollStart(): Void;

 /**
  * Handler for when touch scrolling.
  */
 public function onTouchScroll(): Void;

 /**
  * Handler for when touch scroll is ending.
  */
 public function onTouchScrollEnd(): Void;

 /**
  * Update function for smooth scrolling.
  */
 public function updateSmoothScroll(): Void;

 /**
  * Update function for scroll accelleration.
  */
 public function updateScrollAccel(): Void;

 /**
  * Update function for the scrolling arrows.
  */
 public function updateArrows(): Void;

 /**
  * Update function for the origin when scrolling.
  */
 public function updateOrigin(): Void;

 /**
  * Update function for the Scroll Base.
  */
 public function updateScrollBase(): Void;

 /**
  * Function to be overriden for your personal use.
  */
 public function paint(): Void;
}
#else
#end
