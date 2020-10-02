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
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
@:build(macros.BuildMacroTools.buildDynamicFunctions())
extern class Game_Action {
 public static var EFFECT_RECOVER_HP: Float;
 public static var EFFECT_RECOVER_MP: Float;
 public static var EFFECT_GAIN_TP: Float;
 public static var EFFECT_ADD_STATE: Float;
 public static var EFFECT_REMOVE_STATE: Float;
 public static var EFFECT_ADD_BUFF: Float;
 public static var EFFECT_ADD_DEBUFF: Float;
 public static var EFFECT_REMOVE_BUFF: Float;
 public static var EFFECT_REMOVE_DEBUFF: Float;
 public static var EFFECT_SPECIAL: Float;
 public static var EFFECT_GROW: Float;
 public static var EFFECT_LEARN_SKILL: Float;
 public static var EFFECT_COMMON_EVENT: Float;
 public static var SPECIAL_EFFECT_ESCAPE: Float;
 public static var HITTYPE_CERTAIN: Float;
 public static var HITTYPE_PHYSICAL: Float;
 public static var HITTYPE_MAGICAL: Float;

 private var _subjectActorId: Float;

 private var _subjectEnemyIndex: Float;

 private var _targetIndex: Float;

 private var _forcing: Bool;

 private var _item: Game_Item;

 public function new(subject: Game_Battler, forcing: Bool): Void;
 public function clear(): Void;
 public function setSubject(subject: Game_Battler): Void;
 public function subject(): Game_Battler;
 public function friendsUnit(): Game_Unit;
 public function opponentsUnit(): Game_Unit;

 public function setEnemyAction(action: EnemyAction): Void;

 public function setAttack(): Void;

 public function setGuard(): Void;

 public function setSkill(skillId: Float): Void;

 public function setItem(itemId: Float): Void;

 public function setItemObject(object: UsableItem): Void;

 public function setTarget(targetIndex: Float): Void;

 public function item(): UsableItem;

 public function isSkill(): Bool;

 public function isItem(): Bool;

 public function numRepeats(): Float;

 public function checkItemScope(list: Array<Float>): Bool;

 public function isForOpponent(): Bool;

 public function isForFriend(): Bool;

 public function isForDeadFriend(): Bool;

 public function isForUser(): Bool;

 public function isForOne(): Bool;

 public function isForRandom(): Bool;

 public function isForAll(): Bool;

 public function needsSelection(): Float;

 public function numTargets(): Float;

 public function checkDamageType(list: Array<Float>): Bool;

 public function isHpEffect(): Bool;

 public function isMpEffect(): Bool;

 public function isDamage(): Bool;

 public function isRecover(): Bool;

 public function isDrain(): Bool;

 public function isHpRecover(): Bool;

 public function isMpRecover(): Bool;

 public function isCertainHit(): Bool;

 public function isPhysical(): Bool;

 public function isMagical(): Bool;

 public function isAttack(): Bool;
 public function isGuard(): Bool;

 public function isMagicSkill(): Bool;

 public function decideRandomTarget(): Void;

 public function setConfusion(): Void;

 public function prepare(): Void;

 public function isValid(): Bool;

 public function speed(): Float;

 public function makeTargets(): Array<Game_Battler>;

 public function repeatTargets(targets: Array<Game_Battler>): Array<Game_Battler>;

 public function confusionTarget(): Game_Battler;

 public function targetsForOpponents(): Array<Game_Battler>;

 public function targetsForFriends(): Array<Game_Battler>;

 public function evaluate(): Float;

 public function itemTargetCandidates(): Array<Game_Battler>;

 public function evaluateWithTarget(target: Game_Battler): Float;

 public function testApply(target: Game_Battler): Bool;

 public function hasItemAnyValidEffects(target: Game_Battler): Bool;

 public function testItemEffect(target: Game_Battler, effect: Effect): Bool;

 public function itemCnt(target: Game_Battler): Float;

 public function itemMrf(target: Game_Battler): Float;

 public function itemHit(target: Game_Battler): Float;

 public function itemEva(target: Game_Battler): Float;

 public function itemCri(target: Game_Battler): Float;

 public function apply(target: Game_Battler): Void;

 public function makeDamageValue(target: Game_Battler, critical: Bool): Float;

 public function evalDamageFormula(target: Game_Battler): Float;

 public function calcElementRate(target: Game_Battler): Float;

 public function elementsMaxRate(target: Game_Battler,
  elements: Array<Float>): Float;

 public function applyCritical(damage: Float): Float;

 public function applyVariance(damage: Float, variance: Float): Float;

 public function applyGuard(damage: Float, target: Game_Battler): Float;

 public function executeDamage(target: Game_Battler, value: Float): Void;

 public function executeHpDamage(target: Game_Battler, value: Float): Void;

 public function executeMpDamage(target: Game_Battler, value: Float): Void;

 public function gainDrainedHp(value: Float): Void;

 public function gainDrainedMp(value: Float): Void;
 public function applyItemEffect(target: Game_Battler, effect: Effect): Void;

 public function itemEffectRecoverHp(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectRecoverMp(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectGainTp(target: Game_Battler, effect: Effect): Void;

 public function itemEffectAddState(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectAddAttackState(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectAddNormalState(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectRemoveState(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectAddBuff(target: Game_Battler, effect: Effect): Void;

 public function itemEffectAddDebuff(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectRemoveBuff(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectRemoveDebuff(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectSpecial(target: Game_Battler, effect: Effect): Void;

 public function itemEffectGrow(target: Game_Battler, effect: Effect): Void;

 public function itemEffectLearnSkill(target: Game_Battler,
  effect: Effect): Void;

 public function itemEffectCommonEvent(target: Game_Battler,
  effect: Effect): Void;

 public function makeSuccess(target: Game_Battler): Void;

 public function applyItemUserEffect(target: Game_Battler): Void;

 public function lukEffectRate(target: Game_Battler): Float;
 public function applyGlobal(): Void;
}
