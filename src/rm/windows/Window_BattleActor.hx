package rm.windows;

import rm.core.Rectangle;
import rm.objects.Game_Actor;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleActor
 *
 * The window for selecting a target actor on the battle screen.
 * @class Window_BattleActor
 */
@:expose("Window_BattleActor")
@:native("Window_BattleActor")
extern class Window_BattleActor extends Window_BattleStatus {
 #if compileMV
 public dynamic function new(x: Int, y: Int): Void;
 public dynamic function initialize(x: Int, y: Int): Void;
 #else
 public dynamic function new(rect: Rectangle);
 public dynamic function initialize(rect: Rectangle): Void;
 #end

 /**
  * Selects an actor within the battle actor window.
  *
  * @param {number} index
  * @memberof Window_BattleActor
  */
 public dynamic function select(index: Int): Void;

 /**
  * Returns the current selected actor.
  *
  * @returns {Game_Actor}
  * @memberof Window_BattleActor
  */
 public dynamic function actor(): Game_Actor;
}
