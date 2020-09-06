package rm.objects;

import rm.types.RPG.State;
import rm.types.RPG.Trait;
import rm.types.RPG.Item;
import rm.types.RPG.EquipItem;
import rm.types.RPG.UsableItem;
import rm.types.RPG.Skill;
import rm.types.LunaTea.CollapseType;
import rm.types.LunaTea.SlotType;
import rm.types.LunaTea.Icon;
import rm.types.LunaTea.ParameterId;
import haxe.DynamicAccess;

/**
 * -----------------------------------------------------------------------------
 * Game_BattlerBase
 *
 * The superdeclare class of Game_Battler. It mainly contains parameters calculation.
 * @class Game_BattlerBase
 */
@:expose("Game_BattlerBase")
@:native("Game_BattlerBase")
extern class Game_BattlerBase {
 public dynamic function new(): Void;
 public dynamic function initialize(): Void;

 /**
  * Trait element rate; default to 11.
  */
 public static var TRAIT_ELEMENT_RATE: Int;

 /**
  * Debuff Rate; default to 12.
  */
 public static var TRAIT_DEBUFF_RATE: Int;

 /**
  * Trait state rate; default to 13.
  */
 public static var TRAIT_STATE_RATE: Int;

 /**
  * Trait state resist; default to 14.
  */
 public static var TRAIT_STATE_RESIST: Int;

 /**
  * Trait param; default to 21.
  */
 public static var TRAIT_PARAM: Int;

 /**
  * Trait x param; default to 22.
  */
 public static var TRAIT_XPARAM: Int;

 /**
  * Trait s param; default to 23.
  */
 public static var TRAIT_SPARAM: Int;

 /**
  * Trait attack element; default to 31.
  */
 public static var TRAIT_ATTACK_ELEMENT: Int;

 /**
  * Trait attack state; default to 32.
  */
 public static var TRAIT_ATTACK_STATE: Int;

 /**
  * Trait attack speed; default to 33.
  */
 public static var TRAIT_ATTACK_SPEED: Int;

 /**
  * Trait attack times; default to 34.
  */
 public static var TRAIT_ATTACK_TIMES: Int;

 /**
  * Trait Stype(Skill type ) add; default to 41.
  */
 public static var TRAIT_STYPE_ADD: Int;

 /**
  * Trait Stype(Skill type) seal; default to 42.
  */
 public static var TRAIT_STYPE_SEAL: Int;

 /**
  * Trait Skill add; default to 43.
  */
 public static var TRAIT_SKILL_ADD: Int;

 /**
  * Trait skill  seal; default to 44.
  */
 public static var TRAIT_SKILL_SEAL: Int;

 /**
  * Trait WType(equip weapon type); default to 51.
  */
 public static var TRAIT_EQUIP_WTYPE: Int;

 /**
  * Trait AType(Equip armor type); default to 52.
  */
 public static var TRAIT_EQUIP_ATYPE: Int;

 /**
  * Trait equipment lock; default to 53.
  */
 public static var TRAIT_EQUIP_LOCK: Int;

 /**
  * Trait equipment seal; default to 54.
  */
 public static var TRAIT_EQUIP_SEAL: Int;

 /**
  * Trait slot type;default to 55.
  */
 public static var TRAIT_SLOT_TYPE: Int;

 /**
  * Trait action plus; default to 61.
  */
 public static var TRAIT_ACTION_PLUS: Int;

 /**
  * Trait special flag; default to 62.
  */
 public static var TRAIT_SPECIAL_FLAG: Int;

 /**
  * Trait collapse type; default to 63.
  */
 public static var TRAIT_COLLAPSE_TYPE: Int;

 /**
  * Trait party ability; default to 64.
  */
 public static var TRAIT_PARTY_ABILITY: Int;

 /**
  * Flag ID auto battle; default to 0;
  */
 public static var FLAG_ID_AUTO_BATTLE: Int;

 /**
  * Flag ID guard; default to 1.
  */
 public static var FLAG_ID_GUARD: Int;

 /**
  * Flag Id substitude; default to 2.
  */
 public static var FLAG_ID_SUBSTITUTE: Int;

 /**
  * Flag id preserve type; default to 3.
  */
 public static var FLAG_ID_PRESERVE_TP: Int;

 /**
  * Icon buff start, default to 32.
  */
 public static var ICON_BUFF_START: Int;

 /**
  * Icon debuff start; default to 48.
  */
 public static var ICON_DEBUFF_START: Int;

 @:native("_hp")
 public var __hp: Int;
 private var _hp: Int;
 @:native("_mp")
 public var __mp: Int;
 private var _mp: Int;
 @:native("_tp")
 public var __tp: Int;
 private var _tp: Int;
 @:native("_hidden")
 public var __hidden: Bool;
 private var _hidden: Bool;
 @:native("_paramPlus")
 public var __paramPlus: Array<Int>;
 private var _paramPlus: Array<Int>; // TODO: Update this to be parameterId?
 @:native("_states")
 public var __states: Array<Int>;
 private var _states: Array<Int>;

 /**
  * [stateId: Int]:Int
  }
  Access using number/integer
  */
 @:native("_stateTurns")
 public var __stateTurns: DynamicAccess<Dynamic>;

 /**
  * [stateId: Int]:Int
  }
  Access using number/integer
  */
 private var _stateTurns: DynamicAccess<Dynamic>;

 @:native("_buffs")
 public var __buffs: Array<Int>;
 private var _buffs: Array<Int>;
 @:native("_buffTurns")
 public var __buffTurns: Array<Int>;
 private var _buffTurns: Array<Int>;

 /** [read-only] Hit Points */
 public var hp(get, null): Int;

 /** [read-only] Magic Points */
 public var mp(get, null): Int;

 /** [read-only] Tactical Points */
 public var tp(get, null): Int;

 /** [read-only] Maximum Hit Points - param 0*/
 public var mhp(get, null): Int;

 /** [read-only] Maximum Magic Points - param 1*/
 public var mmp(get, null): Int;

 /** [read-only] ATtacK power - param 2*/
 public var atk(get, null): Int;

 /** [read-only] DEFense power - param 3*/
 public var def(get, null): Int;

 /** [read-only] Magic Attack power - param 4*/
 public var mat(get, null): Int;

 /** [read-only] Magic Defense power - param 5*/
 public var mdf(get, null): Int;

 /** [read-only] Agility - param 6 */
 public var agi(get, null): Int;

 /** [read-only] LucK - param 7*/
 public var luk(get, null): Int;

 /** [read-only] HIT rate -xparam 0*/
 public var hit(get, null): Int;

 /** [read-only] EVAsion rate */
 public var eva(get, null): Int;

 /** [read-only] CRItical rate */
 public var cri(get, null): Int;

 /** [read-only] Critical EVasion rate */
 public var cev(get, null): Int;

 /** [read-only] Magic EVasion rate */
 public var mev(get, null): Int;

 /** [read-only] Magic ReFlection rate */
 public var mrf(get, null): Int;

 /** [read-only] CouNTer attack rate */
 public var cnt(get, null): Int;

 /** [read-only] Hp ReGeneration rate */
 public var hrg(get, null): Int;

 /** [read-only] Mp ReGeneration rate */
 public var mrg(get, null): Int;

 /** [read-only] Tp ReGeneration rate */
 public var trg(get, null): Int;

 /** [read-only] TarGet Rate */
 public var tgr(get, null): Int;

 /** [read-only] Ggweqrtg*xzuaRD effect rate */
 public var grd(get, null): Int;

 /** [read-only] RECovery effect rate */
 public var rec(get, null): Int;

 /** [read-only] PHArmacology */
 public var pha(get, null): Int;

 /** [read-only] Mp Cost Rate */
 public var mcr(get, null): Int;

 /** [read-only] Tp Charge Rate */
 public var tcr(get, null): Int;

 /** [read-only] Physical Damage Rate */
 public var pdr(get, null): Int;

 /** [read-only] Magical Damage Rate */
 public var mdr(get, null): Int;

 /** [read-only] Floor Damage Rate */
 public var fdr(get, null): Int;

 /** [read-only] EXperience Rate */
 public var exr(get, null): Int;

 public dynamic function initMembers(): Void;

 /**
  * Clears any modifications to
  * the base parameters.
  */
 public dynamic function clearParamPlus(): Void;

 /**
  * Clears states applied to the actors.
  */
 public dynamic function clearStates(): Void;

 /**
  * Erases the current state from the game battler given the
  * stateId in the editor database.
  * @param {number} stateId
  * @memberof Game_BattlerBase
  */
 public dynamic function eraseState(stateId: Int): Void;

 /**
  * Returns true if the battler is affected by the specified state given
  * the state id.
  * @param {number} stateId
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isStateAffected(stateId: Int): Bool;

 public dynamic function isDeathStateAffected(): Bool;

 /**
  * Returns the death state id.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function deathStateId(): Int;

 /**
  * Resets the state count of the specified state, given the state id.
  *
  * @param {number} stateId
  * @memberof Game_BattlerBase
  */
 public dynamic function resetStateCounts(stateId: Int): Void;

 /**
  * Returns true if the state, given the state id is expired.
  *
  * @param {number} stateId
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isStateExpired(stateId: Int): Bool;

 public dynamic function updateStateTurns(): Void;

 /**
  * Clears buffs from the battler.
  *
  * @memberof Game_BattlerBase
  */
 public dynamic function clearBuffs(): Void;

 public dynamic function eraseBuff(paramId: ParameterId): Void;

 /**
  * Returns the length of the buff.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function buffLength(): Int;

 /**
  * Buffs the current parameter id.
  *
  * @param {number} paramId
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function buff(paramId: ParameterId): Int;

 public dynamic function isBuffAffected(paramId: ParameterId): Bool;
 public dynamic function isDebuffAffected(paramId: ParameterId): Bool;
 public dynamic function isBuffOrDebuffAffected(paramId: ParameterId): Bool;
 public dynamic function isMaxBuffAffected(paramId: ParameterId): Bool;
 public dynamic function isMaxDebuffAffected(paramId: ParameterId): Bool;
 public dynamic function increaseBuff(paramId: ParameterId): Void;
 public dynamic function decreaseBuff(paramId: ParameterId): Void;
 public dynamic function overwriteBuffTurns(paramId: ParameterId,
  turns: Int): Void;
 public dynamic function isBuffExpired(paramId: ParameterId): Bool;

 /**
  * Updates the buff turns on battler.
  *
  * @memberof Game_BattlerBase
  */
 public dynamic function updateBuffTurns(): Void;

 /**
  * Kills the battler.
  *
  * @memberof Game_BattlerBase
  */
 public dynamic function die(): Void;

 /**
  * Revives the battler.
  *
  * @memberof Game_BattlerBase
  */
 public dynamic function revive(): Void;

 /**
  * Returns the states applied to the battler.
  *
  * @returns {Array<RPG.State>}
  * @memberof Game_BattlerBase
  */
 public dynamic function states(): Array<State>;

 /**
  * Returns the array of state icons attached to the battler;
  * this is determined by the active states on the battler.
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public dynamic function stateIcons(): Array<Icon>;

 /**
  * Returns the array of buff icons attached to the battler;
  * this is determined by the active buffs on the battler.
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public dynamic function buffIcons(): Array<Icon>;

 public dynamic function buffIconIndex(buffLevel: Int,
  paramId: ParameterId): Int;

 /**
  * Returns all of the icons attached to the battler.
  *
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public dynamic function allIcons(): Array<Icon>;

 /**
  * Returns the trait object to the user
  * @return Array<any>
  */
 public dynamic function traitObjects(): Array<Any>; // TODO: Figure out trait object style

 /**
  * Returns all the traits of the battler.
  *
  * @returns {Array<RPG.Trait>}
  * @memberof Game_BattlerBase
  */
 public dynamic function allTraits(): Array<Trait>;

 public dynamic function traits(code: Int): Array<Trait>;
 public dynamic function traitsWithId(code: Int, traitId: Int): Array<Trait>;
 public dynamic function traitsPi(code: Int, traitId: Int): Float;
 public dynamic function traitsSum(code: Int, traitId: Int): Int;
 public dynamic function traitsSumAll(code: Int): Int;
 public dynamic function traitsSet(code: Int): Array<Int>;

 /**
  * Returns the base parameters of the battler; this is determined by their
  * current level and the paramId given.
  * @param {number} paramId
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function paramBase(paramId: ParameterId): Int;

 public dynamic function paramPlus(paramId: ParameterId): Int;
 public dynamic function paramMin(paramId: ParameterId): Int;
 public dynamic function paramMax(paramId: ParameterId): Int;
 public dynamic function paramRate(paramId: ParameterId): Float;
 public dynamic function paramBuffRate(paramId: ParameterId): Float;

 /**
  * Returns a standard parameter, given a paramId;
  * standard parameters include: HP, MP, Atk, M.Atk, Def, M.Def, Luck, Agility.
  * @param {number} paramId
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function param(paramId: ParameterId): Int;

 /**
  * Returns the Extra parameter, given a  x parameter id.
  * These include
  * Hit rate
  * Evasion rate
  * Critical rate
  * Magic evasion rate
  * Magic reflection rate
  * Counter attack rate
  * Hp regeneration rate
  * Mp regeneration rate
  * Tp regeneration rate
  * @param xparamId
  * @return Int
  */
 public dynamic function xparam(xparamId: ParameterId): Int;

 public dynamic function sparam(sparamId: ParameterId): Int;
 public dynamic function elementRate(elementId: Int): Float;
 public dynamic function debuffRate(paramId: Int): Float;
 public dynamic function stateRate(stateId: Int): Float;
 public dynamic function stateResistSet(): Array<Int>;
 public dynamic function isStateResist(stateId: Int): Bool;

 /**
  * Returns the attack elements of the battler
  * as a list of numbers.
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public dynamic function attackElements(): Array<Int>;

 /**
  * Returns the attack states of the battler as a
  * list of numbers.
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public dynamic function attackStates(): Array<Int>;

 public dynamic function attackStatesRate(stateId: Int): Void;

 /**
  * Returns the attack speed of the battler.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function attackSpeed(): Int;

 /**
  * Returns the number of attacks available to the battler.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function attackTimesAdd(): Int;

 /**
  * Returns an array of integers
  * representing skill type ids.
  * @return Array<Int>
  */
 public dynamic function addedSkillTypes(): Array<Int>;

 public dynamic function isSkillTypeSealed(skilltypeId: Int): Bool;
 public dynamic function addedSkills(): Array<Int>;
 public dynamic function isSkillSealed(skillId: Int): Bool;
 public dynamic function isEquipWtypeOk(weaponTypeId: Int): Bool;
 public dynamic function isEquipAtypeOk(armorTypeId: Int): Bool;
 public dynamic function isEquipTypeLocked(equipmentTypeId: Int): Bool;
 public dynamic function isEquipTypeSealed(equipmentTypeId: Int): Bool;

 /**
  * Returns the battler slot type of a trait.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function slotType(): SlotType;

 /**
  * Returns true if the battler dual wields.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isDualWield(): Bool;

 public dynamic function actionPlusSet(): Array<Int>; // TODO: Make Typedef

 /**
  * Takes a special flag
  * @param flagId
  * @return Bool
  */
 public dynamic function specialFlag(flagId: Int): Bool;

 /**
  * Returns the collapse type of the battler.
  * This is represented as an Int.
  * @returns {Int}
  * @memberof Game_BattlerBase
  */
 public dynamic function collapseType(): CollapseType;

 public dynamic function partyAbility(abilityId: Int): Bool;

 /**
  * Returns true if the battler is set to battle automatically.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isAutoBattle(): Bool;

 /**
  * Returns true if the battler is guarding.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isGuard(): Bool;

 public dynamic function isSubstitute(): Bool;

 /**
  * Returns true if tp is preserved between battles.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isPreserveTp(): Bool;

 public dynamic function addParam(paramId: ParameterId, value: Int): Void;

 /**
  * Sets the battler hp.
  *
  * @param {number} hp
  * @memberof Game_BattlerBase
  */
 public dynamic function setHp(hp: Int): Void;

 /**
  * Sets the battler mp.
  *
  * @param {number} mp
  * @memberof Game_BattlerBase
  */
 public dynamic function setMp(mp: Int): Void;

 /**
  * Sets the battler tp.
  *
  * @param {number} tp
  * @memberof Game_BattlerBase
  */
 public dynamic function setTp(tp: Int): Void;

 /**
  * Returns the maximum tp of the battler.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function maxTp(): Int;

 /**
  * Refreshes the battler.
  *
  * @memberof Game_BattlerBase
  */
 public dynamic function refresh(): Void;

 /**
  * Recovers the battler from all states and restores the
  * battler to maximum hp and mp.
  * @memberof Game_BattlerBase
  */
 public dynamic function recoverAll(): Void;

 /**
  * Returns the percentage of the battler's hp left as a float.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function hpRate(): Float;

 /**
  * Returns the percentage of the battler's mp left as a float.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function mpRate(): Float;

 /**
  * Returns the percentage of the battler's tp left as a float.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function tpRate(): Float;

 /**
  * Hides the game battler.
  *
  * @memberof Game_BattlerBase
  */
 public dynamic function hide(): Void;

 /**
  * Shows the game battler.
  *
  * @memberof Game_BattlerBase
  */
 public dynamic function appear(): Void;

 /**
  * Returns true if the game battler is hidden.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isHidden(): Bool;

 /**
  * Returns true if the game battler is not hidden.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isAppeared(): Bool;

 /**
  * Returns true if the battler is dead.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isDead(): Bool;

 /**
  * Returns true if the battler is alive.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isAlive(): Bool;

 /**
  * Returns true if the battler is dying.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isDying(): Bool;

 /**
  * Returns true if the game battler is restricted.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isRestricted(): Bool;

 /**
  * Returns true if the battler can input actions.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function canInput(): Bool;

 public dynamic function canMove(): Bool;

 /**
  * Returns true if the battler is confused.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isConfused(): Bool;

 /**
  * Returns the confusion level of the battler.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function confusionLevel(): Int;

 /**
  * Returns true if the battler is an actor.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isActor(): Bool;

 /**
  * Returns true if the battler is an enemy.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isEnemy(): Bool;

 /**
  * Sorts the states attached to the battler.
  *
  * @memberof Game_BattlerBase
  */
 public dynamic function sortStates(): Void;

 /**
  * Returns the number of the restriction.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function restriction(): Int;

 /**
  * Adds a new state given a state id to the battler.
  *
  * @param {number} stateId
  * @memberof Game_BattlerBase
  */
 public dynamic function addNewState(stateId: Int): Void;

 /**
  * Handler for when the battler is restricted.
  *
  * @memberof Game_BattlerBase
  */
 public dynamic function onRestrict(): Void;

 public dynamic function mostImportantStateText(): String;
 public dynamic function stateMotionIndex(): Int;
 public dynamic function stateOverlayIndex(): Int;

 /**
  * Returns true if the skill is a weapon type
  * oriented skill.
  * @param {RPG.Skill} skill
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isSkillWtypeOk(skill: Skill): Bool;

 /**
  * Returns the mp cost of the skill.
  *
  * @param {RPG.Skill} skill
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function skillMpCost(skill: Skill): Int;

 /**
  * Returns the tp cost of the skill.
  *
  * @param {RPG.Skill} skill
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function skillTpCost(skill: Skill): Int;

 /**
  * Returns true if the battler can pay the cost
  * of the specified skill.
  * @param {RPG.Skill} skill
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function canPaySkillCost(skill: Skill): Bool;

 /**
  * Pays the cost of the skill when activating the skill.
  *
  * @param {RPG.Skill} skill
  * @memberof Game_BattlerBase
  */
 public dynamic function paySkillCost(skill: Skill): Void;

 /**
  * Returns true if the item occasion is okay.
  *
  * @param {RPG.UsableItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function isOccasionOk(item: UsableItem): Bool;

 public dynamic function meetsUsableItemConditions(item: UsableItem): Bool;

 /**
  * Returns true if the battler meets the skill conditions.
  *
  * @param {RPG.Skill} skill
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function meetsSkillConditions(skill: Skill): Bool;

 /**
  * Returns true if the battler meets the item conditions.
  *
  * @param {RPG.Item} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function meetsItemConditions(item: Item): Bool;

 /**
  * Returns true if the battler can use the item.
  *
  * @param {RPG.UsableItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function canUse(item: UsableItem): Bool;

 /**
  * Returns true if the battler can equip the item.
  *
  * @param {RPG.EquipItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function canEquip(item: EquipItem): Bool;

 /**
  * Returns true if the battler can equip a weapon.
  *
  * @param {RPG.EquipItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function canEquipWeapon(item: EquipItem): Bool;

 /**
  * Returns true if the battler can equip armor.
  *
  * @param {RPG.EquipItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function canEquipArmor(item: EquipItem): Bool;

 /**
  * Returns the attack skill id in the database.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function attackSkillid(): Int;

 /**
  * Returns the guard skill id in the database.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public dynamic function guardSkillId(): Int;

 /**
  * Returns true if the battler can attack.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function canAttack(): Bool;

 /**
  * Returns true if the battler can guard.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public dynamic function canGuard(): Bool;
}
