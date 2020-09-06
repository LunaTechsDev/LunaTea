package rm.windows;

import rm.core.Rectangle;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleSkill
 *
 * The window for selecting a skill to use on the battle screen.
 * @class Window_BattleSkill
 */
@:expose("Window_BattleSkill")
@:native("Window_BattleSkill")
extern class Window_BattleSkill extends Window_SkillList {
 #if compileMV
 public dynamic function new(x: Int, y: Int, width: Int, height: Int);
 public dynamic function initialize(x: Int, y: Int, width: Int,
  height: Int): Void;
 #else
 public dynamic function new(rect: Rectangle);
 public dynamic function initialize(rect: Rectangle): Void;
 #end
}
