package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_SkillType;

/**
 * The scene class of the skill screen.
 */
@:expose("Scene_Skill")
@:native("Scene_Skill")
extern class Scene_Skill extends Scene_ItemBase {
 private var _skillTypeWindow: Window_SkillType;

 #if !compileMV
 public dynamic function skillTypeWindowRect(): Rectangle;
 public dynamic function statusWindowRect(): Rectangle;
 public dynamic function itemWindowRect(): Rectangle;
 #end

 /**
  * Creates the window for skill types
  * within the skill scene.
  * @memberof Scene_Skill
  */
 public dynamic function createSkillTypeWindow(): Void;

 /**
  * Creates the status window within
  * the skill scene.
  * @memberof Scene_Skill
  */
 public dynamic function createStatusWindow(): Void;

 /**
  * Creates the item window
  * within the skill scene.
  * @memberof Scene_Skill
  */
 public dynamic function createItemWindow(): Void;

 /**
  * Refreshes the current actor displayed in the Skill
  * window with updated information on changes.
  */
 public dynamic function refreshActor(): Void;

 /**
  * Handler for when a skill is
  * selected/confirmed within the skill scene.
  * @memberof Scene_Skill
  */
 public dynamic function commandSkill(): Void;

 /**
  * Function to run when selection is cancelled
  * on the skill scene.
  */
 public dynamic function onItemCancel(): Void;

 /**
  * Plays a sound effect on item
  * confirmation withiin the skill scene.
  * @memberof Scene_Skill
  */
 public dynamic function playSeForItem(): Void;

 /**
  * Handler for when an an actor is
  * changed within the skill scene.
  * @memberof Scene_Skill
  */
 public dynamic function onActorChange(): Void;
}
