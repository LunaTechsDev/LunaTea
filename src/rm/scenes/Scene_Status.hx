package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_Status;

/**
 * Scene class of the status screen in RPGMakerMV.
 */
@:expose("Scene_Status")
@:native("Scene_Status")
extern class Scene_Status extends Scene_MenuBase {
 private var _statusWindow: Window_Status;

 #if !compileMV
 public dynamic function createProfileWindow(): Void;
 public dynamic function createStatusWindow(): Void;
 public dynamic function createStatusParamsWindow(): Void;
 public dynamic function createStatusEquipWindow(): Void;
 public dynamic function statusParamsWindowRect(): Rectangle;
 public dynamic function statusEquipWindowRect(): Rectangle;
 public dynamic function statusParamsWidth(): Int;
 public dynamic function statusParamsHeight(): Int;
 public dynamic function profileHeight(): Int;
 #end

 /**
  * Refreshes the actor within the status scene.
  *
  * @memberof Scene_Status
  */
 public dynamic function refreshActor(): Void;

 /**
  * Handler for when the actor is changed within the status scene.
  *
  * @memberof Scene_Status
  */
 public dynamic function onActorChange(): Void;
}
