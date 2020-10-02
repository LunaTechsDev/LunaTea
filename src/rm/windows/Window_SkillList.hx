package rm.windows;

import rm.types.RPG.Item;
import rm.core.Rectangle;
import rm.objects.Game_Actor;
import rm.types.RPG.Skill;
import rm.types.LunaTea.SkillTypeIdA;

/**
 * -----------------------------------------------------------------------------
 * Window_SkillList
 *
 * The window for selecting a skill on the skill screen.
 * @class Window_SkillList
 */
@:expose("Window_SkillList")
@:native("Window_SkillList")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_SkillList extends Window_Selectable {
 private var _actor: Game_Actor;

 /**
  * Returns the Skill Type Id which is an Float;
  */
 private var _stypeId: SkillTypeIdA;

 private var _data: Array<Skill>;

 #if compileMV
 public function new(x: Float, y: Float, witth: Float, height: Float);

 public function initialize(x: Float, y: Float, width: Float,
  height: Float): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;

 /**
  * Returns skill at the specified index.
  * @param index
  * @return Null<Skill>
  */
 public function itemAt(index: Int): Null<Skill>;
 #end

 /**
  * Sets the current actor of the skill list window.
  *
  * @param {Game_Actor} actor
  * @memberof Window_SkillList
  */
 public function setActor(actor: Game_Actor): Void;

 /**
  * Sets the skill type id of the skill list window.
  *
  * @param {number} stypeId - Integer
  * @memberof Window_SkillList
  */
 public function setStypeId(stypeId: SkillTypeIdA): Void;

 /**
  * Returns the current skill at the window index
  * loaded from the databse.
  *
  * @returns {RPG.Skill}
  * @memberof Window_SkillList
  */
 public function item(): Skill;

 /**
  * Returns true if the given skill is included.
  *
  * @param {RPG.Skill} item
  * @returns {boolean}
  * @memberof Window_SkillList
  */
 public function includes(item: Skill): Bool;

 /**
  * Returns true if the given skill is enabled.
  *
  * @param {RPG.Skill} item
  * @returns {boolean}
  * @memberof Window_SkillList
  */
 public function isEnabled(item: Skill): Bool;

 /**
  * Creates the item list.
  *
  * @memberof Window_SkillList
  */
 public function makeItemList(): Void;

 public function selectLast(): Void;
 public function costWidth(): Float;
 public function drawSkillCost(skill: Skill, x: Float, y: Float,
  width: Float): Void;
}
