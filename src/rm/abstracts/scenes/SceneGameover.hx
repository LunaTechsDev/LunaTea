package rm.abstracts.scenes;

import rm.scenes.Scene_Gameover;

@:forward
@:forwardStatics
abstract SceneGameover(Scene_Gameover) from Scene_Gameover to Scene_Gameover {
 public inline function new() {
  this = new Scene_Gameover();
 }
}
