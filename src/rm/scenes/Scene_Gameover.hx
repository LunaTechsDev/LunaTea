package rm.scenes;

import rm.core.Sprite;

/**
 * Scene class of the game over screen.
 */
@:expose("Scene_Gameover")
@:native("Scene_Gameover")
extern class Scene_Gameover extends Scene_Base {
 private var _backSprite: Sprite;

 #if !compileMV
 public dynamic function adjustBackground(): Void;
 #end

 public dynamic function stop(): Void;

 /**
  * Plays the game over music
  * within the game over scene.
  * @memberof Scene_Gameover
  */
 public dynamic function playGameoverMusic(): Void;

 /**
  * Creates the background of
  * the game over scene.
  * @memberof Scene_Gameover
  */
 public dynamic function createBackground(): Void;

 public dynamic function isTriggered(): Bool;

 /**
  * Returns to the title scene (Scene_Title).
  * @memberof Scene_Gameover
  */
 public dynamic function gotoTitle(): Void;
}
