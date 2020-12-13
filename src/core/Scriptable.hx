package core;

import rm.scenes.Scene_Base;
import pixi.interaction.EventEmitter;
import core.Events.ScriptableEvents;

/**
 * A class used to add scriptable enemies and objects to your game.
 */
@:native('Scriptable')
class Scriptable extends EventEmitter {
 public var scene: Scene_Base;

 public function new() {
  super();
 }

 public function initialize() {
  this.emit(INIT);
 }

 public function update(?deltaTime: Float) {
  this.emit(UPDATE);
 }

 public function destroy() {
  this.emit(DESTROY);
 }
}
