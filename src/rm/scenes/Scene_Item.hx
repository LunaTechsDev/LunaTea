package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_ItemCategory;

/**
 * -----------------------------------------------------------------------------
 * Scene_Item
 *
 * The scene class of the item screen.
 * @class Scene_Item
 * @extends {Scene_ItemBase}
 */
@:expose("Scene_Item")
@:native("Scene_Item")
extern class Scene_Item extends Scene_ItemBase {
 private var _categoryWindow: Window_ItemCategory;

 #if !compileMV
 public dynamic function categoryWindowRect(): Rectangle;
 public dynamic function itemWindowRect(): Rectangle;
 #end

 /**
  * Creates the category window on the
  * item scene.
  * @memberof Scene_Item
  */
 public dynamic function createCategoryWindow(): Void;

 /**
  * Creates the item window on the item
  * scene.
  * @memberof Scene_Item
  */
 public dynamic function createItemWindow(): Void;

 /**
  * Handler for when a cataegory is selected
  * on the item scene.
  * @memberof Scene_Item
  */
 public dynamic function onCategoryOk(): Void;

 /**
  * Handler for when an item is selected
  * on the item scene.
  * @memberof Scene_Item
  */
 public dynamic function onItemOk(): Void;

 /**
  * Handler for when an item selection
  * is canceled on the item scene.
  * @memberof Scene_Item
  */
 public dynamic function onItemCancel(): Void;

 /**
  * Plays a sound effect when the
  * item is confirmed.
  * @memberof Scene_Item
  */
 public dynamic function playSeForItem(): Void;
}
