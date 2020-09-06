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
extern class Sprite_Picture {
 @:native("_pictureId")
 public var __pictureId: Int;
 private var _pictureId: Int;

 @:native("_pictureName")
 public var __pictureName: String;
 private var _pictureName: String;

 @:native("_isPicture")
 public var __isPicture: Bool;
 private var _isPicture: Bool;

 public dynamic function new(pictureId: Int);
 public dynamic function picture(): Game_Picture;
 public dynamic function updateBitmap(): Void;
 public dynamic function updateOrigin(): Void;
 public dynamic function updatePosition(): Void;
 public dynamic function updateScale(): Void;
 public dynamic function updateTone(): Void;
 public dynamic function updateOther(): Void;
 public dynamic function loadBitmap(): Void;
}
