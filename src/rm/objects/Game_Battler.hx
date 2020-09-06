package rm.objects;

import rm.types.LunaTea.AnimationId;
import rm.types.RM.BattlerAnimation;
import rm.types.LunaTea.ActionState;
import rm.types.RPG.UsableItem;
import rm.types.LunaTea.ParameterId;
import rm.types.LunaTea.WeaponImageId;
import rm.types.LunaTea.MotionType;

@:expose("Game_Battler")
@:native("Game_Battler")
extern class Game_Battler extends Game_BattlerBase {
 @:native("_actions")
 public var __actions: Array<Game_Action>;
 private var _actions: Array<Game_Action>;
 @:native("_speed")
 public var __speed: Int;
 private var _speed: Int;
 @:native("_result")
 public var __result: Game_ActionResult;
 private var _result: Game_ActionResult;
 @:native("_actionState")
 public var __actionState: String;
 private var _actionState: String;
 @:native("_lastTargetIndex")
 public var __lastTargetIndex: Int;
 private var _lastTargetIndex: Int;
 @:native("_animations")
 public var __animations: Array<BattlerAnimation>;
 private var _animations: Array<BattlerAnimation>;
 @:native("_damagePopup")
 public var __damagePopup: Bool;
 private var _damagePopup: Bool;
 @:native("_effectType")
 public var __effectType: String; // TODO: Add Effect Type stuff
 private var _effectType: String;
 @:native("_motionType")
 public var __motionType: MotionType;
 private var _motionType: MotionType;
 @:native("_weaponImageId")
 public var __weaponImageId: Int;
 private var _weaponImageId: Int;
 @:native("_motionRefresh")
 public var __motionRefresh: Bool;
 private var _motionRefresh: Bool;
 @:native("_selected")
 public var __selected: Bool;
 private var _selected: Bool;

 /**
  * Returns the name of the battler.
  *
  * @returns {String}
  * @memberof Game_Battler
  */
 public dynamic function name(): String;

 /**
  * Returns the battler name of the battler;
  * the battler name is associated with the file used as the battler graphic.
  * @returns {String}
  * @memberof Game_Battler
  */
 public dynamic function battlerName(): String;

 /**
  * Returns the index of the battler.
  *
  * @returns {number}
  * @memberof Game_Battler
  */
 public dynamic function index(): Int;

 /**
  * Returns the unit of the battler; this is either the
  * game party or game troop.
  * @returns {Game_Unit}
  * @memberof Game_Battler
  */
 public dynamic function friendsUnit(): Game_Unit;

 /**
  * Returns the opponents unit; this is either
  * game party or game troop.
  * @returns {Game_Unit}
  * @memberof Game_Battler
  */
 public dynamic function opponentsUnit(): Game_Unit;

 /**
  * Clears animations from the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function clearAnimations(): Void;

 /**
  * Clear damage pop up from the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function clearDamagePopup(): Void;

 /**
  * Clear weapon animation from the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function clearWeaponAnimation(): Void;

 /**
  * Clears effect from the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function clearEffect(): Void;

 /**
  * Clears motion from the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function clearMotion(): Void;

 public dynamic function requestEffect(effectType: String): Void;

 /**
  * Request the specified motion on the game battler.
  *
  * @param {String} motionType
  * @memberof Game_Battler
  */
 public dynamic function requestMotion(motionType: String): Void;

 public dynamic function requestMotionRefresh(): Void;
 public dynamic function select(): Void;
 public dynamic function deselect(): Void;
 public dynamic function isAnimationRequested(): Bool;
 public dynamic function isDamagePopupRequested(): Bool;
 public dynamic function isEffectRequested(): Bool;

 /**
  * Returns true if a motion is requested.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public dynamic function isMotionRequested(): Bool;

 /**
  * Returns true if a weapon animation is requested.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public dynamic function isWeaponAnimationRequested(): Bool;

 public dynamic function isMotionRefreshRequested(): Bool;
 public dynamic function isSelected(): Bool;

 /**
  * Returns the effect type of the battler.
  *
  * @returns {String}
  * @memberof Game_Battler
  */
 public dynamic function effectType(): String;

 /**
  * Returns the motion type of the battler.
  *
  * @returns {String}
  * @memberof Game_Battler
  */
 public dynamic function motionType(): String;

 /**
  * Returns the weapon image id.
  *
  * @returns {number}
  * @memberof Game_Battler
  */
 public dynamic function weaponImageId(): WeaponImageId;

 /**
  * Shifts the battler animation.
  *
  * @returns {BattlerAnimation}
  * @memberof Game_Battler
  */
 public dynamic function shiftAnimation(): BattlerAnimation;

 /**
  * Starts the specified animation, given the animation id on the
  * battler.
  * @param {number} animationId
  * @param {Bool} mirror
  * @param {number} delay
  * @memberof Game_Battler
  */
 public dynamic function startAnimation(animationId: AnimationId,
  mirror: Bool, delay: Int): Void;

 /**
  * Starts a damage pop up on the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function startDamagePopup(): Void;

 /**
  * Starts the weapon animation on te battler given a weapon id.
  *
  * @param {number} weaponImageId
  * @memberof Game_Battler
  */
 public dynamic function startWeaponAnimation(weaponImageId: WeaponImageId): Void;

 public dynamic function action(index: Int): Game_Action;

 /**
  * Sets the action at the specified index for the battler.
  *
  * @param {number} index
  * @param {Game_Action} action
  * @memberof Game_Battler
  */
 public dynamic function setAction(index: Int, action: Game_Action): Void;

 /**
  * Returns the number of battler actions.
  *
  * @returns {number}
  * @memberof Game_Battler
  */
 public dynamic function numActions(): Int;

 /**
  * Clears the battler actions.
  *
  * @memberof Game_Battler
  */
 public dynamic function clearActions(): Void;

 /**
  * Returns the battler action result.
  *
  * @returns {Game_ActionResult}
  * @memberof Game_Battler
  */
 public dynamic function result(): Game_ActionResult;

 /**
  * Clears the battler action result.
  *
  * @memberof Game_Battler
  */
 public dynamic function clearResult(): Void;

 /**
  * Refreshes the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function refresh(): Void;

 /**
  * Adds a state to the battler given the specified
  * state id.
  * @param {number} stateId
  * @memberof Game_Battler
  */
 public dynamic function addState(stateId: Int): Void;

 /**
  * Returns true if the specified state given the state id
  * is addable.
  * @param {number} stateId
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public dynamic function isStateAddable(stateId: Int): Bool;

 /**
  * Returns true if the specified state given the state id
  * restricts.
  *
  * @param {number} stateId
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public dynamic function isStateRestrict(stateId: Int): Bool;

 /**
  * Handler for when theb attler is restricted.
  *
  * @memberof Game_Battler
  */
 public dynamic function onRestrict(): Void;

 /**
  * Removes the specified state given the state id.
  *
  * @param {number} stateId
  * @memberof Game_Battler
  */
 public dynamic function removeState(stateId: Int): Void;

 /**
  * Has the battler escape from battle; plays a sound on escaping.
  *
  * @memberof Game_Battler
  */
 public dynamic function escape(): Void;

 /**
  * Adds a buff to the battler for the specified number of turns
  * on the selected parameter.
  * @param {number} paramId
  * @param {number} turns
  * @memberof Game_Battler
  */
 public dynamic function addBuff(paramId: ParameterId, turns: Int): Void;

 /**
  * Adds a debuff to the battler for the specified number of turns
  * on the selected parameter.
  * @param {number} paramId
  * @param {number} turns
  * @memberof Game_Battler
  */
 public dynamic function addDebuff(paramId: ParameterId, turns: Int): Void;

 public dynamic function removeBuff(paramId: ParameterId): Void;
 public dynamic function removeBattleStates(): Void;

 /**
  * Removes all buffs from the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function removeAllBuffs(): Void;

 public dynamic function removeStatesAuto(timing: Int): Void;
 public dynamic function removeBuffsAuto(): Void;
 public dynamic function removeStatesByDamage(): Void;

 /**
  * Creates the number of times for
  * an action.
  * @returns {number}
  * @memberof Game_Battler
  */
 public dynamic function makeActionTimes(): Int;

 /**
  * Creates the actions for the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function makeActions(): Void;

 /**
  * Returns the speed of the battler.
  *
  * @returns {number}
  * @memberof Game_Battler
  */
 public dynamic function speed(): Int;

 /**
  * Calculates the speed of the battler.
  *
  * @memberof Game_Battler
  */
 public dynamic function makeSpeed(): Void;

 /**
  * Returns the current action of the battler.
  *
  * @returns {Game_Action}
  * @memberof Game_Battler
  */
 public dynamic function currentAction(): Game_Action;

 /**
  * Removes the current battler action.
  *
  * @memberof Game_Battler
  */
 public dynamic function removeCurrentAction(): Void;

 /**
  * Sets the last target based on the target passed in.
  * @param target
  */
 public dynamic function setLastTarget(target: Game_Battler): Void;

 public dynamic function forceAction(skillId: Int, targetIndex: Int): Void;

 /**
  * Has theb attler use the given item.
  *
  * @param {RPG.UsableItem} item
  * @memberof Game_Battler
  */
 public dynamic function useItem(item: UsableItem): Void;

 /**
  * Has the battler consume the given item.
  *
  * @param {RPG.UsableItem} item
  * @memberof Game_Battler
  */
 public dynamic function consumeItem(item: UsableItem): Void;

 /**
  * Adds the specified amount of hp to the battler.
  *
  * @param {number} value
  * @memberof Game_Battler
  */
 public dynamic function gainHp(value: Int): Void;

 /**
  * Adds the specified amount of mp to the battler.
  *
  * @param {number} value
  * @memberof Game_Battler
  */
 public dynamic function gainMp(value: Int): Void;

 /**
  * Adds the specified amount of tp to the battler.
  *
  * @param {number} value
  * @memberof Game_Battler
  */
 public dynamic function gainTp(value: Int): Void;

 /**
  * Adds a specified amount of tp to the battler silently.
  *
  * @param {number} value
  * @memberof Game_Battler
  */
 public dynamic function gainSilentTp(value: Int): Void;

 /**
  * Initializes the battler's tp; tp is random.
  *
  * @memberof Game_Battler
  */
 public dynamic function initTp(): Void;

 /**
  * Clears the battler's tp.
  *
  * @memberof Game_Battler
  */
 public dynamic function clearTp(): Void;

 public dynamic function chargeTpByDamage(damageRate: Float): Void;

 /**
  * Has the battler regenerate hp based on their hp regen.
  *
  * @memberof Game_Battler
  */
 public dynamic function regenerateHp(): Void;

 public dynamic function maxSlipDamage(): Int;

 /**
  * Has the battler regenerate mp based on their mp regen.
  *
  * @memberof Game_Battler
  */
 public dynamic function regenerateMp(): Void;

 /**
  * Has the battler regenerate tp based on their tp regen.
  *
  * @memberof Game_Battler
  */
 public dynamic function regenerateTp(): Void;

 /**
  * Has the battler regenerate all resources based on
  * their respective regeneration stats.
  * @memberof Game_Battler
  */
 public dynamic function regenerateAll(): Void;

 /**
  * Handler for when battle has started.
  *
  * @memberof Game_Battler
  */
 public dynamic function onBattleStart(): Void;

 /**
  * Handler for when all actions end
  */
 public dynamic function onAllActionsEnd(): Void;

 /**
  * Handler for when turn ends
  */
 public dynamic function onTurnEnd(): Void;

 /**
  * Handler for when battle ends
  */
 public dynamic function onBattleEnd(): Void;

 /**
  * Handler for when damage is done
  * @param value
  */
 public dynamic function onDamage(value: Int): Void;

 /**
  * Sets the action state
  * @param actionState
  */
 public dynamic function setActionState(actionState: ActionState): Void;

 public dynamic function isUndecided(): Bool;

 /**
  * Returns true if the battler is inputting commands in battle.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public dynamic function isInputting(): Bool;

 /**
  * Returns true if the battler is waiting in battle.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public dynamic function isWaiting(): Bool;

 /**
  * Returns true if the battler is performing an action in battle.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public dynamic function isActing(): Bool;

 /**
  * Returns true if the battler is chanting in combat.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public dynamic function isChanting(): Bool;

 /**
  * Returns true if the battler is waiting to guard.
  *
  * @returns {Bool}
  * @memberof Game_Battler
  */
 public dynamic function isGuardWaiting(): Bool;

 /**
  * Perform action start motion, given the specified game action.
  *
  * @param {Game_Action} action
  * @memberof Game_Battler
  */
 public dynamic function performActionStart(action: Game_Action): Void;

 /**
  * Perform given action motion.
  *
  * @param {Game_Action} action
  * @memberof Game_Battler
  */
 public dynamic function performAction(action: Game_Action): Void;

 /**
  * Perform action end motion.
  *
  * @memberof Game_Battler
  */
 public dynamic function performActionEnd(): Void;

 /**
  * Perform damage motion.
  *
  * @memberof Game_Battler
  */
 public dynamic function performDamage(): Void;

 /**
  * Perform miss motion.
  *
  * @memberof Game_Battler
  */
 public dynamic function performMiss(): Void;

 /**
  * Perform recovery motion.
  *
  * @memberof Game_Battler
  */
 public dynamic function performRecovery(): Void;

 /**
  * Perform evasion motion.
  *
  * @memberof Game_Battler
  */
 public dynamic function performEvasion(): Void;

 /**
  * Perform magic evasion motion.
  *
  * @memberof Game_Battler
  */
 public dynamic function performMagicEvasion(): Void;

 /**
  * Perform counter motion.
  *
  * @memberof Game_Battler
  */
 public dynamic function performCounter(): Void;

 /**
  * Performs the reflect motion.
  *
  * @memberof Game_Battler
  */
 public dynamic function performReflection(): Void;

 /**
  * Perform substitute motion with the specified game battler.
  *
  * @param {Game_Battler} target
  * @memberof Game_Battler
  */
 public dynamic function performSubstitute(target: Game_Battler): Void;

 /**
  * Performs the collapse motion.
  *
  * @memberof Game_Battler
  */
 public dynamic function performCollapse(): Void;
}
