package rm.sprites;

import rm.objects.Game_Picture;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Picture
 *
 * The sprite for displaying a picture.
 */
@:expose("Sprite_Picture")
@:native("Sprite_Picture")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Sprite_Picture {
 public function new(pictureId: Int);
 public function picture(): Game_Picture;
 public function updateBitmap(): Void;
 public function updateOrigin(): Void;
 public function updatePosition(): Void;
 public function updateScale(): Void;
 public function updateTone(): Void;
 public function updateOther(): Void;
 public function loadBitmap(): Void;
}
