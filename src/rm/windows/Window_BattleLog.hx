package rm.windows;

import rm.types.RPG.UsableItem;
import rm.types.RM.BattleLogMethod;
import rm.sprites.Spriteset_Battle;
import rm.objects.Game_Action;
import rm.core.Rectangle;
import rm.objects.Game_Battler;

/**
 * -----------------------------------------------------------------------------
 * Window_BattleLog
 *
 * The window for displaying battle progress. No frame is displayed, but it is
 * handled as a window for convenience.
 * @class Window_BattleLog
 */
@:expose("Window_BattleLog")
@:native("Window_BattleLog")
extern class Window_BattleLog extends Window_Base {
 private var _lines: Array<String>;
 private var _methods: Array<BattleLogMethod>;
 private var _waitCount: Int;
 private var _waitMode: String;
 private var _baseLineStack: Array<Int>;
 private var _spriteset: Spriteset_Battle;
 #if compileMV
 public dynamic function new();
 public dynamic function initialize(): Void;
 #else
 public dynamic function new(rect: Rectangle);
 public dynamic function initialize(rect: Rectangle): Void;
 #end
 public dynamic function setSpriteset(spriteset: Spriteset_Battle): Void;
 public dynamic function windowWidth(): Int;
 public dynamic function windowHeight(): Int;
 public dynamic function maxLines(): Int;
 public dynamic function createBackBitmap(): Void;
 public dynamic function createBackSprite(): Void;
 public dynamic function numLines(): Int;
 public dynamic function messageSpeed(): Int;
 public dynamic function isBusy(): Bool;
 public dynamic function updateWait(): Bool;
 public dynamic function updateWaitCount(): Bool;
 public dynamic function updateWaitMode(): Bool;
 public dynamic function setWaitMode(waitMode: String): Void;
 public dynamic function callNextMethod(): Void;
 public dynamic function isFastForward(): Bool;
 public dynamic function push(methodName: String, args: Array<Dynamic>): Void;
 public dynamic function clear(): Void;
 public dynamic function wait(): Void;
 public dynamic function waitForEffect(): Void;
 public dynamic function waitForMovement(): Void;
 public dynamic function addText(text: String): Void;
 public dynamic function pushBaseLine(): Void;
 public dynamic function popBaseLine(): Void;
 public dynamic function waitForNewLine(): Void;
 public dynamic function popupDamage(target: Game_Battler): Void;
 public dynamic function performActionStart(subject: Game_Battler,
  action: Game_Action): Void;
 public dynamic function performAction(subject: Game_Battler,
  action: Game_Action): Void;
 public dynamic function performActionEnd(subject: Game_Battler): Void;
 public dynamic function performDamage(target: Game_Battler): Void;
 public dynamic function performMiss(target: Game_Battler): Void;
 public dynamic function performRecovery(target: Game_Battler): Void;
 public dynamic function performEvasion(target: Game_Battler): Void;
 public dynamic function performMagicEvasion(target: Game_Battler): Void;
 public dynamic function performCounter(target: Game_Battler): Void;
 public dynamic function performReflection(target: Game_Battler): Void;
 public dynamic function performSubstitute(substitute: Game_Battler,
  target: Game_Battler): Void;
 public dynamic function performCollapse(target: Game_Battler): Void;
 public dynamic function showAnimation(subject: Game_Battler,
  targets: Game_Battler, animationId: Int): Void;
 public dynamic function showAttackAnimation(subject: Game_Battler,
  targets: Game_Battler): Void;
 public dynamic function showActorAttackAnimation(subject: Game_Battler,
  targets: Game_Battler): Void;
 public dynamic function showEnemyAttackAnimation(subject: Game_Battler,
  targets: Game_Battler): Void;
 public dynamic function showNormalAnimation(targets: Game_Battler,
  animationId: Int, mirror: Bool): Void;
 public dynamic function animationBaseDelay(): Int;
 public dynamic function animationNextDelay(): Int;
 public dynamic function drawBackground(): Void;
 public dynamic function backRect(): Rectangle;
 public dynamic function backColor(): String;
 public dynamic function backPaintOpacity(): Int;
 public dynamic function drawLineText(index: Int): Void;
 public dynamic function startTurn(): Void;
 public dynamic function startAction(subject: Game_Battler,
  action: Game_Action, targets: Array<Game_Battler>): Void;
 public dynamic function endAction(subject: Game_Battler): Void;
 public dynamic function displayCurrentState(subject: Game_Battler): Void;
 public dynamic function displayRegeneration(subject: Game_Battler): Void;
 public dynamic function displayAction(subject: Game_Battler,
  item: UsableItem): Void;
 public dynamic function displayCounter(target: Game_Battler): Void;
 public dynamic function displayReflection(target: Game_Battler): Void;
 public dynamic function displaySubstitute(substitute: Game_Battler,
  target: Game_Battler): Void;
 public dynamic function displayActionResults(subject: Game_Battler,
  targt: Game_Battler): Void;
 public dynamic function displayFailure(target: Game_Battler): Void;
 public dynamic function displayCritical(target: Game_Battler): Void;
 public dynamic function displayDamage(target: Game_Battler): Void;
 public dynamic function displayMiss(target: Game_Battler): Void;
 public dynamic function displayEvasion(target: Game_Battler): Void;
 public dynamic function displayHpDamage(target: Game_Battler): Void;
 public dynamic function displayMpDamage(target: Game_Battler): Void;
 public dynamic function displayTpDamage(target: Game_Battler): Void;
 public dynamic function displayAffectedStatus(target: Game_Battler): Void;
 public dynamic function displayAutoAffectedStatus(target: Game_Battler): Void;
 public dynamic function displayChangedStates(target: Game_Battler): Void;
 public dynamic function displayAddedStates(target: Game_Battler): Void;
 public dynamic function displayRemovedStates(target: Game_Battler): Void;
 public dynamic function displayChangedBuffs(target: Game_Battler): Void;

 /**
  *
  * @param target
  * @param buffs list of integers representing buff Ids
  * @param fmt
  */
 public dynamic function displayBuffs(target: Game_Battler, buffs: Array<Int>,
  fmt: String): Void;

 public dynamic function makeHpDamageText(target: Game_Battler): Void;
 public dynamic function makeMpDamageText(target: Game_Battler): String;
 public dynamic function makeTpDamageText(target: Game_Battler): String;
}
