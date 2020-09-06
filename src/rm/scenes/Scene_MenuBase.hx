package rm.scenes;

import rm.sprites.Sprite_Button;
import rm.core.Rectangle;
import rm.core.Sprite;
import rm.windows.Window_Help;
import rm.objects.Game_Actor;

/**
 * The super class of all menu-type scenes
 */
@:expose("Scene_MenuBase")
@:native("Scene_MenuBase")
extern class Scene_MenuBase extends Scene_Base {
 /**
  * The current actor selected in the base menu scene.
  *
  * @protected
  * @type {Game_Actor}
  * @memberof Scene_MenuBase
  */
 private var _actor: Game_Actor;

 /**
  * The background sprite used to display the scene background.
  *
  * @protected
  * @type {Sprite}
  * @memberof Scene_MenuBase
  */
 private var _backgroundSprite: Sprite;

 /**
  * The help window attached to the base menu scene.
  *
  * @protected
  * @type {Window_Help}
  * @memberof Scene_MenuBase
  */
 private var _helpWindow: Window_Help;

 /**
  * Returns the current game actor.
  *
  * @returns {Game_Actor}
  * @memberof Scene_MenuBase
  */
 public dynamic function actor(): Game_Actor;

 #if !compileMV
 @:native("_cancelButton")
 public var __cancelButton: Sprite_Button;
 private var _cancelButton: Sprite_Button;

 @:native("_pageupButton")
 public var __pageupButton: Sprite_Button;
 private var _pageupButton: Sprite_Button;

 @:native("_pagedownButton")
 public var __pagedownButton: Sprite_Button;
 private var _pagedownButton: Sprite_Button;

 public dynamic function helpAreaTop(): Void;
 public dynamic function helpAreaBottom(): Void;
 public dynamic function helpAreaHeight(): Void;
 public dynamic function mainAreaTop(): Void;
 public dynamic function mainAreaBottom(): Void;
 public dynamic function mainAreaHeight(): Void;
 public dynamic function helpWindowRect(): Rectangle;
 public dynamic function createButtons(): Void;
 public dynamic function needsCancelButton(): Bool;
 public dynamic function createCancelButton(): Void;
 public dynamic function needsPageButtons(): Bool;
 public dynamic function createPageButtons(): Void;
 public dynamic function updatePageButtons(): Void;
 public dynamic function arePageButtonsEnabled(): Bool;
 #end

 /**
  * Updates the current actor.
  *
  * @memberof Scene_MenuBase
  */
 public dynamic function updateActor(): Void;

 /**
  * Creates the background of the base menu scene.
  *
  * @memberof Scene_MenuBase
  */
 public dynamic function createBackground(): Void;

 /**
  * Sets the background opacity of the base menu scene background.
  *
  * @param {number} opacity
  * @memberof Scene_MenuBase
  */
 public dynamic function setBackgroundOpacity(opacity: Int): Void;

 /**
  * Creates the help window.
  *
  * @memberof Scene_MenuBase
  */
 public dynamic function createHelpWindow(): Void;

 /**
  * Moves to the next actor in the party.
  *
  * @memberof Scene_MenuBase
  */
 public dynamic function nextActor(): Void;

 /**
  * Moves to the previous actor in the party.
  *
  * @memberof Scene_MenuBase
  */
 public dynamic function previousActor(): Void;

 public dynamic function onActorChange(): Void;
}
