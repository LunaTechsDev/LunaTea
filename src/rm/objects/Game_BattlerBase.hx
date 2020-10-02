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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_BattlerBase {
 public function new(): Void;
 public function initialize(): Void;

 /**
  * Trait element rate; default to 11.
  */
 public static var TRAIT_ELEMENT_RATE: Float;

 /**
  * Debuff Rate; default to 12.
  */
 public static var TRAIT_DEBUFF_RATE: Float;

 /**
  * Trait state rate; default to 13.
  */
 public static var TRAIT_STATE_RATE: Float;

 /**
  * Trait state resist; default to 14.
  */
 public static var TRAIT_STATE_RESIST: Float;

 /**
  * Trait param; default to 21.
  */
 public static var TRAIT_PARAM: Float;

 /**
  * Trait x param; default to 22.
  */
 public static var TRAIT_XPARAM: Float;

 /**
  * Trait s param; default to 23.
  */
 public static var TRAIT_SPARAM: Float;

 /**
  * Trait attack element; default to 31.
  */
 public static var TRAIT_ATTACK_ELEMENT: Float;

 /**
  * Trait attack state; default to 32.
  */
 public static var TRAIT_ATTACK_STATE: Float;

 /**
  * Trait attack speed; default to 33.
  */
 public static var TRAIT_ATTACK_SPEED: Float;

 /**
  * Trait attack times; default to 34.
  */
 public static var TRAIT_ATTACK_TIMES: Float;

 /**
  * Trait Stype(Skill type ) add; default to 41.
  */
 public static var TRAIT_STYPE_ADD: Float;

 /**
  * Trait Stype(Skill type) seal; default to 42.
  */
 public static var TRAIT_STYPE_SEAL: Float;

 /**
  * Trait Skill add; default to 43.
  */
 public static var TRAIT_SKILL_ADD: Float;

 /**
  * Trait skill  seal; default to 44.
  */
 public static var TRAIT_SKILL_SEAL: Float;

 /**
  * Trait WType(equip weapon type); default to 51.
  */
 public static var TRAIT_EQUIP_WTYPE: Float;

 /**
  * Trait AType(Equip armor type); default to 52.
  */
 public static var TRAIT_EQUIP_ATYPE: Float;

 /**
  * Trait equipment lock; default to 53.
  */
 public static var TRAIT_EQUIP_LOCK: Float;

 /**
  * Trait equipment seal; default to 54.
  */
 public static var TRAIT_EQUIP_SEAL: Float;

 /**
  * Trait slot type;default to 55.
  */
 public static var TRAIT_SLOT_TYPE: Float;

 /**
  * Trait action plus; default to 61.
  */
 public static var TRAIT_ACTION_PLUS: Float;

 /**
  * Trait special flag; default to 62.
  */
 public static var TRAIT_SPECIAL_FLAG: Float;

 /**
  * Trait collapse type; default to 63.
  */
 public static var TRAIT_COLLAPSE_TYPE: Float;

 /**
  * Trait party ability; default to 64.
  */
 public static var TRAIT_PARTY_ABILITY: Float;

 /**
  * Flag ID auto battle; default to 0;
  */
 public static var FLAG_ID_AUTO_BATTLE: Float;

 /**
  * Flag ID guard; default to 1.
  */
 public static var FLAG_ID_GUARD: Float;

 /**
  * Flag Id substitude; default to 2.
  */
 public static var FLAG_ID_SUBSTITUTE: Float;

 /**
  * Flag id preserve type; default to 3.
  */
 public static var FLAG_ID_PRESERVE_TP: Float;

 /**
  * Icon buff start, default to 32.
  */
 public static var ICON_BUFF_START: Float;

 /**
  * Icon debuff start; default to 48.
  */
 public static var ICON_DEBUFF_START: Float;

 private var _hp: Float;

 private var _mp: Float;

 private var _tp: Float;

 private var _hidden: Bool;

 private var _paramPlus: Array<Float>; // TODO: Update this to be parameterId?

 private var _states: Array<Float>;

 /**
  * [stateId: Float]:Float
  }
  Access using number/integer
  */
 private var _stateTurns: DynamicAccess<Dynamic>;

 private var _buffs: Array<Float>;

 private var _buffTurns: Array<Float>;

 /** [read-only] Hit Points */
 public var hp(get, null): Float;

 /** [read-only] Magic Points */
 public var mp(get, null): Float;

 /** [read-only] Tactical Points */
 public var tp(get, null): Float;

 /** [read-only] Maximum Hit Points - param 0*/
 public var mhp(get, null): Float;

 /** [read-only] Maximum Magic Points - param 1*/
 public var mmp(get, null): Float;

 /** [read-only] ATtacK power - param 2*/
 public var atk(get, null): Float;

 /** [read-only] DEFense power - param 3*/
 public var def(get, null): Float;

 /** [read-only] Magic Attack power - param 4*/
 public var mat(get, null): Float;

 /** [read-only] Magic Defense power - param 5*/
 public var mdf(get, null): Float;

 /** [read-only] Agility - param 6 */
 public var agi(get, null): Float;

 /** [read-only] LucK - param 7*/
 public var luk(get, null): Float;

 /** [read-only] HIT rate -xparam 0*/
 public var hit(get, null): Float;

 /** [read-only] EVAsion rate */
 public var eva(get, null): Float;

 /** [read-only] CRItical rate */
 public var cri(get, null): Float;

 /** [read-only] Critical EVasion rate */
 public var cev(get, null): Float;

 /** [read-only] Magic EVasion rate */
 public var mev(get, null): Float;

 /** [read-only] Magic ReFlection rate */
 public var mrf(get, null): Float;

 /** [read-only] CouNTer attack rate */
 public var cnt(get, null): Float;

 /** [read-only] Hp ReGeneration rate */
 public var hrg(get, null): Float;

 /** [read-only] Mp ReGeneration rate */
 public var mrg(get, null): Float;

 /** [read-only] Tp ReGeneration rate */
 public var trg(get, null): Float;

 /** [read-only] TarGet Rate */
 public var tgr(get, null): Float;

 /** [read-only] Ggweqrtg*xzuaRD effect rate */
 public var grd(get, null): Float;

 /** [read-only] RECovery effect rate */
 public var rec(get, null): Float;

 /** [read-only] PHArmacology */
 public var pha(get, null): Float;

 /** [read-only] Mp Cost Rate */
 public var mcr(get, null): Float;

 /** [read-only] Tp Charge Rate */
 public var tcr(get, null): Float;

 /** [read-only] Physical Damage Rate */
 public var pdr(get, null): Float;

 /** [read-only] Magical Damage Rate */
 public var mdr(get, null): Float;

 /** [read-only] Floor Damage Rate */
 public var fdr(get, null): Float;

 /** [read-only] EXperience Rate */
 public var exr(get, null): Float;

 public function initMembers(): Void;

 /**
  * Clears any modifications to
  * the base parameters.
  */
 public function clearParamPlus(): Void;

 /**
  * Clears states applied to the actors.
  */
 public function clearStates(): Void;

 /**
  * Erases the current state from the game battler given the
  * stateId in the editor database.
  * @param {number} stateId
  * @memberof Game_BattlerBase
  */
 public function eraseState(stateId: Float): Void;

 /**
  * Returns true if the battler is affected by the specified state given
  * the state id.
  * @param {number} stateId
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isStateAffected(stateId: Float): Bool;

 public function isDeathStateAffected(): Bool;

 /**
  * Returns the death state id.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function deathStateId(): Float;

 /**
  * Resets the state count of the specified state, given the state id.
  *
  * @param {number} stateId
  * @memberof Game_BattlerBase
  */
 public function resetStateCounts(stateId: Float): Void;

 /**
  * Returns true if the state, given the state id is expired.
  *
  * @param {number} stateId
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isStateExpired(stateId: Float): Bool;

 public function updateStateTurns(): Void;

 /**
  * Clears buffs from the battler.
  *
  * @memberof Game_BattlerBase
  */
 public function clearBuffs(): Void;

 public function eraseBuff(paramId: ParameterId): Void;

 /**
  * Returns the length of the buff.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function buffLength(): Float;

 /**
  * Buffs the current parameter id.
  *
  * @param {number} paramId
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function buff(paramId: ParameterId): Float;

 public function isBuffAffected(paramId: ParameterId): Bool;
 public function isDebuffAffected(paramId: ParameterId): Bool;
 public function isBuffOrDebuffAffected(paramId: ParameterId): Bool;
 public function isMaxBuffAffected(paramId: ParameterId): Bool;
 public function isMaxDebuffAffected(paramId: ParameterId): Bool;
 public function increaseBuff(paramId: ParameterId): Void;
 public function decreaseBuff(paramId: ParameterId): Void;
 public function overwriteBuffTurns(paramId: ParameterId, turns: Float): Void;
 public function isBuffExpired(paramId: ParameterId): Bool;

 /**
  * Updates the buff turns on battler.
  *
  * @memberof Game_BattlerBase
  */
 public function updateBuffTurns(): Void;

 /**
  * Kills the battler.
  *
  * @memberof Game_BattlerBase
  */
 public function die(): Void;

 /**
  * Revives the battler.
  *
  * @memberof Game_BattlerBase
  */
 public function revive(): Void;

 /**
  * Returns the states applied to the battler.
  *
  * @returns {Array<RPG.State>}
  * @memberof Game_BattlerBase
  */
 public function states(): Array<State>;

 /**
  * Returns the array of state icons attached to the battler;
  * this is determined by the active states on the battler.
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public function stateIcons(): Array<Icon>;

 /**
  * Returns the array of buff icons attached to the battler;
  * this is determined by the active buffs on the battler.
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public function buffIcons(): Array<Icon>;

 public function buffIconIndex(buffLevel: Float, paramId: ParameterId): Float;

 /**
  * Returns all of the icons attached to the battler.
  *
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public function allIcons(): Array<Icon>;

 /**
  * Returns the trait object to the user
  * @return Array<any>
  */
 public function traitObjects(): Array<Any>; // TODO: Figure out trait object style

 /**
  * Returns all the traits of the battler.
  *
  * @returns {Array<RPG.Trait>}
  * @memberof Game_BattlerBase
  */
 public function allTraits(): Array<Trait>;

 public function traits(code: Float): Array<Trait>;
 public function traitsWithId(code: Float, traitId: Float): Array<Trait>;
 public function traitsPi(code: Float, traitId: Float): Float;
 public function traitsSum(code: Float, traitId: Float): Float;
 public function traitsSumAll(code: Float): Float;
 public function traitsSet(code: Float): Array<Float>;

 /**
  * Returns the base parameters of the battler; this is determined by their
  * current level and the paramId given.
  * @param {number} paramId
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function paramBase(paramId: ParameterId): Float;

 public function paramPlus(paramId: ParameterId): Float;
 public function paramMin(paramId: ParameterId): Float;
 public function paramMax(paramId: ParameterId): Float;
 public function paramRate(paramId: ParameterId): Float;
 public function paramBuffRate(paramId: ParameterId): Float;

 /**
  * Returns a standard parameter, given a paramId;
  * standard parameters include: HP, MP, Atk, M.Atk, Def, M.Def, Luck, Agility.
  * @param {number} paramId
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function param(paramId: ParameterId): Float;

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
  * @return Float
  */
 public function xparam(xparamId: ParameterId): Float;

 public function sparam(sparamId: ParameterId): Float;
 public function elementRate(elementId: Float): Float;
 public function debuffRate(paramId: Float): Float;
 public function stateRate(stateId: Float): Float;
 public function stateResistSet(): Array<Float>;
 public function isStateResist(stateId: Float): Bool;

 /**
  * Returns the attack elements of the battler
  * as a list of numbers.
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public function attackElements(): Array<Float>;

 /**
  * Returns the attack states of the battler as a
  * list of numbers.
  * @returns {Array<number>}
  * @memberof Game_BattlerBase
  */
 public function attackStates(): Array<Float>;

 public function attackStatesRate(stateId: Float): Void;

 /**
  * Returns the attack speed of the battler.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function attackSpeed(): Float;

 /**
  * Returns the number of attacks available to the battler.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function attackTimesAdd(): Float;

 /**
  * Returns an array of integers
  * representing skill type ids.
  * @return Array<Float>
  */
 public function addedSkillTypes(): Array<Float>;

 public function isSkillTypeSealed(skilltypeId: Float): Bool;
 public function addedSkills(): Array<Float>;
 public function isSkillSealed(skillId: Float): Bool;
 public function isEquipWtypeOk(weaponTypeId: Float): Bool;
 public function isEquipAtypeOk(armorTypeId: Float): Bool;
 public function isEquipTypeLocked(equipmentTypeId: Float): Bool;
 public function isEquipTypeSealed(equipmentTypeId: Float): Bool;

 /**
  * Returns the battler slot type of a trait.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function slotType(): SlotType;

 /**
  * Returns true if the battler dual wields.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isDualWield(): Bool;

 public function actionPlusSet(): Array<Float>; // TODO: Make Typedef

 /**
  * Takes a special flag
  * @param flagId
  * @return Bool
  */
 public function specialFlag(flagId: Float): Bool;

 /**
  * Returns the collapse type of the battler.
  * This is represented as an Float.
  * @returns {Float}
  * @memberof Game_BattlerBase
  */
 public function collapseType(): CollapseType;

 public function partyAbility(abilityId: Float): Bool;

 /**
  * Returns true if the battler is set to battle automatically.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isAutoBattle(): Bool;

 /**
  * Returns true if the battler is guarding.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isGuard(): Bool;

 public function isSubstitute(): Bool;

 /**
  * Returns true if tp is preserved between battles.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isPreserveTp(): Bool;

 public function addParam(paramId: ParameterId, value: Float): Void;

 /**
  * Sets the battler hp.
  *
  * @param {number} hp
  * @memberof Game_BattlerBase
  */
 public function setHp(hp: Float): Void;

 /**
  * Sets the battler mp.
  *
  * @param {number} mp
  * @memberof Game_BattlerBase
  */
 public function setMp(mp: Float): Void;

 /**
  * Sets the battler tp.
  *
  * @param {number} tp
  * @memberof Game_BattlerBase
  */
 public function setTp(tp: Float): Void;

 /**
  * Returns the maximum tp of the battler.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function maxTp(): Float;

 /**
  * Refreshes the battler.
  *
  * @memberof Game_BattlerBase
  */
 public function refresh(): Void;

 /**
  * Recovers the battler from all states and restores the
  * battler to maximum hp and mp.
  * @memberof Game_BattlerBase
  */
 public function recoverAll(): Void;

 /**
  * Returns the percentage of the battler's hp left as a float.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function hpRate(): Float;

 /**
  * Returns the percentage of the battler's mp left as a float.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function mpRate(): Float;

 /**
  * Returns the percentage of the battler's tp left as a float.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function tpRate(): Float;

 /**
  * Hides the game battler.
  *
  * @memberof Game_BattlerBase
  */
 public function hide(): Void;

 /**
  * Shows the game battler.
  *
  * @memberof Game_BattlerBase
  */
 public function appear(): Void;

 /**
  * Returns true if the game battler is hidden.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isHidden(): Bool;

 /**
  * Returns true if the game battler is not hidden.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isAppeared(): Bool;

 /**
  * Returns true if the battler is dead.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isDead(): Bool;

 /**
  * Returns true if the battler is alive.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isAlive(): Bool;

 /**
  * Returns true if the battler is dying.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isDying(): Bool;

 /**
  * Returns true if the game battler is restricted.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isRestricted(): Bool;

 /**
  * Returns true if the battler can input actions.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function canInput(): Bool;

 public function canMove(): Bool;

 /**
  * Returns true if the battler is confused.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isConfused(): Bool;

 /**
  * Returns the confusion level of the battler.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function confusionLevel(): Float;

 /**
  * Returns true if the battler is an actor.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isActor(): Bool;

 /**
  * Returns true if the battler is an enemy.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isEnemy(): Bool;

 /**
  * Sorts the states attached to the battler.
  *
  * @memberof Game_BattlerBase
  */
 public function sortStates(): Void;

 /**
  * Returns the number of the restriction.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function restriction(): Float;

 /**
  * Adds a new state given a state id to the battler.
  *
  * @param {number} stateId
  * @memberof Game_BattlerBase
  */
 public function addNewState(stateId: Float): Void;

 /**
  * Handler for when the battler is restricted.
  *
  * @memberof Game_BattlerBase
  */
 public function onRestrict(): Void;

 public function mostImportantStateText(): String;
 public function stateMotionIndex(): Float;
 public function stateOverlayIndex(): Float;

 /**
  * Returns true if the skill is a weapon type
  * oriented skill.
  * @param {RPG.Skill} skill
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isSkillWtypeOk(skill: Skill): Bool;

 /**
  * Returns the mp cost of the skill.
  *
  * @param {RPG.Skill} skill
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function skillMpCost(skill: Skill): Float;

 /**
  * Returns the tp cost of the skill.
  *
  * @param {RPG.Skill} skill
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function skillTpCost(skill: Skill): Float;

 /**
  * Returns true if the battler can pay the cost
  * of the specified skill.
  * @param {RPG.Skill} skill
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function canPaySkillCost(skill: Skill): Bool;

 /**
  * Pays the cost of the skill when activating the skill.
  *
  * @param {RPG.Skill} skill
  * @memberof Game_BattlerBase
  */
 public function paySkillCost(skill: Skill): Void;

 /**
  * Returns true if the item occasion is okay.
  *
  * @param {RPG.UsableItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function isOccasionOk(item: UsableItem): Bool;

 public function meetsUsableItemConditions(item: UsableItem): Bool;

 /**
  * Returns true if the battler meets the skill conditions.
  *
  * @param {RPG.Skill} skill
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function meetsSkillConditions(skill: Skill): Bool;

 /**
  * Returns true if the battler meets the item conditions.
  *
  * @param {RPG.Item} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function meetsItemConditions(item: Item): Bool;

 /**
  * Returns true if the battler can use the item.
  *
  * @param {RPG.UsableItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function canUse(item: UsableItem): Bool;

 /**
  * Returns true if the battler can equip the item.
  *
  * @param {RPG.EquipItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function canEquip(item: EquipItem): Bool;

 /**
  * Returns true if the battler can equip a weapon.
  *
  * @param {RPG.EquipItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function canEquipWeapon(item: EquipItem): Bool;

 /**
  * Returns true if the battler can equip armor.
  *
  * @param {RPG.EquipItem} item
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function canEquipArmor(item: EquipItem): Bool;

 /**
  * Returns the attack skill id in the database.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function attackSkillid(): Float;

 /**
  * Returns the guard skill id in the database.
  *
  * @returns {number}
  * @memberof Game_BattlerBase
  */
 public function guardSkillId(): Float;

 /**
  * Returns true if the battler can attack.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function canAttack(): Bool;

 /**
  * Returns true if the battler can guard.
  *
  * @returns {Bool}
  * @memberof Game_BattlerBase
  */
 public function canGuard(): Bool;
}
