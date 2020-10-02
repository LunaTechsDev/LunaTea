package rm.windows;

import rm.core.Rectangle;
import rm.objects.Game_Enemy;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleEnemy
 *
 * The window for selecting a target enemy on the battle screen.
 * @class Window_BattleEnemy
 */
@:expose("Window_BattleEnemy")
@:native("Window_BattleEnemy")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_BattleEnemy extends Window_Selectable {
 private var _enemies: Array<Game_Enemy>;

 #if compileMV
 public function new(x: Float, y: Float);
 public function initialize(x: Float, y: Float): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end

 /**
  * Returns the window width.
  *
  * @returns {number}
  * @memberof Window_BattleEnemy
  */
 public function windowWidth(): Float;

 /**
  * Returns the window height.
  *
  * @returns {number}
  * @memberof Window_BattleEnemy
  */
 public function windowHeight(): Float;

 /**
  * Returns the number of visible rows.
  *
  * @returns {number}
  * @memberof Window_BattleEnemy
  */
 public function numVisibleRows(): Float;

 /**
  * Returns the current enemy.
  *
  * @returns {Game_Enemy}
  * @memberof Window_BattleEnemy
  */
 public function enemy(): Game_Enemy;

 /**
  * Returns the current index selected.
  *
  * @returns {number}
  * @memberof Window_BattleEnemy
  */
 public function enemyIndex(): Float;

 /**
  * Selects a specified enemy using the index.
  *
  * @param {number} index
  * @memberof Window_BattleEnemy
  */
 public function select(index: Float): Void;
}
