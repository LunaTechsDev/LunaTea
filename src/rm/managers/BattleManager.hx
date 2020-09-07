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
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class BattleManager {
 private var _phase: String;

 private var _canEscape: Bool;

 private var _canLose: Bool;

 private var _battleTest: Bool;

 private var _eventCallback: () -> Void;

 private var _preemptive: Bool;

 private var _surprise: Bool;

 private var _actorIndex: Int;

 private var _actionForcedBattler: Game_Battler;

 private var _mapBgm: AudioParameters;

 private var _mapBgs: AudioParameters;

 private var _actionBattlers: Array<Game_Battler>;

 private var _subject: Game_Battler;

 private var _action: Game_Action;

 private var _targets: Array<Game_Battler>;

 private var _logWindow: Window_BattleLog;

 private var _statusWindow: Window_BattleStatus;

 private var _spriteset: Spriteset_Battle;

 private var _escapeRatio: Float;

 private var _escaped: Bool;

 private var _rewards: BattleRewards;

 public static function setup(troopId: Int, canEscape: Bool,
  canLose: Bool): Void;

 public static function initMembers(): Void;

 public static function isBattleTest(): Bool;

 public static function setBattleTest(battleTest: Bool): Void;

 public static function setEventCallback(callback: () -> Void): Void;

 public static function setLogWindow(logWindow: Window_BattleLog): Void;

 public static function setStatusWindow(statusWindow: Window_BattleStatus): Void;

 public static function setSpriteset(spriteset: Spriteset_Battle): Void;

 public static function onEncounter(): Void;

 public static function ratePreemptive(): Float;

 public static function rateSurprise(): Float;

 public static function saveBgmAndBgs(): Void;

 public static function playBattleBgm(): Void;

 public static function playVictoryMe(): Void;

 public static function playDefeatMe(): Void;

 public static function replayBgmAndBgs(): Void;

 public static function makeEscapeRatio(): Void;

 public static function update(): Void;

 public static function updateEvent(): Bool;

 public static function updateEventMain(): Bool;

 public static function isBusy(): Bool;

 public static function isInputting(): Bool;

 public static function isInTurn(): Bool;

 public static function isTurnEnd(): Bool;

 public static function isAborting(): Bool;

 public static function isBattleEnd(): Bool;

 public static function canEscape(): Bool;

 public static function canLose(): Bool;

 public static function isEscaped(): Bool;
 public static function actor(): Game_Actor;

 public static function clearActor(): Void;

 public static function changeActor(newActorIndex: Int,
  lastActorActionState: String): Void;

 public static function startBattle(): Void;

 public static function displayStartMessages(): Void;

 public static function startInput(): Void;

 public static function inputtingAction(): Game_Action;

 public static function selectNextCommand(): Void;

 public static function selectPreviousCommand(): Void;

 public static function refreshStatus(): Void;

 public static function startTurn(): Void;

 public static function updateTurn(): Void;

 public static function processTurn(): Void;

 public static function endTurn(): Void;

 public static function updateTurnEnd(): Void;

 public static function getNextSubject(): Game_Battler;

 public static function allBattleMembers(): Array<Game_Battler>;

 public static function makeActionOrders(): Void;

 public static function startAction(): Void;

 public static function updateAction(): Void;

 public static function endAction(): Void;

 public static function invokeAction(): Void;

 public static function invokeNormalAction(): Void;

 public static function invokeCounterAttack(): Void;

 public static function invokeMagicReflection(): Void;

 public static function applySubstitute(target: Game_Battler): Game_Battler;

 public static function checkSubstitute(target: Game_Battler): Bool;

 public static function isActionForced(): Bool;

 public static function forceAction(battler: Game_Battler): Void;

 public static function processForcedAction(): Void;

 public static function abort(): Void;

 public static function checkBattleEnd(): Bool;

 public static function checkAbort(): Bool;

 public static function processVictory(): Void;

 public static function processEscape(): Bool;

 public static function processAbort(): Void;

 public static function processDefeat(): Void;

 public static function endBattle(result: BattleResult): Void;

 public static function updateBattleEnd(): Void;

 public static function makeRewards(): Void;

 public static function displayVictoryMessage(): Void;

 public static function displayDefeatMessage(): Void;

 public static function displayEscapeSuccessMessage(): Void;

 public static function displayEscapeFailureMessage(): Void;

 public static function displayRewards(): Void;

 public static function displayExp(): Void;

 public static function displayGold(): Void;

 public static function displayDropItems(): Void;

 public static function gainRewards(): Void;

 public static function gainExp(): Void;

 public static function gainGold(): Void;

 public static function gainDropItems(): Void;
}
