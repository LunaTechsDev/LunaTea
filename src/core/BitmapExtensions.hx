package core;

import rm.core.Bitmap;

/**
 * Bitmap Extensions for drawing lines to different positions.
 */
/**
 * Draws lines to specified points
 * @param bitmap
 * @param strokeStyle Color of the stroke
 * @param x1
 * @param y1
 * @param x2
 * @param y2
 */
function lineTo(bitmap: Bitmap, strokeStyle: String, x1: Float, y1: Float,
  x2: Float, y2: Float) {
 var context = bitmap.context;
 context.beginPath();
 context.moveTo(x1, y1);
 context.lineTo(x2, y2);
 context.strokeStyle = strokeStyle;
 context.stroke();
 updateTexture(bitmap);
}

inline function updateTexture(bitmap: Bitmap) {
 #if compileMV
 untyped bitmap._setDirty();
 #else
 // untyped to bypass
 untyped bitmap._baseTexture.update();
 #end
}
