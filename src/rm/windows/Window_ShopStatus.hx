package rm.windows;

import rm.types.RPG.BaseItem;
import rm.objects.Game_Actor;
import rm.types.LunaTea.ParameterId;
import rm.types.RPG.EquipItem;
import rm.types.LunaTea.EquipTypeId;

/**
 * -----------------------------------------------------------------------------
 * Window_ShopStatus
 *
 * The window for displaying number of items in possession and the actor's
 * equipment on the shop screen.
 * @class Window_ShopStatus
 */
@:expose("Window_ShopStatus")
@:native("Window_ShopStatus")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_ShopStatus extends Window_Base {
 private var _item: BaseItem;
 private var _pageIndex: Float;

 /**
  * Creates an instance of Window_ShopStatus.
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @param {number} height
  * @memberof Window_ShopStatus
  */
 public function new(x: Float, y: Float, width: Float, height: Float);

 /**
  * Refreshes the window contents.
  *
  * @memberof Window_ShopStatus
  */
 public function refresh(): Void;

 /**
  * Sets the item in the window shop status for display.
  */
 public function setItem(item: BaseItem): Void;

 /**
  * Returns true if the item in the
  * shop status window is an equippable item.
  */
 public function isEquipItem(): Bool;

 public function drawPossession(x: Float, y: Float): Void;

 /**
  * Draw Equip Information.
  */
 public function drawEquipInfo(x: Float, y: Float): Void;

 public function statusMembers(): Array<Game_Actor>;

 /**
  * Returns the page size.
  *
  * @returns {number}
  * @memberof Window_ShopStatus
  */
 public function pageSize(): Float;

 /**
  * Returns the max number of pages.
  *
  * @returns {number}
  * @memberof Window_ShopStatus
  */
 public function maxPages(): Float;

 public function drawActorEquipInfo(x: Float, y: Float,
  actor: Game_Actor): Void;

 public function drawActorParamChange(x: Float, y: Float, actor: Game_Actor,
  item1: EquipItem): Void;

 /**
  * Returns the parameter id.
  *
  * @returns {number}
  * @memberof Window_ShopStatus
  */
 public function paramId(): ParameterId;

 /**
  * Returns the current item equiped by the given actor when
  * the respective equipment Id is passed.
  * @param {Game_Actor} actor
  * @param {number} etypeId
  * @returns {RPG.EquipItem}
  * @memberof Window_ShopStatus
  */
 public function currentEquippedItem(actor: Game_Actor,
  etypeId: EquipTypeId): EquipItem;

 /**
  * Updates the current page.
  *
  * @memberof Window_ShopStatus
  */
 public function updatePage(): Void;

 /**
  * Determines if page can be changed.
  *
  * @returns {boolean}
  * @memberof Window_ShopStatus
  */
 public function isPageChangeEnabled(): Bool;

 public function isPageChangeRequested(): Bool;

 /**
  * Determines if the window is touched within it's frame.
  *
  * @returns {boolean}
  * @memberof Window_ShopStatus
  */
 public function isTouchedInsideFrame(): Bool;

 /**
  * Changes the current page.
  *
  * @memberof Window_ShopStatus
  */
 public function changePage(): Void;
}
