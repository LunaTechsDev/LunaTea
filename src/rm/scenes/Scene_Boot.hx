package rm.scenes;

import js.lib.Date;

@:expose("Scene_Boot")
@:native("Scene_Boot")
extern class Scene_Boot extends Scene_Base {
 private var _startDate: Date;

 @:native("_databaseLoaded")
 public var __databaseLoaded: Bool;
 private var _databaseLoaded: Bool;

 #if !compileMV
 public dynamic function onDatabaseLoaded(): Void;

 public dynamic function setEncryptionInfo(): Void;
 public dynamic function loadPlayerData(): Void;

 public dynamic function loadGameFonts(): Void;

 public dynamic function isPlayerDataLoaded(): Void;

 public dynamic function startNormalGame(): Void;
 public dynamic function resizeScreen(): Void;
 public dynamic function adjustBoxSize(): Void;
 public dynamic function adjustWindow(): Void;
 #end

 /**
  * Loads the system images upon booting the game.
  */
 public dynamic function loadSystemImages(): Void;

 /**
  * Loads the system window image for showing all windows in game.
  */
 public dynamic function loadSystemWindowImage(): Void;

 /**
  * Returns true if the game font is loaded.
  * @return Bool
  */
 public dynamic function isGameFontLoaded(): Bool;

 public dynamic function updateDocumentTitle(): Void;

 /**
  * Checks the player location upon booting the game.
  */
 public dynamic function checkPlayerLocation(): Void;
}
