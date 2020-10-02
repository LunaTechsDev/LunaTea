package rm.abstracts.objects;

import rm.objects.Game_Enemy;

@:forward
@:forwardStatics
abstract GameEnemy(Game_Enemy) from Game_Enemy to Game_Enemy {
 public inline function new(enemyId: Float, x: Float, y: Float) {
  this = new Game_Enemy(enemyId, x, y);
 }
}
