package rm.objects;

import rm.types.RPG.AudioFile;

/**
 * Game_System
 * The game object class representing system data.
 * @class Game_System
 */
@:expose("Game_System")
@:native("Game_System")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_System {
 private var _saveEnabled: Bool;
 private var _menuEnabled: Bool;
 private var _encounterEnabled: Bool;
 private var _formationEnabled: Bool;
 private var _battleCount: Float;
 private var _winCount: Float;
 private var _escapeCount: Float;
 private var _saveCount: Float;
 private var _versionId: Float;
 private var _framesOnSave: Float;
 private var _bgmOnSave: AudioFile;
 private var _bgsOnSave: AudioFile;
 private var _windowTone: Array<Float>;
 private var _battleBgm: AudioFile;
 private var _victoryMe: AudioFile;
 private var _defeatMe: AudioFile;
 private var _savedBgm: AudioFile;
 private var _walkingBgm: AudioFile;

 public function initialize(): Void;
 public function isJapanese(): Bool;
 public function isChinese(): Bool;
 public function isKorean(): Bool;
 public function isCJK(): Bool;
 public function isRussian(): Bool;
 public function isSideView(): Bool;
 #if !compileMV
 public function isAutosaveEnabled(): Bool;
 #end
 public function isSaveEnabled(): Bool;

 /**
  * Disables the ability to save the game.
  *
  * @memberof Game_System
  */
 public function disableSave(): Void;

 /**
  * Enables the ability to save the game.
  *
  * @memberof Game_System
  */
 public function enableSave(): Void;

 /**
  * Returns true if the menu is enabled.
  *
  * @returns {Bool}
  * @memberof Game_System
  */
 public function isMenuEnabled(): Bool;

 /**
  * Disables the menu from being accessed.
  *
  * @memberof Game_System
  */
 public function disableMenu(): Void;

 /**
  * Enables the menu to be accessed.
  *
  * @memberof Game_System
  */
 public function enableMenu(): Void;

 public function isEncounterEnabled(): Bool;

 /**
  * Returns true if the player can encounter enemies.
  *
  * @memberof Game_System
  */
 public function disableEncounter(): Void;

 public function enableEncounter(): Void;
 public function isFormationEnabled(): Bool;

 /**
  * Disables the use of the formation command in the menu.
  *
  * @memberof Game_System
  */
 public function disableFormation(): Void;

 /**
  * Enables the use of the formation command in the menu.
  *
  * @memberof Game_System
  */
 public function enableFormation(): Void;

 /**
  * Returns the number of battles the player has participated in.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public function battleCount(): Float;

 /**
  * Returns the number of the wins the player has gained in battle.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public function winCount(): Float;

 /**
  * Returns the number of battles the player has escaped from in battle.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public function escapeCount(): Float;

 /**
  * Returns the number of saves the player has made in game.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public function saveCount(): Float;

 /**
  * Returns the version id represented in the database.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public function versionId(): Float;

 /**
  * Returns the current save file id
  *
  * @returns {number}
  * @memberof Game_System
  */
 public function savefileId(): Float;

 /**
  * Sets the save file id
  *
  * @returns {Void}
  * @memberof Game_System
  */
 public function setSavefileId(savefileId: Float): Void;

 /**
  * Returns the tone of the window in the database.
  *
  * @returns {Array<Float>}
  * @memberof Game_System
  */
 public function windowTone(): Array<Float>;

 /**
  * Sets the window tone, given an array
  * of rgb. Example:  [0, 255, 255].
  * @param {Array<Float>} value
  * @memberof Game_System
  */
 public function setWindowTone(value: Array<Float>): Void;

 /**
  * Returns the current battle background music.
  *
  * @returns {AudioFile}
  * @memberof Game_System
  */
 public function battleBgm(): AudioFile;

 /**
  * Sets the battle background music.
  *
  * @param {AudioFile} value
  * @memberof Game_System
  */
 public function setBattleBgm(value: AudioFile): Void;

 /**
  * Returns the victory musical effect.
  *
  * @returns {AudioFile}
  * @memberof Game_System
  */
 public function victoryMe(): AudioFile;

 /**
  * Sets the victory musical effect.
  *
  * @param {AudioFile} value
  * @memberof Game_System
  */
 public function setVictoryMe(value: AudioFile): Void;

 /**
  * Returns the defeat musical effect.
  *
  * @returns {AudioFile}
  * @memberof Game_System
  */
 public function defeatMe(): AudioFile;

 public function onBattleStart(): Void;
 public function onBattleWin(): Void;
 public function onBattleEscape(): Void;
 public function onBeforeSave(): Void;
 public function onAfterLoad(): Void;

 /**
  * Returns the total play time.
  *
  * @returns {number}
  * @memberof Game_System
  */
 public function playtime(): Float;

 public function playtimeText(): String;

 /**
  * Saves background music to the game system object.
  *
  * @memberof Game_System
  */
 public function saveBgm(): Void;

 /**
  * Replays the saved background music.
  *
  * @memberof Game_System
  */
 public function replayBgm(): Void;

 /**
  * Saves the walking background music.
  *
  * @memberof Game_System
  */
 public function saveWalkingBgm(): Void;

 /**
  * Replays the saved walking background music.
  *
  * @memberof Game_System
  */
 public function replayWalkingBgm(): Void;

 /**
  * Saves the second walking bgm from the map data.
  *
  * @memberof Game_System
  */
 public function saveWalkingBgm2(): Void;

 /**
  * Returns the main font face
  *
  * @returns {String}
  * @memberof Game_System
  */
 public function mainFontFace(): String;

 /**
  * Returns the font face for number
  *
  * @returns {String}
  * @memberof Game_System
  */
 public function numberFontFace(): String;

 /**
  * Returns the main font size
  *
  * @returns {Float}
  * @memberof Game_System
  */
 public function mainFontSize(): Float;

 /**
  * Returns the window padding
  *
  * @returns {Float}
  * @memberof Game_System
  */
 public function windowPadding(): Float;
}
