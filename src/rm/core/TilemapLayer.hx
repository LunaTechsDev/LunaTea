package rm.core;

import js.html.Image;
import haxe.extern.Rest;
import pixi.core.renderers.webgl.State;
import js.lib.Float32Array;
import pixi.core.display.Container;

#if !compileMV
@:native('Tilemap.Layer')
@:expose('Tilemap.Layer')
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class TilemapLayer extends Container {
 private var _indexArray: Float32Array;
 private var _indexBuffer: Any; // TODO: Add proper type
 private var _vertexArray: Float32Array;
 private var _vertexBuffer: Any; // TODO: Add proper type
 private var _state: State;
 private var _images: Array<Image>;
 private var _elements: Array<Any>;
 private var _vao: Any;
 private var _needsTexturesUpdate: Bool;
 private var _needsVertexUpdate: Bool;

 /**
  * Defaults to 3
  *
  */
 public static var MAX_GL_TEXTURES: Int;

 /**
  * Vertex Stride setting
  * ```js
  * 9 * 4
  * ```
  */
 public static var VERTEX_STRIDE: Int;

 public function new(args: Rest<Dynamic>): Void;
 public function initialize(): Void;

 /**
  * Creates the _images for the layer and updates the textures.
  * @param bitmaps 
  */
 public function setBitmaps(bitmaps: Array<Bitmap>): Void;

 public function clear(): Void;

 public function addRect(setNumber: Int, srcX: Float, srcY: Float,
  desX: Float, destY: Float, width: Float, height: Float): Void;

 private function _createVao(): Void;

 /**
  * Creates index buffers for the quads
  */
 private function _updateIndexBuffer(): Void;

 private function _updateVertexBuffer(): Void;
}
#end
