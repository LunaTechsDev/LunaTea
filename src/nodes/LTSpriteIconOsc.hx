package nodes;

import rm.core.Bitmap;
import rm.core.Sprite;
import rm.sprites.Sprite_Base;
import core.Amaryllis;

/**
 * Utility Sprite Class for creating sprites of oscillating size.
 */
@:native("LTSpriteIconOsc")
#if compileMV
class LTSpriteIconOsc extends Sprite_Base {
#else
class LTSpriteIconOsc extends Sprite {
#end

public function new(x: Int, y: Int, ?bitmap: Bitmap) {
 super();
 this.x = x;
 this.y = y;
 this.anchor.x = 0.5;
 this.anchor.y = 0.5;
 if (bitmap != null) {
  this.bitmap = bitmap;
 }
}

public override function update() {
 super.update();
 this.oscillateSize();
}

public function oscillateSize() {
 var xYResult = Math.abs(Math.sin(Date.now().getTime() / 1000) / 2.0);
 this.scale.x = 1 - xYResult;
 this.scale.y = 1 - xYResult;
}
}
