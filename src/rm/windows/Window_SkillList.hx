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
extern class Window_SkillList extends Window_Selectable {
 @:native("_actor")
 public var __actor: Game_Actor;
 private var _actor: Game_Actor;

 /**
  * Returns the Skill Type Id, which is an Int.
  */
 @:native("_stypeId")
 public var __stypeId: SkillTypeIdA;

 /**
  * Returns the Skill Type Id which is an Int;
  */
 private var _stypeId: SkillTypeIdA;

 @:native("_data")
 public var __data: Array<Skill>;
 private var _data: Array<Skill>;

 #if compileMV
 public dynamic function new(x: Int, y: Int, witth: Int, height: Int);

 public dynamic function initialize(x: Int, y: Int, width: Int,
  height: Int): Void;
 #else
 public dynamic function new(rect: Rectangle);
 public dynamic function initialize(rect: Rectangle): Void;

 /**
  * Returns skill at the specified index.
  * @param index
  * @return Null<Skill>
  */
 public dynamic function itemAt(index: Int): Null<Skill>;
 #end

 /**
  * Sets the current actor of the skill list window.
  *
  * @param {Game_Actor} actor
  * @memberof Window_SkillList
  */
 public dynamic function setActor(actor: Game_Actor): Void;

 /**
  * Sets the skill type id of the skill list window.
  *
  * @param {number} stypeId - Integer
  * @memberof Window_SkillList
  */
 public dynamic function setStypeId(stypeId: SkillTypeIdA): Void;

 /**
  * Returns the current skill at the window index
  * loaded from the databse.
  *
  * @returns {RPG.Skill}
  * @memberof Window_SkillList
  */
 public dynamic function item(): Skill;

 /**
  * Returns true if the given skill is included.
  *
  * @param {RPG.Skill} item
  * @returns {boolean}
  * @memberof Window_SkillList
  */
 public dynamic function includes(item: Skill): Bool;

 /**
  * Returns true if the given skill is enabled.
  *
  * @param {RPG.Skill} item
  * @returns {boolean}
  * @memberof Window_SkillList
  */
 public dynamic function isEnabled(item: Skill): Bool;

 /**
  * Creates the item list.
  *
  * @memberof Window_SkillList
  */
 public dynamic function makeItemList(): Void;

 public dynamic function selectLast(): Void;
 public dynamic function costWidth(): Int;
 public dynamic function drawSkillCost(skill: Skill, x: Int, y: Int,
  width: Int): Void;
}
