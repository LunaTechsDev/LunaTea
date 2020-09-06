package rm.scenes;

import rm.windows.Window_NameBox;
import rm.windows.Window_ChoiceList;
import rm.windows.Window_NumberInput;
import rm.windows.Window_EventItem;
import rm.core.WindowLayer;
import rm.core.Stage;
import rm.windows.Window_Base;
import haxe.extern.EitherType;

#if !compileMV
@:expose("Scene_Message")
@:native("Scene_Message")
extern class Scene_Message extends Scene_Base {
 public var isMessageWindowClosing: Bool;

 @:native("_choiceListWindow")
 public var __choiceListWindow: Window_ChoiceList;
 private var _choiceListWindow: Window_ChoiceList;

 @:native("_eventItemWindow")
 public var __eventItemWindow: Window_EventItem;
 private var _eventItemWindow: Window_EventItem;

 @:native("_nameBoxWindow")
 public var __nameBoxWindow: Window_NameBox;
 private var _nameBoxWindow: Window_NameBox;

 @:native("_numberInputWindow")
 public var __numberInputWindow: Window_NumberInput;
 private var _numberInputWindow: Window_NumberInput;

 public dynamic function createAllWindows(): Void;
 public dynamic function createMessageWindow(): Void;
 public dynamic function messageWindowRect(): Void;
 public dynamic function createScrollTextWindow(): Void;
 public dynamic function scrollTextWindowRect(): Void;
 public dynamic function createGoldWindow(): Void;
 public dynamic function goldWindowRect(): Void;
 public dynamic function createNameBoxWindow(): Void;
 public dynamic function createChoiceListWindow(): Void;
 public dynamic function createNumberInputWindow(): Void;
 public dynamic function createEventItemWindow(): Void;
 public dynamic function eventItemWindowRect(): Void;
 public dynamic function associateWindows(): Void;
}
#else
#end
