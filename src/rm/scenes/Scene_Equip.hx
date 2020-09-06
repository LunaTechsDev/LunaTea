package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_EquipSlot;
import rm.windows.Window_EquipStatus;
import rm.windows.Window_EquipItem;
import rm.windows.Window_EquipCommand;

/**
 * Scene class of the equipment screen.
 */
@:expose("Scene_Equip")
@:native("Scene_Equip")
extern class Scene_Equip extends Scene_MenuBase {
 private var _statusWindow: Window_EquipStatus;
 private var _commandWindow: Window_EquipCommand;
 private var _slotWindow: Window_EquipSlot;
 private var _itemWindow: Window_EquipItem;

 #if !compileMV
 public dynamic function statusWindowRect(): Rectangle;
 public dynamic function commandWindowRect(): Rectangle;
 public dynamic function slotWindowRect(): Rectangle;
 public dynamic function itemWindowRect(): Rectangle;
 public dynamic function executeEquipChange(): Void;
 #end

 /**
  * Creates the status window within the equip scene.
  *
  * @memberof Scene_Equip
  */
 public dynamic function createStatusWindow(): Void;

 /**
  * Creates the status window within the equip scene.
  *
  * @memberof Scene_Equip
  */
 public dynamic function createCommandWindow(): Void;

 /**
  * Creates the slot window within the  equip scene.
  *
  * @memberof Scene_Equip
  */
 public dynamic function createSlotWindow(): Void;

 /**
  * Creates the item window within the equip scene.
  *
  * @memberof Scene_Equip
  */
 public dynamic function createItemWindow(): Void;

 /**
  * Refreshes the actor within the equip scene.
  *
  * @memberof Scene_Equip
  */
 public dynamic function refreshActor(): Void;

 /**
  * Handler for the equip command.
  *
  * @memberof Scene_Equip
  */
 public dynamic function commandEquip(): Void;

 /**
  * Handler for the optimize command.
  *
  * @memberof Scene_Equip
  */
 public dynamic function commandOptimize(): Void;

 public dynamic function commandClear(): Void;
 public dynamic function onSlotOk(): Void;
 public dynamic function onSlotCancel(): Void;
 public dynamic function onItemOk(): Void;
 public dynamic function onItemCancel(): Void;
 public dynamic function onActorChange(): Void;
}
