package core;

import rm.core.Sprite;
import pixi.interaction.EventEmitter;

@:native('Anim')
class Anim extends EventEmitter {
 public var isStarted: Bool;
 public var sprite: Sprite;

 public var animFn: (Sprite, Float) -> Void;

 public function new(sprite: Sprite, animFn: (Sprite, Float) -> Void) {
  super();
  this.sprite = sprite;
  this.animFn = animFn;
 }

 public function start() {
  this.isStarted = true;
  this.emit('start', this);
 }

 public function stop() {
  this.isStarted = false;
  this.emit('stop', this);
 }

 public function update(?deltaTime: Float) {
  animFn(this.sprite, deltaTime);
 }
}
