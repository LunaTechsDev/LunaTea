package core;

/**
 * Abstract Key Mapper for mapping Keys in RPGMakerMV/MZ
 */
enum abstract Keys(String) from String to String {
 public var TAB = 'tab';

 /**
  * Key 13 (Enter), 90(Z), 32(space)
  */
 public var OK = 'ok';

 /**
  * Key 16 - Shift
  */
 public var SHIFT = 'shift';

 /**
  * Key 18 - Control
  */
 public var CNTRL = 'control';

 /**
  * Key 27 - Escape or Key 45 -INsert
  */
 public var ESC = 'escape';

 /**
  * Key 33 -- Page Up
  */
 public var PAGEUP = 'pageup';

 /**
  * Key 34 - Page Down
  */
 public var PAGEDOWN = 'pagedown';

 /**
  * Key 100 - Numpad 4 or Left Arrow
  */
 public var LEFT = 'left';

 /**
  * Numpad 6 or Right Arrow
  */
 public var RIGHT = 'right';

 /**
  * Key 104 - Numpad 8 or Up Arrow
  */
 public var UP = 'up';

 /**
  * Key98 - Numpad 2 or Down Arrow
  */
 public var DOWN = 'down';

 public var DEBUG = 'debug';

 /**
  * Gamepad Compatible Key
  */
 public var CANCEL = 'cancel';

 /**
  * Gamepad Compatible Key for menu
  */
 public var MENU = 'menu';
}
