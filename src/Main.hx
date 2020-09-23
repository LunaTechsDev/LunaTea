import macros.FnMacros;
import rm.core.TouchInput;
import rm.windows.Window_Message;
import rm.windows.Window_Base;
import rm.Globals.GameVariables;
import js.html.Window;
import js.lib.Function;
import rm.scenes.Scene_Base;
import utils.Fn;
import utils.Comment;
import macros.MacroTools;
import LTWinMsg.LTWinMsgUpdate;

using core.LambdaTea;
using Lambda;

class Main {
 public static function main() {
  MacroTools.includeJsLib("test.js");
  Comment.singleLine(MacroTools.generateBuildDate());
  Comment.title("Kiniitta");
  Comment.pluginParams("@author Kino
    @plugindesc This plugin allows you to use Haxe in your RPGMakerMV code.
    @param haxeVersion");
  Comment.singleLine("This is a test of the watcher");
  var sceneTitleStart: Function = Fn.getPrProp(Scene_Base, "start");
  Fn.setPrProp(Scene_Base, "start", () -> {
   var self: Scene_Base = Fn.self;
   sceneTitleStart.call(self);
   GameVariables.setValue(1, 3);
   Fn.setField(Window, "Haxe", "Version 4.2.0");
   trace("Running Console Log From Haxe Added haxe Version");
  });

  var sceneTitleStart2 = Fn.proto(Scene_Base).startR;
  trace(sceneTitleStart2);

  Fn.proto(Scene_Base).startD = () -> {};
  var abc = [1, 2, 3, 4, 5, 10];
  var x = abc.fold((x, result) -> result = x * 2, 0);

  var d = abc.map((i) -> i * 2);

  Fn.setPrPropFn(Scene_Base, "test", (self: Scene_Base, ?args) -> {
   self.update();
  });

  TouchInput.__onMouseMoveD = (event: Dynamic) -> {
   trace(event);
  };

  // Fn.proto(Window_Base).updateD = () -> {
  //  var self: Window_Base = Fn.self;
  //  self.update();
  //  self.hide();
  // };

  // Fn.updateProto(Window_Base, (self) -> {
  //  self.updateD = () -> {
  //   self.hide();
  //  }

  //  self.standardBackOpacityD = () -> {
  //   return 3;
  //  }
  // });
  #if compileMV
  trace("Test comment");
  #end

  FnMacros.jsPatch(true, Window_Message, LTWinMsgUpdate);
  FnMacros.jsPatch(false, Window_Message, LTWinMsgUpdate);
 }
}
