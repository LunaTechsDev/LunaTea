package rm.managers;

import rm.types.RM.AudioParameters;
import rm.windows.Window_BattleLog;
import rm.types.RM.BattleRewards;
import rm.windows.Window_BattleStatus;
import rm.sprites.Spriteset_Battle;
import rm.objects.Game_Actor;
import rm.objects.Game_Action;
import rm.objects.Game_Battler;
import rm.types.LunaTea.BattleResult;

/**
 * Manages the game battles to process all of the
 * events that happen within.
 */
@:expose("BattleManager")
@:native("BattleManager")
extern class BattleManager {
 @:native("_phase")
 public var __phase: String;
 private var _phase: String;

 @:native("_canEscape")
 public var __canEscape: Bool;
 private var _canEscape: Bool;

 @:native("_canLose")
 public var __canLose: Bool;
 private var _canLose: Bool;

 @:native("_battleTest")
 public var __battleTest: Bool;
 private var _battleTest: Bool;

 @:native("_eventCallback")
 public var __eventCallback: () -> Void;
 private var _eventCallback: () -> Void;

 @:native("_preemptive")
 public var __preemptive: Bool;
 private var _preemptive: Bool;

 @:native("_surprise")
 public var __surprise: Bool;
 private var _surprise: Bool;

 @:native("_actorIndex")
 public var __actorIndex: Int;
 private var _actorIndex: Int;

 @:native("_actionForceBattler")
 public var __actionForcedBattler: Game_Battler;
 private var _actionForcedBattler: Game_Battler;

 @:native("_mapBgm")
 public var __mapBgm: AudioParameters;
 private var _mapBgm: AudioParameters;

 @:native("_mapBgs")
 public var __mapBgs: AudioParameters;
 private var _mapBgs: AudioParameters;

 @:native("_actionBattlers")
 public var __actionBattlers: Array<Game_Battler>;
 private var _actionBattlers: Array<Game_Battler>;

 @:native("_subject")
 public var __subject: Game_Battler;
 private var _subject: Game_Battler;

 @:native("_action")
 public var __action: Game_Action;
 private var _action: Game_Action;

 @:native("_targets")
 public var __targets: Array<Game_Battler>;
 private var _targets: Array<Game_Battler>;

 @:native("_logWindow")
 public var __logWindow: Window_BattleLog;
 private var _logWindow: Window_BattleLog;

 @:native("_statusWindow")
 public var __statusWindow: Window_BattleStatus;
 private var _statusWindow: Window_BattleStatus;

 @:native("_spriteset")
 public var __spriteset: Spriteset_Battle;
 private var _spriteset: Spriteset_Battle;

 @:native("_escapeRatio")
 public var __escapeRatio: Float;
 private var _escapeRatio: Float;

 @:native("_escaped")
 public var __escaped: Bool;
 private var _escaped: Bool;

 @:native("_rewards")
 public var __rewards: BattleRewards;
 private var _rewards: BattleRewards;

 public static dynamic function setup(troopId: Int, canEscape: Bool,
  canLose: Bool): Void;

 public static dynamic function initMembers(): Void;

 public static dynamic function isBattleTest(): Bool;

 public static dynamic function setBattleTest(battleTest: Bool): Void;

 public static dynamic function setEventCallback(callback: () -> Void): Void;

 public static dynamic function setLogWindow(logWindow: Window_BattleLog): Void;

 public static dynamic function setStatusWindow(statusWindow: Window_BattleStatus): Void;

 public static dynamic function setSpriteset(spriteset: Spriteset_Battle): Void;

 public static dynamic function onEncounter(): Void;

 public static dynamic function ratePreemptive(): Float;

 public static dynamic function rateSurprise(): Float;

 public static dynamic function saveBgmAndBgs(): Void;

 public static dynamic function playBattleBgm(): Void;

 public static dynamic function playVictoryMe(): Void;

 public static dynamic function playDefeatMe(): Void;

 public static dynamic function replayBgmAndBgs(): Void;

 public static dynamic function makeEscapeRatio(): Void;

 public static dynamic function update(): Void;

 public static dynamic function updateEvent(): Bool;

 public static dynamic function updateEventMain(): Bool;

 public static dynamic function isBusy(): Bool;

 public static dynamic function isInputting(): Bool;

 public static dynamic function isInTurn(): Bool;

 public static dynamic function isTurnEnd(): Bool;

 public static dynamic function isAborting(): Bool;

 public static dynamic function isBattleEnd(): Bool;

 public static dynamic function canEscape(): Bool;

 public static dynamic function canLose(): Bool;

 public static dynamic function isEscaped(): Bool;
 public static dynamic function actor(): Game_Actor;

 public static dynamic function clearActor(): Void;

 public static dynamic function changeActor(newActorIndex: Int,
  lastActorActionState: String): Void;

 public static dynamic function startBattle(): Void;

 public static dynamic function displayStartMessages(): Void;

 public static dynamic function startInput(): Void;

 public static dynamic function inputtingAction(): Game_Action;

 public static dynamic function selectNextCommand(): Void;

 public static dynamic function selectPreviousCommand(): Void;

 public static dynamic function refreshStatus(): Void;

 public static dynamic function startTurn(): Void;

 public static dynamic function updateTurn(): Void;

 public static dynamic function processTurn(): Void;

 public static dynamic function endTurn(): Void;

 public static dynamic function updateTurnEnd(): Void;

 public static dynamic function getNextSubject(): Game_Battler;

 public static dynamic function allBattleMembers(): Array<Game_Battler>;

 public static dynamic function makeActionOrders(): Void;

 public static dynamic function startAction(): Void;

 public static dynamic function updateAction(): Void;

 public static dynamic function endAction(): Void;

 public static dynamic function invokeAction(): Void;

 public static dynamic function invokeNormalAction(): Void;

 public static dynamic function invokeCounterAttack(): Void;

 public static dynamic function invokeMagicReflection(): Void;

 public static dynamic function applySubstitute(target: Game_Battler): Game_Battler;

 public static dynamic function checkSubstitute(target: Game_Battler): Bool;

 public static dynamic function isActionForced(): Bool;

 public static dynamic function forceAction(battler: Game_Battler): Void;

 public static dynamic function processForcedAction(): Void;

 public static dynamic function abort(): Void;

 public static dynamic function checkBattleEnd(): Bool;

 public static dynamic function checkAbort(): Bool;

 public static dynamic function processVictory(): Void;

 public static dynamic function processEscape(): Bool;

 public static dynamic function processAbort(): Void;

 public static dynamic function processDefeat(): Void;

 public static dynamic function endBattle(result: BattleResult): Void;

 public static dynamic function updateBattleEnd(): Void;

 public static dynamic function makeRewards(): Void;

 public static dynamic function displayVictoryMessage(): Void;

 public static dynamic function displayDefeatMessage(): Void;

 public static dynamic function displayEscapeSuccessMessage(): Void;

 public static dynamic function displayEscapeFailureMessage(): Void;

 public static dynamic function displayRewards(): Void;

 public static dynamic function displayExp(): Void;

 public static dynamic function displayGold(): Void;

 public static dynamic function displayDropItems(): Void;

 public static dynamic function gainRewards(): Void;

 public static dynamic function gainExp(): Void;

 public static dynamic function gainGold(): Void;

 public static dynamic function gainDropItems(): Void;
}
