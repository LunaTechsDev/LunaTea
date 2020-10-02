package rm.abstracts.sprites;

import rm.sprites.Sprite_Picture;

@:forward
@:forwardStatics
abstract SpritePicture(Sprite_Picture) from Sprite_Picture to Sprite_Picture {
 public inline function new(pictureId: Float) {
  this = new Sprite_Picture(pictureId);
 }
}
