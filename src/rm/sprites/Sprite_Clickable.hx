package rm.sprites;

import rm.core.Sprite;

#if compileMV
#else
@:expose('Sprite_Clickable')
@:native('Sprite_Clickable')
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Sprite_Clickable extends Sprite {
 public function processTouch(): Void;

 public function isPressed(): Bool;

 public function isClickEnabled(): Bool;

 public function isBeingTouched(): Bool;

 public function hitTest(x: Int, y: Int): Bool;

 /**
  * Handler for when a mouse enters the sprite.
  */
 public function onMouseEnter(): Void;

 /**
  * Handler for when a mouse exits the sprite.
  */
 public function onMouseExit(): Void;

 /**
  * Handler for when a mouse presses on the sprite.
  */
 public function onPress(): Void;

 /**
  * Handler for when a mouse clicks on the sprite.
  */
 public function onClick(): Void;
}
#end
