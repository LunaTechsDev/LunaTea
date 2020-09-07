import rm.windows.Window_MenuStatus;
import rm.windows.Window_Base;
import rm.Globals.GameVariables;
import js.Syntax;
import js.html.Window;
import js.lib.Function;
import rm.scenes.Scene_Base;
import utils.Fn;
import utils.Comment;
import macros.MacroTools;

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

  var abc = [1, 2, 3, 4, 5, 10];
  var x = abc.fold((x, result) -> result = x * 2, 0);

  var d = abc.map((i) -> i * 2);

  Fn.proto(Window_Base).updateD = () -> {
   var self: Window_Base = Fn.self;
   self.update();
   self.hide();
  };

  Fn.updateProto(Window_Base, (self) -> {
   self.updateD = () -> {
    self.hide();
   }

   self.standardBackOpacityD = () -> {
    return 3;
   }
  });
 }

 var update = 3;
}
