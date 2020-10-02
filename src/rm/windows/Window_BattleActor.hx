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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_BattleActor extends Window_BattleStatus {
 #if compileMV
 public function new(x: Float, y: Float): Void;
 public function initialize(x: Float, y: Float): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end

 /**
  * Selects an actor within the battle actor window.
  *
  * @param {number} index
  * @memberof Window_BattleActor
  */
 public function select(index: Float): Void;

 /**
  * Returns the current selected actor.
  *
  * @returns {Game_Actor}
  * @memberof Window_BattleActor
  */
 public function actor(): Game_Actor;
}
