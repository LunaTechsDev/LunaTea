import rm.windows.Window_Message;
import utils.Fn;

@:keep
@:native("LTWinMsg")
class LTWinMsgUpdate extends Window_Message {
 public var _testingNewCharacter: String;

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
  untyped Fn.proto(Window_Message).initializeR();
  this._testingNewCharacter = "Actor1_1";
  trace(this._background);
 }
 #else
 public override function initialize(rect: Rectangle) {
  untyped Fn.proto(Window_Message).initializeR(rect);
 }
 #end

 public function newTestFunction() {
  trace(this.x, this.y);
  trace("Hello World");
 }

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
