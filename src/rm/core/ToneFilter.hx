package rm.core;

import pixi.filters.colormatrix.ColorMatrixFilter;

@:expose("ToneFilter")
@:native("ToneFilter")
extern class ToneFilter extends ColorMatrixFilter {
 /**
  * The color matrix filter for WebGL.
  *
  * @class ToneFilter
  * @extends PIXI.Filter
  * @constructor
  */
 public dynamic function new();

 /**
  * Changes the hue.
  *
  * @method adjustHue
  * @param {Number} value The hue value in the range (-360, 360)
  */
 public dynamic function adjustHue(?value: Int): Void;

 /**
  * Changes the saturation.
  *
  * @method adjustSaturation
  * @param {Number} value The saturation value in the range (-255, 255)
  */
 public dynamic function adjustSaturation(?value: Int): Void;

 /**
  * Changes the tone.
  *
  * @method adjustTone
  * @param {Number} r The red strength in the range (-255, 255)
  * @param {Number} g The green strength in the range (-255, 255)
  * @param {Number} b The blue strength in the range (-255, 255)
  */
 public dynamic function adjustTone(?r: Int, ?g: Int, ?b: Int): Void;
}
