package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_MapName;
import rm.windows.Window_Message;
import rm.sprites.Spriteset_Map;
import rm.windows.Window_ScrollText;

/**
 * The scene class for the map screen.
 */
@:expose("Scene_Map")
@:native("Scene_Map")
extern class Scene_Map extends Scene_Base {
 private var _waitCount: Int;
 private var _encounterEffectDuration: Int;
 private var _mapLoaded: Bool;
 private var _touchCount: Int;
 private var _transfer: Bool;
 private var _spriteset: Spriteset_Map;
 private var _mapNameWindow: Window_MapName;
 private var _scrollTextWindow: Window_ScrollText;
 private var _messageWindow: Window_Message;

 #if !compileMV
 @:native("_lastMapWasNull")
 public var __lastMapWasNull: Bool;
 private var _lastMapWasNull: Bool;

 public dynamic function shouldAutosave(): Bool;
 public dynamic function onTransferEnd(): Void;
 public dynamic function isPlayerActive(): Bool;
 public dynamic function updateMenuButton(): Void;
 public dynamic function hideMenuButton(): Void;
 public dynamic function updateMapNameWindow(): Void;
 public dynamic function isAnyButtonPressed(): Bool;
 public dynamic function onMapTouch(): Void;
 public dynamic function mapNameWindowRect(): Rectangle;
 public dynamic function createButtons(): Void;
 public dynamic function createMenuButton(): Void;
 #end

 public var menuCalling: Bool;

 /**
  * Handler for when the map scene is loaded.
  *
  * @memberof Scene_Map
  */
 public dynamic function onMapLoaded(): Void;

 /**
  * Speeds up the updateMain if
  * the map scene is in fast forward mode.
  * @memberof Scene_Map
  */
 public dynamic function updateMainMultiply(): Void;

 /**
  * Updates the main $game globals
  * if the map scene is active.
  * @memberof Scene_Map
  */
 public dynamic function updateMain(): Void;

 /**
  * Returns true if the player
  * is holding down the confirm button to
  * fast forward through text.
  * @returns {boolean}
  * @memberof Scene_Map
  */
 public dynamic function isFastForward(): Bool;

 /**
  * Stops the map scene and prepares
  * for a new scene.
  * @memberof Scene_Map
  */
 public dynamic function stop(): Void;

 /**
  * Returns true if the map scene needs a slow fade in.
  *
  * @returns {boolean}
  * @memberof Scene_Map
  */
 public dynamic function needsFadeIn(): Bool;

 /**
  * Returns true if the map scene needs a slow fade out.
  *
  * @returns {boolean}
  * @memberof Scene_Map
  */
 public dynamic function needsSlowFadeOut(): Bool;

 public dynamic function updateWaitCount(): Bool;

 /**
  * Constantly checks if the player
  * is touching the map, then processes
  * a map touch for mouse based player character movement.
  * @memberof Scene_Map
  */
 public dynamic function updateDestination(): Void;

 /**
  * Returns true if the map scene is
  * active and the player can move. Used for
  * mouse movement on the map scene.
  * @returns {boolean}
  * @memberof Scene_Map
  */
 public dynamic function isMapTouchOk(): Bool;

 /**
  * Processes the map touch and turns it
  * into coordinates for the player character to move to.
  * @memberof Scene_Map
  */
 public dynamic function processMapTouch(): Void;

 public dynamic function isSceneChangeOk(): Bool;

 /**
  * Updates the scene.
  *
  * @memberof Scene_Map
  */
 public dynamic function updateScene(): Void;

 /**
  * Creates all the display objects on the map scene;
  * this includes the sprites, window layer, windows, and more.
  * @memberof Scene_Map
  */
 public dynamic function createDisplayObjects(): Void;

 /**
  * Creates the spriteset on the map scene;
  * this shows all the characters and events on the map.
  * @memberof Scene_Map
  */
 public dynamic function createSpriteset(): Void;

 /**
  * Creates all the windows on the map scene
  * contains other window creation methods.
  * @memberof Scene_Map
  */
 public dynamic function createAllWindows(): Void;

 /**
  * Creates the map name window within
  * the map scene; display map name.
  * @memberof Scene_Map
  */
 public dynamic function createMapNameWindow(): Void;

 /**
  * Creates the message window for displaying
  * text on the map scene. Commonly used with the
  * showText command.
  * @memberof Scene_Map
  */
 public dynamic function createMessageWindow(): Void;

 /**
  * Creates a scrolling text window on the map scene.
  *
  * @memberof Scene_Map
  */
 public dynamic function createScrollTextWindow(): Void;

 /**
  * Checks if the player is transferring;
  * if the player is transferring, move to a new map scene.
  * @memberof Scene_Map
  */
 public dynamic function updateTransferPlayer(): Void;

 /**
  * Processes starting an encounter on the map scene.
  *
  * @memberof Scene_Map
  */
 public dynamic function updateEncounter(): Void;

 /**
  * Processes calling the menu on the map scene.
  *
  * @memberof Scene_Map
  */
 public dynamic function updateCallMenu(): Void;

 /**
  * Returns true if the menu is enabled
  * in the database.
  * @returns {boolean}
  * @memberof Scene_Map
  */
 public dynamic function isMenuEnabled(): Bool;

 /**
  * Returns true if the menu is called
  * via an input trigger.
  * @returns {boolean}
  * @memberof Scene_Map
  */
 public dynamic function isMenuCalled(): Bool;

 /**
  * Calls the standard RPGMakerMV menu scene.
  *
  * @memberof Scene_Map
  */
 public dynamic function callMenu(): Void;

 /**
  * Checks if debug is called via input trigger
  * and starts the debug scene.
  *
  * @memberof Scene_Map
  */
 public dynamic function updateCallDebug(): Void;

 /**
  * Returns true if the debug
  * scene is called via button press and in play test mode.
  * @returns {boolean}
  * @memberof Scene_Map
  */
 public dynamic function isDebugCalled(): Void;

 public dynamic function fadeInForTransfer(): Void;
 public dynamic function fadeOutForTransfer(): Void;

 /**
  * Launches into the battle scene.
  *
  * @memberof Scene_Map
  */
 public dynamic function launchBattle(): Void;

 /**
  * Stops all audio on battle start.
  *
  * @memberof Scene_Map
  */
 public dynamic function stopAudioOnBattleStart(): Void;

 /**
  * Starts the encounter effect on the map scene.
  *
  * @memberof Scene_Map
  */
 public dynamic function startEncounterEffect(): Void;

 public dynamic function updateEncounterEffect(): Void;

 /**
  * Takes a snapshot of the map scene for displaying
  * on the battle scene if no battleback is present.
  * @memberof Scene_Map
  */
 public dynamic function snapForBattleBackground(): Void;

 /**
  * Starts a flash encounter effect on the map scene
  * given a duration of the flash.
  * @param {number} duration
  * @memberof Scene_Map
  */
 public dynamic function startFlashForEncounter(duration: Int): Void;

 /**
  * Returns the speed of the encounter effect.
  *
  * @returns {number}
  * @memberof Scene_Map
  */
 public dynamic function encounterEffectSpeed(): Int;
}
