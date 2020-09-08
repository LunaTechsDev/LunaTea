package rm.scenes;

import rm.core.Sprite;

/**
 * Scene class of the game over screen.
 */
@:expose("Scene_Gameover")
@:native("Scene_Gameover")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Scene_Gameover extends Scene_Base {
 private var _backSprite: Sprite;

 #if !compileMV
 public function adjustBackground(): Void;
 #end

 public function stop(): Void;

 /**
  * Plays the game over music
  * within the game over scene.
  * @memberof Scene_Gameover
  */
 public function playGameoverMusic(): Void;

 /**
  * Creates the background of
  * the game over scene.
  * @memberof Scene_Gameover
  */
 public function createBackground(): Void;

 public function isTriggered(): Bool;

 /**
  * Returns to the title scene (Scene_Title).
  * @memberof Scene_Gameover
  */
 public function gotoTitle(): Void;
}
