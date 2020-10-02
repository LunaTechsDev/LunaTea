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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_BattleSkill extends Window_SkillList {
 #if compileMV
 public function new(x: Float, y: Float, width: Float, height: Float);
 public function initialize(x: Float, y: Float, width: Float,
  height: Float): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end
}
