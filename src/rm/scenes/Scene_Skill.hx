package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_SkillType;

/**
 * The scene class of the skill screen.
 */
@:expose("Scene_Skill")
@:native("Scene_Skill")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Scene_Skill extends Scene_ItemBase {
 private var _skillTypeWindow: Window_SkillType;

 #if !compileMV
 public function skillTypeWindowRect(): Rectangle;
 public function statusWindowRect(): Rectangle;
 public function itemWindowRect(): Rectangle;
 #end

 /**
  * Creates the window for skill types
  * within the skill scene.
  * @memberof Scene_Skill
  */
 public function createSkillTypeWindow(): Void;

 /**
  * Creates the status window within
  * the skill scene.
  * @memberof Scene_Skill
  */
 public function createStatusWindow(): Void;

 /**
  * Creates the item window
  * within the skill scene.
  * @memberof Scene_Skill
  */
 public function createItemWindow(): Void;

 /**
  * Refreshes the current actor displayed in the Skill
  * window with updated information on changes.
  */
 public function refreshActor(): Void;

 /**
  * Handler for when a skill is
  * selected/confirmed within the skill scene.
  * @memberof Scene_Skill
  */
 public function commandSkill(): Void;

 /**
  * Function to run when selection is cancelled
  * on the skill scene.
  */
 public function onItemCancel(): Void;

 /**
  * Plays a sound effect on item
  * confirmation withiin the skill scene.
  * @memberof Scene_Skill
  */
 public function playSeForItem(): Void;

 /**
  * Handler for when an an actor is
  * changed within the skill scene.
  * @memberof Scene_Skill
  */
 public function onActorChange(): Void;
}
