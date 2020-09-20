import rm.windows.Window_Message;
import rm.windows.Window_Base;
import rm.Globals.GameVariables;
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

  var sceneTitleStart2 = Fn.proto(Scene_Base).startR;
  trace(sceneTitleStart2);

  var abc = [1, 2, 3, 4, 5, 10];
  var x = abc.fold((x, result) -> result = x * 2, 0);

  var d = abc.map((i) -> i * 2);

  Fn.setPrPropFn(Scene_Base, "test", (self: Scene_Base, ?args) -> {
   self.update();
  });

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
 }
}

@:keep
@:native("LTWinMsg")
class LTWinMsgUpdate extends Window_Message {
 #if compileMV
 public function new(x: Int, y: Int, width: Int, height: Int) {
  super(x, y, width, height);
 }
 #else
 public function new(rect: Rectangle) {
  super(rect);
 }
 #end

 #if compileMV
 public override function initialize() {
  super.initialize();
  trace(this._background);
 }
 #else
 public override function initialize(rect: Rectangle) {
  super.initialize(rect);
 }
 #end
 //  #if compileMV
 //  public override function processNormalCharacter(textState: String) {
 //   super.processNormalCharacter(textState);
 //  #else
 //  public override function processCharacter(textState: TextState) {
 //   super.processCharacter(textState);
 //  #end
 //   var se = {
 //    name: "Paralyze3",
 //    volume: 25,
 //    pitch: 50,
 //    pan: 0
 //   };
 //   untyped AudioManager.playTalkSe(se);
 //   trace("Playing SE");
 //  }
}
