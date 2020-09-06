package rm.objects;

import rm.types.RPG.EnemyAction;
import rm.types.RPG.UsableItem;
import rm.types.RPG.Effect;

/**
 * Game_Action
 * The game object class representing a battle action.
 * @class Game_Action
 */
@:expose("Game_Action")
@:native("Game_Action")
extern class Game_Action {
 public static var EFFECT_RECOVER_HP: Int;
 public static var EFFECT_RECOVER_MP: Int;
 public static var EFFECT_GAIN_TP: Int;
 public static var EFFECT_ADD_STATE: Int;
 public static var EFFECT_REMOVE_STATE: Int;
 public static var EFFECT_ADD_BUFF: Int;
 public static var EFFECT_ADD_DEBUFF: Int;
 public static var EFFECT_REMOVE_BUFF: Int;
 public static var EFFECT_REMOVE_DEBUFF: Int;
 public static var EFFECT_SPECIAL: Int;
 public static var EFFECT_GROW: Int;
 public static var EFFECT_LEARN_SKILL: Int;
 public static var EFFECT_COMMON_EVENT: Int;
 public static var SPECIAL_EFFECT_ESCAPE: Int;
 public static var HITTYPE_CERTAIN: Int;
 public static var HITTYPE_PHYSICAL: Int;
 public static var HITTYPE_MAGICAL: Int;
 @:native("_subjectActorId")
 public var __subjectActorId: Int;
 private var _subjectActorId: Int;
 @:native("_subjectEnemyIndex")
 public var __subjectEnemyIndex: Int;
 private var _subjectEnemyIndex: Int;
 @:native("_targetIndex")
 public var __targetIndex: Int;
 private var _targetIndex: Int;
 @:native("_forcing")
 public var __forcing: Bool;
 private var _forcing: Bool;
 @:native("_item")
 public var __item: Game_Item;
 private var _item: Game_Item;

 public dynamic function new(subject: Game_Battler, forcing: Bool): Void;
 public dynamic function clear(): Void;
 public dynamic function setSubject(subject: Game_Battler): Void;
 public dynamic function subject(): Game_Battler;
 public dynamic function friendsUnit(): Game_Unit;
 public dynamic function opponentsUnit(): Game_Unit;

 public dynamic function setEnemyAction(action: EnemyAction): Void;

 public dynamic function setAttack(): Void;

 public dynamic function setGuard(): Void;

 public dynamic function setSkill(skillId: Int): Void;

 public dynamic function setItem(itemId: Int): Void;

 public dynamic function setItemObject(object: UsableItem): Void;

 public dynamic function setTarget(targetIndex: Int): Void;

 public dynamic function item(): UsableItem;

 public dynamic function isSkill(): Bool;

 public dynamic function isItem(): Bool;

 public dynamic function numRepeats(): Int;

 public dynamic function checkItemScope(list: Array<Int>): Bool;

 public dynamic function isForOpponent(): Bool;

 public dynamic function isForFriend(): Bool;

 public dynamic function isForDeadFriend(): Bool;

 public dynamic function isForUser(): Bool;

 public dynamic function isForOne(): Bool;

 public dynamic function isForRandom(): Bool;

 public dynamic function isForAll(): Bool;

 public dynamic function needsSelection(): Int;

 public dynamic function numTargets(): Int;

 public dynamic function checkDamageType(list: Array<Int>): Bool;

 public dynamic function isHpEffect(): Bool;

 public dynamic function isMpEffect(): Bool;

 public dynamic function isDamage(): Bool;

 public dynamic function isRecover(): Bool;

 public dynamic function isDrain(): Bool;

 public dynamic function isHpRecover(): Bool;

 public dynamic function isMpRecover(): Bool;

 public dynamic function isCertainHit(): Bool;

 public dynamic function isPhysical(): Bool;

 public dynamic function isMagical(): Bool;

 public dynamic function isAttack(): Bool;
 public dynamic function isGuard(): Bool;

 public dynamic function isMagicSkill(): Bool;

 public dynamic function decideRandomTarget(): Void;

 public dynamic function setConfusion(): Void;

 public dynamic function prepare(): Void;

 public dynamic function isValid(): Bool;

 public dynamic function speed(): Float;

 public dynamic function makeTargets(): Array<Game_Battler>;

 public dynamic function repeatTargets(targets: Array<Game_Battler>): Array<Game_Battler>;

 public dynamic function confusionTarget(): Game_Battler;

 public dynamic function targetsForOpponents(): Array<Game_Battler>;

 public dynamic function targetsForFriends(): Array<Game_Battler>;

 public dynamic function evaluate(): Float;

 public dynamic function itemTargetCandidates(): Array<Game_Battler>;

 public dynamic function evaluateWithTarget(target: Game_Battler): Float;

 public dynamic function testApply(target: Game_Battler): Bool;

 public dynamic function hasItemAnyValidEffects(target: Game_Battler): Bool;

 public dynamic function testItemEffect(target: Game_Battler,
  effect: Effect): Bool;

 public dynamic function itemCnt(target: Game_Battler): Float;

 public dynamic function itemMrf(target: Game_Battler): Float;

 public dynamic function itemHit(target: Game_Battler): Float;

 public dynamic function itemEva(target: Game_Battler): Float;

 public dynamic function itemCri(target: Game_Battler): Float;

 public dynamic function apply(target: Game_Battler): Void;

 public dynamic function makeDamageValue(target: Game_Battler,
  critical: Bool): Float;

 public dynamic function evalDamageFormula(target: Game_Battler): Float;

 public dynamic function calcElementRate(target: Game_Battler): Float;

 public dynamic function elementsMaxRate(target: Game_Battler,
  elements: Array<Int>): Float;

 public dynamic function applyCritical(damage: Int): Float;

 public dynamic function applyVariance(damage: Int, variance: Float): Float;

 public dynamic function applyGuard(damage: Int, target: Game_Battler): Float;

 public dynamic function executeDamage(target: Game_Battler, value: Int): Void;

 public dynamic function executeHpDamage(target: Game_Battler,
  value: Int): Void;

 public dynamic function executeMpDamage(target: Game_Battler,
  value: Int): Void;

 public dynamic function gainDrainedHp(value: Int): Void;

 public dynamic function gainDrainedMp(value: Int): Void;
 public dynamic function applyItemEffect(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectRecoverHp(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectRecoverMp(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectGainTp(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectAddState(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectAddAttackState(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectAddNormalState(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectRemoveState(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectAddBuff(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectAddDebuff(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectRemoveBuff(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectRemoveDebuff(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectSpecial(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectGrow(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectLearnSkill(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function itemEffectCommonEvent(target: Game_Battler,
  effect: Effect): Void;

 public dynamic function makeSuccess(target: Game_Battler): Void;

 public dynamic function applyItemUserEffect(target: Game_Battler): Void;

 public dynamic function lukEffectRate(target: Game_Battler): Float;
 public dynamic function applyGlobal(): Void;
}
