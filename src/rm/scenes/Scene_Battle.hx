package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_BattleItem;
import rm.windows.Window_PartyCommand;
import rm.windows.Window_BattleStatus;
import rm.windows.Window_Message;
import rm.windows.Window_Help;
import rm.windows.Window_BattleSkill;
import rm.windows.Window_BattleEnemy;
import rm.windows.Window_ScrollText;
import rm.windows.Window_BattleLog;
import rm.windows.Window_BattleActor;
import rm.windows.Window_ActorCommand;
import rm.sprites.Spriteset_Battle;

/**
 * Scene class of the battle screen.
 */
@:expose("Scene_Battle")
@:native("Scene_Battle")
#if compileMV
extern class Scene_Battle extends Scene_Base {
#else
extern class Scene_Battle extends Scene_Message {
#end
private var _spriteset: Spriteset_Battle;
private var _statusWindow: Window_BattleStatus;
private var _partyCommandWindow: Window_PartyCommand;
private var _actorCommandWindow: Window_ActorCommand;
private var _skillWindow: Window_BattleSkill;
private var _itemWindow: Window_BattleItem;
private var _actorWindow: Window_BattleActor;
private var _enemyWindow: Window_BattleEnemy;
private var _logWindow: Window_BattleLog;
private var _helpWindow: Window_Help;
private var _messageWindow: Window_Message;
private var _scrollTextWindow: Window_ScrollText;
public dynamic function updateBattleProcess(): Void;
public dynamic function isAnyInputWindowActive(): Bool;
public dynamic function changeInputWindow(): Void;
#if !compileMV
public dynamic function updateVisibility(): Void;
public dynamic function updateLogWindowVisibility(): Void;
public dynamic function updateStatusWindowVisibility(): Void;
public dynamic function updateInputWindowVisibility(): Void;
public dynamic function needsInputWindowChange(): Bool;
public dynamic function isTimeActive(): Bool;
public dynamic function shouldAutosave(): Bool;
public dynamic function updateStatusWindowPosition(): Void;
public dynamic function statusWindowX(): Int;
public dynamic function shouldOpenStatusWindow(): Bool;
public dynamic function logWindowRect(): Rectangle;
public dynamic function statusWindowRect(): Rectangle;
public dynamic function partyCommandWindowRect(): Rectangle;
public dynamic function actorCommandWindowRect(): Rectangle;
public dynamic function helpWindowRect(): Rectangle;
public dynamic function skillWindowRect(): Rectangle;
public dynamic function itemWindowRect(): Rectangle;
public dynamic function actorWindowRect(): Rectangle;
public dynamic function enemyWindowRect(): Rectangle;
public dynamic function helpAreaTop(): Int;
public dynamic function helpAreaBottom(): Int;
public dynamic function helpAreaHeight(): Int;
public dynamic function mainAreaTop(): Int;
public dynamic function mainAreaBottom(): Int;
public dynamic function mainAreaHeight(): Int;
public dynamic function buttonAreaTop(): Int;
public dynamic function windowAreaHeight(): Int;
public dynamic function createButtons(): Void;
public dynamic function needsCancelButton(): Void;
public dynamic function createCancelButton(): Void;
public dynamic function needsPageButtons(): Void;
public dynamic function createPageButtons(): Void;
public dynamic function updatePageButtons(): Void;
public dynamic function arePageButtonsEnabled(): Bool;
public dynamic function closeCommandWindows(): Void;
public dynamic function hideSubInputWindows(): Void;
public dynamic function startEnemySelection(): Void;
#end

/**
 * Stops the battle scene.
 *
 * @memberof Scene_Battle
 */
public dynamic function stop(): Void;

/**
 * Returns true if the battle needs a slow fade out.
 *
 * @returns {boolean}
 * @memberof Scene_Battle
 */
public dynamic function needsSlowFadeOut(): Bool;

/**
 * Updates the status window on the battle scene.
 *
 * @memberof Scene_Battle
 */
public dynamic function updateStatusWindow(): Void;

/**
 * Updates the position of the battle scene windows.
 *
 * @memberof Scene_Battle
 */
public dynamic function updateWindowPositions(): Void;

/**
 * Creates all the display objects including:
 * the spritesheet, window layer, windows, and more.
 *
 * @memberof Scene_Battle
 */
public dynamic function createDisplayObjects(): Void;

/**
 * Creates the spriteset within
 * the battle scene. This includes
 * sprites for actors, enemies, etc.
 * @memberof Scene_Battle
 */
public dynamic function createSpriteset(): Void;

/**
 * Creates all the windows within the
 * battle scene.
 * @memberof Scene_Battle
 */
public dynamic function createAllWindows(): Void;

/**
 * Creates the log window.
 *
 * @memberof Scene_Battle
 */
public dynamic function createLogWindow(): Void;

public dynamic function createStatusWindow(): Void;
public dynamic function createPartyCommandWindow(): Void;

/**
 * Creates the actor command window.
 *
 * @memberof Scene_Battle
 */
public dynamic function createActorCommandWindow(): Void;

/**
 * Creates the help window.
 *
 * @memberof Scene_Battle
 */
public dynamic function createHelpWindow(): Void;

/**
 * Creates the skill window.
 *
 * @memberof Scene_Battle
 */
public dynamic function createSkillWindow(): Void;

/**
 * Creates the item window.
 *
 * @memberof Scene_Battle
 */
public dynamic function createItemWindow(): Void;

/**
 * Creates the actor window.
 *
 * @memberof Scene_Battle
 */
public dynamic function createActorWindow(): Void;

/**
 * Creates the enemy window.
 *
 * @memberof Scene_Battle
 */
public dynamic function createEnemyWindow(): Void;

/**
 * Creates the message window on the battle scene.
 *
 * @memberof Scene_Battle
 */
public dynamic function createMessageWindow(): Void;

/**
 * Creates the scroll text window.
 *
 * @memberof Scene_Battle
 */
public dynamic function createScrollTextWindow(): Void;

public dynamic function refreshStatus(): Void;
public dynamic function startPartyCommandSelection(): Void;

/**
 * Handler for the fight command on battle start..
 *
 * @memberof Scene_Battle
 */
public dynamic function commandFight(): Void;

/**
 * Handler for the escape command on battle start.
 *
 * @memberof Scene_Battle
 */
public dynamic function commandEscape(): Void;

public dynamic function startActorCommandSelection(): Void;

/**
 * Handler for the attack command.
 *
 * @memberof Scene_Battle
 */
public dynamic function commandAttack(): Void;

/**
 *
 * Handler for the skill command.
 *
 * @memberof Scene_Battle
 */
public dynamic function commandSkill(): Void;

/**
 * Handler for the guard command.
 *
 * @memberof Scene_Battle
 */
public dynamic function commandGuard(): Void;

/**
 * Handler for the item command.
 *
 * @memberof Scene_Battle
 */
public dynamic function commandItem(): Void;

/**
 * Selects the next command in the battle scene.
 *
 * @memberof Scene_Battle
 */
public dynamic function selectNextCommand(): Void;

/**
 * Selects the previous command in the battle scene.
 *
 * @memberof Scene_Battle
 */
public dynamic function selectPreviousCommand(): Void;

public dynamic function selectActorSelection(): Void;
public dynamic function onActorOk(): Void;
public dynamic function onActorCancel(): Void;
public dynamic function selectEnemySelection(): Void;

/**
 * Handler for when an enemy is selected.
 *
 * @memberof Scene_Battle
 */
public dynamic function onEnemyOk(): Void;

public dynamic function onEnemyCancel(): Void;

/**
 * Handler for when a skill is selected.
 *
 * @memberof Scene_Battle
 */
public dynamic function onSkillOk(): Void;

public dynamic function onSkillCancel(): Void;
public dynamic function onItemOk(): Void;
public dynamic function onItemCancel(): Void;
public dynamic function onSelectAction(): Void;
public dynamic function endCommandSelection(): Void;
}
