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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Scene_Message extends Scene_Base {
 public var isMessageWindowClosing: Bool;

 private var _choiceListWindow: Window_ChoiceList;

 private var _eventItemWindow: Window_EventItem;

 private var _nameBoxWindow: Window_NameBox;

 private var _numberInputWindow: Window_NumberInput;

 public function createAllWindows(): Void;
 public function createMessageWindow(): Void;
 public function messageWindowRect(): Void;
 public function createScrollTextWindow(): Void;
 public function scrollTextWindowRect(): Void;
 public function createGoldWindow(): Void;
 public function goldWindowRect(): Void;
 public function createNameBoxWindow(): Void;
 public function createChoiceListWindow(): Void;
 public function createNumberInputWindow(): Void;
 public function createEventItemWindow(): Void;
 public function eventItemWindowRect(): Void;
 public function associateWindows(): Void;
}
#else
#end
