package rm.core;

import haxe.io.UInt8Array;
import pixi.core.textures.Texture;
import js.html.Image;
import pixi.core.Shader;
import haxe.extern.Rest;
import pixi.core.renderers.webgl.Renderer;
import pixi.core.renderers.webgl.utils.ObjectRenderer;

#if !compileMV
@:native('Tilemap.Renderer')
@:expose('Tilemap.Renderer')
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
/**
 * External class.
 * Custom tilemap renderer.
 * Used to render the Tilemap in MZ using the PIXI renderer. 
 * registered under pixi renderer as the 'rpgtilemap'
 */
extern class TilemapRenderer extends ObjectRenderer {
 private var _shader: Shader;
 private var _images: Array<Image>;
 private var _internalTextures: Array<Texture>;

 /**
  * Defaults to 1024 * 1024 * 4
  */
 private var _clearBuffer: UInt8Array;

 public function new(args: Rest<Dynamic>): Void;
 public function initialize(renderer: Renderer): Void;

 public function getShader(): Shader;

 public function contextChange(): Void;

 private function _createShader(): Shader;

 private function _createInternalTextures(): Void;

 private function _destroyInternalTextures(): Void;

 public function updateTextures(renderer: Renderer, images: Image): Void;

 public function bindTextures(renderer: Renderer): Void;
}
#end
