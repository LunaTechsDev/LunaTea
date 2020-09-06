package rm.objects;

import rm.types.RPG.AudioFile;

/**
 * Game_System
 * The game object class representing system data.
 * @class Game_System
 */
@:expose("Game_System")
@:native("Game_System")
extern class Game_System {
 private var _saveEnabled: Bool;
 private var _menuEnabled: Bool;
 private var _encounterEnabled: Bool;
 private var _formationEnabled: Bool;
 private var _battleCount: Int;
 private var _winCount: Int;
 private var _escapeCount: Int;
 private var _saveCount: Int;
 private var _versionId: Int;
 private var _framesOnSave: Int;
 private var _bgmOnSave: AudioFile;
 private var _bgsOnSave: AudioFile;
 private var _windowTone: Array<Int>;
 private var _battleBgm: AudioFile;
 private var _victoryMe: AudioFile;
 private var _defeatMe: AudioFile;
 private var _savedBgm: AudioFile;
 private var _walkingBgm: AudioFile;

 public dynamic function initialize(): Void;
 public dynamic function isJapanese(): Bool;
 public dynamic function isChinese(): Bool;
 public dynamic function isKorean(): Bool;
 public dynamic function isCJK(): Bool;
 public dynamic function isRussian(): Bool;
 public dynamic function isSideView(): Bool;
 public dynamic function isAutoSaveEnabled(): Bool;
 public dynamic function isSaveEnabled(): Bool;

 /**
  * Disables the ability to save the game.
  *
  * @memberof Game_System
  */
 public dynamic function disableSave(): Void;

 /**
  * Enables the ability to save the game.
  *
  * @memberof Game_System
  */
 public dynamic function enableSave(): Void;

 /**
  * Returns true if the menu is enabled.
  *
  * @returns {Bool}
  * @memberof Game_System
  */
 public dynamic function isMenuEnabled(): Bool;

 /**
  * Disables the menu from being accessed.
  *
  * @memberof Game_System
  */
 public dynamic function disableMenu(): Void;

 /**
  * Enables the menu to be accessed.
  *
  * @memberof Game_System
  */
 public dynamic function enableMenu(): Void;

 public dynamic function isEncounterEnabled(): Bool;

 /**
  * Returns true if the player can encounter enemies.
  *
  * @memberof Game_System
  */
 public dynamic function disableEncounter(): Void;

 public dynamic function enableEncounter(): Void;
 public dynamic function isFormationEnabled(): Bool;

 /**
  * Disables the use of the formation command in the menu.
  *
  * @memberof Game_System
  */
 public dynamic function disableFormation(): Void;

 /**
  * Enables the use of the formation command in the menu.
  *
  * @memberof Game_System
  */
 public dynamic function enableFormation(): Void;

 /**
  * Returns the number of battles the player has participated in.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public dynamic function battleCount(): Int;

 /**
  * Returns the number of the wins the player has gained in battle.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public dynamic function winCount(): Int;

 /**
  * Returns the number of battles the player has escaped from in battle.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public dynamic function escapeCount(): Int;

 /**
  * Returns the number of saves the player has made in game.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public dynamic function saveCount(): Int;

 /**
  * Returns the version id represented in the database.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public dynamic function versionId(): Int;

 /**
  * Returns the current save file id
  *
  * @returns {number}
  * @memberof Game_System
  */
 public dynamic function savefileId(): Int;

 /**
  * Sets the save file id
  *
  * @returns {Void}
  * @memberof Game_System
  */
 public dynamic function setSavefileId(savefileId: Int): Void;

 /**
  * Returns the tone of the window in the database.
  *
  * @returns {Array<Int>}
  * @memberof Game_System
  */
 public dynamic function windowTone(): Array<Int>;

 /**
  * Sets the window tone, given an array
  * of rgb. Example:  [0, 255, 255].
  * @param {Array<Int>} value
  * @memberof Game_System
  */
 public dynamic function setWindowTone(value: Array<Int>): Void;

 /**
  * Returns the current battle background music.
  *
  * @returns {AudioFile}
  * @memberof Game_System
  */
 public dynamic function battleBgm(): AudioFile;

 /**
  * Sets the battle background music.
  *
  * @param {AudioFile} value
  * @memberof Game_System
  */
 public dynamic function setBattleBgm(value: AudioFile): Void;

 /**
  * Returns the victory musical effect.
  *
  * @returns {AudioFile}
  * @memberof Game_System
  */
 public dynamic function victoryMe(): AudioFile;

 /**
  * Sets the victory musical effect.
  *
  * @param {AudioFile} value
  * @memberof Game_System
  */
 public dynamic function setVictoryMe(value: AudioFile): Void;

 /**
  * Returns the defeat musical effect.
  *
  * @returns {AudioFile}
  * @memberof Game_System
  */
 public dynamic function defeatMe(): AudioFile;

 public dynamic function onBattleStart(): Void;
 public dynamic function onBattleWin(): Void;
 public dynamic function onBattleEscape(): Void;
 public dynamic function onBeforeSave(): Void;
 public dynamic function onAfterLoad(): Void;

 /**
  * Returns the total play time.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public dynamic function playtime(): Int;

 public dynamic function playtimeText(): String;

 /**
  * Saves background music to the game system object.
  *
  * @memberof Game_System
  */
 public dynamic function saveBgm(): Void;

 /**
  * Replays the saved background music.
  *
  * @memberof Game_System
  */
 public dynamic function replayBgm(): Void;

 /**
  * Saves the walking background music.
  *
  * @memberof Game_System
  */
 public dynamic function saveWalkingBgm(): Void;

 /**
  * Replays the saved walking background music.
  *
  * @memberof Game_System
  */
 public dynamic function replayWalkingBgm(): Void;

 /**
  * Saves the second walking bgm from the map data.
  *
  * @memberof Game_System
  */
 public dynamic function saveWalkingBgm2(): Void;

 /**
  * Returns the main font face
  *
  * @returns {String}
  * @memberof Game_System
  */
 public dynamic function mainFontFace(): String;

 /**
  * Returns the font face for number
  *
  * @returns {String}
  * @memberof Game_System
  */
 public dynamic function numberFontFace(): String;

 /**
  * Returns the main font size
  *
  * @returns {Int}
  * @memberof Game_System
  */
 public dynamic function mainFontSize(): Int;

 /**
  * Returns the window padding
  *
  * @returns {Int}
  * @memberof Game_System
  */
 public dynamic function windowPadding(): Int;
}
