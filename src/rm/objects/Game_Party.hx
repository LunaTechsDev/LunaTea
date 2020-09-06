package rm.objects;

import haxe.DynamicAccess;
import rm.types.RPG;
import rm.types.RPG.BaseItem;
import js.lib.Object;

/**
 * The game object for the party. Contains information
 * such as gold and items.
 */
@:expose("Game_Party")
@:native("Game_Party")
extern class Game_Party extends Game_Unit {
 public static var ABILITY_ENCOUNTER_HALF: Int;
 public static var ABILITY_ENCOUNTER_NONE: Int;
 public static var ABILITY_CANCEL_SURPRISE: Int;
 public static var ABILITY_RAISE_PREEMPTIVE: Int;
 public static var ABILITY_GOLD_DOUBLE: Int;
 public static var ABILITY_DROP_ITEM_DOUBLE: Int;

 @:native("_gold")
 public var __gold: Int;
 private var _gold: Int;
 @:native("_steps")
 public var __steps: Int;
 private var _steps: Int;
 @:native("_lastItem")
 public var __lastItem: Game_Item;
 private var _lastItem: Game_Item;
 @:native("_menuActorId")
 public var __menuActorId: Int;
 private var _menuActorId: Int;
 @:native("_targetActorId")
 public var __targetActorId: Int;
 private var _targetActorId: Int;
 @:native("_actors")
 public var __actors: Array<Game_Actor>;
 private var _actors: Array<Game_Actor>;

 /**
  * Data structure.
  * [ItemId:Int] : Int
  */
 @:native("_items")
 public var __items: DynamicAccess<Dynamic>;

 /**
  * Data structure.
  * [ItemId:Int] : Int
  */
 private var _items: DynamicAccess<Dynamic>;

 /**
  * Data structure.
  * [weaponId:Int] : Int
  */
 @:native("_weapons")
 public var __weapons: DynamicAccess<Dynamic>;

 /**
  * Data structure.
  * [weaponId:Int] : Int
  */
 private var _weapons: DynamicAccess<Dynamic>;

 /**
  * Data structure.
  * [armorId:Int] : Int
  */
 @:native("_armors")
 public var __armors: DynamicAccess<Dynamic>;

 /**
  * Data structure.
  * [armorId:Int] : Int
  */
 private var _armors: DynamicAccess<Dynamic>;

 /**
  * Returns all party members.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public dynamic function members(): Array<Game_Actor>;

 /**
  * Returns the living party members.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public dynamic function aliveMembers(): Array<Game_Actor>;

 /**
  * Returns the dead party members.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public dynamic function deadMembers(): Array<Game_Actor>;

 /**
  * Returns the movable members in the party.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public dynamic function movableMembers(): Array<Game_Actor>;

 /**
  * Returns the battle members in the party.
  *
  * @returns {Array<Game_Actor>}
  * @memberof Game_Party
  */
 public dynamic function battleMembers(): Array<Game_Actor>;

 /**
  * Initialize all party items.
  *
  * @memberof Game_Party
  */
 public dynamic function initAllItems(): Void;

 /**
  * Returns true if the game party exists.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public dynamic function exists(): Bool;

 /**
  * Returns the size of the party.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public dynamic function size(): Int;

 /**
  * Returns true if the game party is empty.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public dynamic function isEmpty(): Bool;

 /**
  * Returns the maximum battle members in the party.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public dynamic function maxBattleMembers(): Int;

 /**
  * Returns the leader of the party.
  *
  * @returns {Game_Actor}
  * @memberof Game_Party
  */
 public dynamic function leader(): Game_Actor;

 /**
  * Revive the battle members of the party.
  *
  * @memberof Game_Party
  */
 public dynamic function reviveBattleMembers(): Void;

 public dynamic function items(): Array<Item>;

 /**
  * Returns the weapons of the party.
  *
  * @returns {Array<RPG.Weapon>}
  * @memberof Game_Party
  */
 public dynamic function weapons(): Array<Weapon>;

 /**
  * Returns the party's armor.
  *
  * @returns {Array<RPG.Armor>}
  * @memberof Game_Party
  */
 public dynamic function armors(): Array<Armor>;

 /**
  * Returns the party's equippable items.
  *
  * @returns {Array<RPG.EquipItem>}
  * @memberof Game_Party
  */
 public dynamic function equipItems(): Array<EquipItem>;

 /**
  * Returns all items within the party's posession.
  * Items can be of equip item, or item type.
  * @returns {Array<RPG.BaseItem>}
  * @memberof Game_Party
  */
 public dynamic function allItems(): Array<BaseItem>;

 public dynamic function itemContainer(item: BaseItem): {ItemId: Int};

 /**
  * Sets up the starting party members.
  *
  * @memberof Game_Party
  */
 public dynamic function setupStartingMembers(): Void;

 public dynamic function name(): String;

 /**
  * Sets up a test battle with the party.
  *
  * @memberof Game_Party
  */
 public dynamic function setupBattleTest(): Void;

 /**
  * Sets up the battle test members.
  *
  * @memberof Game_Party
  */
 public dynamic function setupBattleTestMembers(): Void;

 /**
  * Sets up the battle test items.
  *
  * @memberof Game_Party
  */
 public dynamic function setupBattleTestItems(): Void;

 /**
  * Returns the highest level in the party.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public dynamic function highestLevel(): Int;

 /**
  * Adds an actor to the party given the actor id.
  *
  * @param {Int} actorId
  * @memberof Game_Party
  */
 public dynamic function addActor(actorId: Int): Void;

 /**
  * Removes an actor from the party given the actor id.
  *
  * @param {Int} actorId
  * @memberof Game_Party
  */
 public dynamic function removeActor(actorId: Int): Void;

 /**
  * Returns party gold.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public dynamic function gold(): Int;

 /**
  * Increases the party gold given a specified amount.
  *
  * @param {Int} amount
  * @memberof Game_Party
  */
 public dynamic function gainGold(amount: Int): Void;

 /**
  * Decreases the party gold given a specified amount.
  *
  * @param {Int} amount
  * @memberof Game_Party
  */
 public dynamic function loseGold(amount: Int): Void;

 /**
  * Returns maximum gold of the party.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public dynamic function maxGold(): Int;

 /**
  * Returns the Int of steps the party has taken.
  *
  * @returns {Int}
  * @memberof Game_Party
  */
 public dynamic function steps(): Int;

 /**
  * Increases the Int of steps the party has taken.
  *
  * @memberof Game_Party
  */
 public dynamic function increaseSteps(): Void;

 /**
  * Returns the Int of items in the possession of the party of the
  * given item.
  * @param {RPG.BaseItem} item
  * @returns {Int}
  * @memberof Game_Party
  */
 public dynamic function numItems(item: BaseItem): Int;

 /**
  * Returns the maximum Int of items of the given item.
  *
  * @param {RPG.BaseItem} item
  * @returns {Int}
  * @memberof Game_Party
  */
 public dynamic function maxItems(item: BaseItem): Int;

 public dynamic function hasMaxItems(item: BaseItem): Bool;

 /**
  * Returns true if the party has the given item;
  * if includeEquip is set to true, this will also check party equipment.
  * @param {RPG.BaseItem} item
  * @param {Bool} includeEquip
  * @returns {Bool}
  * @memberof Game_Party
  */
 public dynamic function hasItem(item: BaseItem, includeEquip: Bool): Bool;

 /**
  * Returns true if any party member has the specified equip item.
  *
  * @param {RPG.EquipItem} item
  * @returns {Bool}
  * @memberof Game_Party
  */
 public dynamic function isAnyMemberEquipped(item: EquipItem): Bool;

 public dynamic function gainItem(item: BaseItem, amount: Int,
  includeEquip: Bool): Void;
 public dynamic function discardMembersEquip(item: EquipItem,
  amount: Int): Void;
 public dynamic function loseItem(item: BaseItem, amount: Int,
  includeEquip: Bool): Void;

 /**
  * Has the party consume the given item.
  *
  * @param {RPG.BaseItem} item
  * @memberof Game_Party
  */
 public dynamic function consumeItem(item: BaseItem): Void;

 /**
  * Returns true if the party can use the item.
  *
  * @param {RPG.BaseItem} item
  * @returns {Bool}
  * @memberof Game_Party
  */
 public dynamic function canUse(item: BaseItem): Bool;

 public dynamic function canInput(): Bool;

 /**
  * Handler for when the player walks.
  *
  * @memberof Game_Party
  */
 public dynamic function onPlayerWalk(): Void;

 /**
  * Returns the actor that will be used in the current menu;
  * this is for menu scenes that target one actor.
  * @returns {Game_Actor}
  * @memberof Game_Party
  */
 public dynamic function menuActor(): Game_Actor;

 public dynamic function setMenuActor(actor: Game_Actor): Void;
 public dynamic function makeMenuActorNext(): Void;
 public dynamic function makeMenuActorPrevious(): Void;
 public dynamic function targetActor(): Game_Actor;
 public dynamic function setTargetActor(actor: Game_Actor): Void;

 /**
  * Returns the last item selected by the game party.
  *
  * @returns {RPG.BaseItem}
  * @memberof Game_Party
  */
 public dynamic function lastItem(): BaseItem;

 public dynamic function setLastItem(item: BaseItem): Void;
 public dynamic function swapOrder(index1: Int, index2: Int): Void;

 /**
  * Returns the characters that go on the save life.
  *
  * @returns {Array<Array<any>>}
  * @memberof Game_Party
  */
 public dynamic function charactersForSavefile(): Array<Array<Any>>;

 /**
  * Returns the actor faces for the save file.
  *
  * @returns {Array<Array<any>>}
  * @memberof Game_Party
  */
 public dynamic function facesForSavefile(): Array<Array<Any>>;

 public dynamic function partyAbility(abilityId: Int): Bool;

 /**
  * Returns true if the encounter rate is set to half.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public dynamic function hasEncounterHalf(): Bool;

 /**
  * Returns true if the encounter rate is set to none.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public dynamic function hasEncounterNone(): Bool;

 public dynamic function hasCancelSurprise(): Bool;

 /**
  * Returns true if the party has an increased chance of preemptive strike.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public dynamic function hasRaisePreemptive(): Bool;

 /**
  * Returns true if the party has double gold in effect.
  *
  * @returns {Bool}
  * @memberof Game_Party
  */
 public dynamic function hasGoldDouble(): Bool;

 public dynamic function hasDropItemDouble(): Bool;
 public dynamic function ratePreemptive(troopAgi: Int): Int;
 public dynamic function rateSurprise(troopAgi: Int): Int;

 /**
  * Performs victory motion for the entire party.
  *
  * @memberof Game_Party
  */
 public dynamic function performVictory(): Void;

 /**
  * Performs escape motion for the entire party.
  *
  * @memberof Game_Party
  */
 public dynamic function performEscape(): Void;

 /**
  * Remove battle states from all actors in the party.
  *
  * @memberof Game_Party
  */
 public dynamic function removeBattleStates(): Void;

 /**
  * Refreshes the motion on all actors in the party.
  *
  * @memberof Game_Party
  */
 public dynamic function requestMotionRefresh(): Void;
}
