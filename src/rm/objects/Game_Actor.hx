package rm.objects;

import haxe.DynamicAccess;
import rm.types.LunaTea.ParameterId;
import rm.types.RPG;
import js.lib.Object;

/*
 _exp:{
  [classId:Float]:Float
 };
 */
@:expose("Game_Actor")
@:native("Game_Actor")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Actor extends Game_Battler {
 private var _actorId: Float;

 private var _name: String;

 private var _nickname: String;

 private var _profile: String;

 private var _classId: Float;

 private var _level: Float;

 private var _characterName: String;

 private var _characterIndex: Float;

 private var _faceName: String;

 private var _faceIndex: Float;

 private var _battlerName: String;

 /**
  * Experience Obj
  */
 private var _exp: DynamicAccess<Dynamic>;

 /**
  * Skill Ids
  */
 private var _skills: Array<Float>;

 private var _equips: Array<Game_Item>;

 private var _actionInputIndex: Float;

 private var _lastMenuSkill: Game_Item;

 private var _lastBattleSkill: Game_Item;

 private var _lastCommandSymbol: String;

 private var _stateSteps: Object;

 /** [read-only] */
 public var level: Float;

 public function new(actorId: Float);

 public function setup(actorId: Float): Void;

 /**
  * Returns the id of the actor.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function actorId(): Float;

 /**
  * Returns the database information of the actor.
  *
  * @returns {Actor}
  * @memberof Game_Actor
  */
 public function actor(): Actor;

 /**
  * Returns the actor's name.
  * @return String
  */
 public function name(): String;

 /**
  * Sets the actor name.
  *
  * @param {String} name
  * @memberof Game_Actor
  */
 public function setName(name: String): Void;

 /**
  * Returns the nickname of the actor.
  *
  * @returns {String}
  * @memberof Game_Actor
  */
 public function nickname(): String;

 /**
  * Sets the nickname of the actor.
  *
  * @param {String} nickname
  * @memberof Game_Actor
  */
 public function setNickname(nickname: String): Void;

 /**
  * Returns the actor profile.
  *
  * @returns {String}
  * @memberof Game_Actor
  */
 public function profile(): String;

 /**
  * Sets the actor profile.
  *
  * @param {String} profile
  * @memberof Game_Actor
  */
 public function setProfile(profile: String): Void;

 /**
  * Returns the face name of the actor; this is
  * the image of faces for the actor.
  * @returns {String}
  * @memberof Game_Actor
  */
 public function faceName(): String;

 /**
  * Returns the face index of the actor.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function faceIndex(): Float;

 /**
  * Clears all states from the actor.
  *
  * @memberof Game_Actor
  */
 public function clearStates(): Void;

 /**
  * Erase the specified state from the actor.
  *
  * @param {Float} stateId
  * @memberof Game_Actor
  */
 public function eraseState(stateId: Float): Void;

 /**
  * Reset state count of the specified state.
  *
  * @param {Float} stateId
  * @memberof Game_Actor
  */
 public function resetStateCounts(stateId: Float): Void;

 /**
  * Initialize images of the actor.
  *
  * @memberof Game_Actor
  */
 public function initImages(): Void;

 /**
  * Returns the exp required to level.
  *
  * @param {Float} level
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function expForLevel(level: Float): Float;

 /**
  * Initialize exp of the actor.
  *
  * @memberof Game_Actor
  */
 public function initExp(): Void;

 /**
  * Returns the current experience points of the actor.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function currentExp(): Float;

 /**
  * Returns the current level's experience for the actor.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function currentLevelExp(): Float;

 /**
  * Returns the experience points for the next level of the actor.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function nextLevelExp(): Float;

 /**
  * Returns the next required experience points for the actor to level up.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function nextRequiredExp(): Float;

 /**
  * Returns the maximum level of the actor.
  *
  * @memberof Game_Actor
  */
 public function maxLevel(): Void;

 /**
  * Returns true if the actor is max level.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function isMaxLevel(): Bool;

 /**
  * Initialize actor skills.
  *
  * @memberof Game_Actor
  */
 public function initSkills(): Void;

 /**
  * Initialize actor equipment in the given slots.
  *
  * @param {Array<Float>} equips
  * @memberof Game_Actor
  */
 public function initEquips(equips: Array<Float>): Void;

 /**
  * Returns the equip slots of the actor.
  *
  * @returns {Array<Float>}
  * @memberof Game_Actor
  */
 public function equipSlots(): Array<Float>;

 /**
  * Returns the equipment of the actor.
  *
  * @returns {Array<EquipItem>}
  * @memberof Game_Actor
  */
 public function equips(): Array<EquipItem>;

 /**
  * Returns the weapon of the actor.
  *
  * @returns {Array<Weapon>}
  * @memberof Game_Actor
  */
 public function weapons(): Array<Weapon>;

 /**
  * Returns the armor of the actor.
  *
  * @returns {Array<Armor>}
  * @memberof Game_Actor
  */
 public function armors(): Array<Armor>;

 /**
  * Returns true if the actor has a weapon.
  *
  * @param {Weapon} weapon
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function hasWeapon(weapon: Weapon): Bool;

 /**
  * Returns true if the actor has armor.
  *
  * @param {Armor} armor
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function hasArmor(armor: Armor): Bool;

 /**
  * Returns true if the equip change is okay in the given slot.
  *
  * @param {Float} slotId
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function isEquipChangeOk(slotId: Float): Bool;

 /**
  * Changes the actor equipment in the given slot with the
  * given equip item. Places the original item into the party
  * inventory.
  * @param {Float} slotId
  * @param {EquipItem} item
  * @memberof Game_Actor
  */
 public function changeEquip(slotId: Float, item: EquipItem): Void;

 /**
  * Forces the actor to change equipment in the given slot
  * with the given equip item without placing the item back into
  * the party inventory.
  * @param {Float} slotId
  * @param {EquipItem} item
  * @memberof Game_Actor
  */
 public function forceChangeEquip(slotId: Float, item: EquipItem): Void;

 /**
  * Trades the new item with the old item in the party inventory.
  *
  * @param {EquipItem} newItem
  * @param {EquipItem} oldItem
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function tradeItemWithParty(newItem: EquipItem,
  oldItem: EquipItem): Bool;

 /**
  * Changes the actor equip with an item based on the equip id.
  *
  * @param {Float} etypeId
  * @param {Float} itemId
  * @memberof Game_Actor
  */
 public function changeEquipById(etypeId: Float, itemId: Float): Void;

 /**
  * Returns true if the actor is equipped with the specific item.
  *
  * @param {EquipItem} item
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function isEquipped(item: EquipItem): Bool;

 /**
  * Discards the given equip item from the actor; item
  * is not return to the party inventory.
  * @param {EquipItem} item
  * @memberof Game_Actor
  */
 public function discardEquip(item: EquipItem): Void;

 /**
  * Returns items the actor can't normally equip to the party inventory.
  *
  * @param {Bool} forcing
  * @memberof Game_Actor
  */
 public function releaseUnequippableItems(forcing: Bool): Void;

 /**
  * Clears the actor's equipment; items are returned to the inventory.
  *
  * @memberof Game_Actor
  */
 public function clearEquipments(): Void;

 /**
  * Optimize the actor's equipment.
  *
  * @memberof Game_Actor
  */
 public function optimizeEquipments(): Void;

 /**
  * Equips the best item in the given slot.
  *
  * @param {Float} slotId
  * @memberof Game_Actor
  */
 public function bestEquipItem(slotId: Float): Void;

 /**
  * Calculates the equip item performance and returns the sum/difference.
  *
  * @param {EquipItem} item
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function calcEquipItemPerformance(item: EquipItem): Float;

 public function isSkillWtypeOk(skill: Skill): Bool;

 public function isWtypeEquipped(wtypeId: Float): Bool;

 /**
  * Refreshes the actor.
  *
  * @memberof Game_Actor
  */
 public function refresh(): Void;

 public function friendsUnit(): Game_Party;

 public function opponentsUnit(): Game_Troop;

 /**
  * Returns true if the actor is a member in battle.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function isBattleMember(): Bool;

 public function isFormationChangeOk(): Bool;

 /**
  * Returns the current class of the actor from the database.
  *
  * @returns {Class}
  * @memberof Game_Actor
  */
 public function currentClass(): RPGClass;

 /**
  * Returns true if the actor is the specified class from the database.
  *
  * @param {Class} gameClass
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function isClass(gameClass: RPGClass): Bool;

 /**
  * Returns the actor's skills; even if the skills are not usable.
  *
  * @returns {Array<Skill>}
  * @memberof Game_Actor
  */
 public function skills(): Array<Skill>;

 /**
  * Returns the usable skills of the actor.
  *
  * @returns {Array<Skill>}
  * @memberof Game_Actor
  */
 public function usableSkills(): Array<Skill>;

 /**
  * Returns the attack element ids.
  *
  * @returns {Array<Float>}
  * @memberof Game_Actor
  */
 public function attackElements(): Array<Float>;

 /**
  * Returns true if the actor has no weapon.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function hasNoWeapons(): Bool;

 /**
  * Returns the element id of barehanded attacks.
  * By default this is 1.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function bareHandsElementId(): Float;

 /**
  * Returns the base value of the parameter.
  * @param paramId
  * @return Float
  */
 public function paramBase(paramId: ParameterId): Float;

 /**
  * Returns the first attack animation id.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function attackAnimationId1(): Float;

 /**
  * Returns the second attack animation id.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function attackAnimationId2(): Float;

 /**
  * Returns the animation id for a barehanded attack.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function bareHandsAnimationId(): Float;

 /**
  * Change the actor experience points; leveling up the actor
  * if it's above the required exp for the current level.
  * If show is set to true, actor level up with be displayed.
  * @param {Float} exp
  * @param {Bool} show
  * @memberof Game_Actor
  */
 public function changeExp(exp: Float, show: Bool): Void;

 /**
  * Level up the actor.
  *
  * @memberof Game_Actor
  */
 public function levelUp(): Void;

 /**
  * Level down the actor.
  *
  * @memberof Game_Actor
  */
 public function levelDown(): Void;

 public function findNewSkills(lastSkills: Array<Skill>): Array<Skill>;

 /**
  * Displays the actor level up in a message window, with the learned skills.
  *
  * @param {Array<Skill>} newSkills
  * @memberof Game_Actor
  */
 public function displayLevelUp(newSkills: Array<Skill>): Void;

 /**
  * Gives the specified exp to the actor.
  *
  * @param {Float} exp
  * @memberof Game_Actor
  */
 public function gainExp(exp: Float): Void;

 /**
  * Returns the final exp rate of the actor based on if the actor
  * is a reserved party member or an active battle member.
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function finalExpRate(): Float;

 /**
  * Returns the exp rate of actors not in battle; this is set in the database.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function benchMembersExpRate(): Float;

 /**
  * Returns true if the actor should display level up in a message window.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function shouldDisplayLevelUp(): Bool;

 /**
  * Changes the actor level; if show is set to true,
  * the actor level will be displayed.
  * @param {Float} level
  * @param {Bool} show
  * @memberof Game_Actor
  */
 public function changeLevel(level: Float, show: Bool): Void;

 /**
  * Actor learns the specified skill given the skill id.
  *
  * @param {Float} skillId
  * @memberof Game_Actor
  */
 public function learnSkill(skillId: Float): Void;

 /**
  * Actor forgets the specified skill given the skill id from
  * the actor's usable skills.
  * @param {Float} skillId
  * @memberof Game_Actor
  */
 public function forgetSkill(skillId: Float): Void;

 /**
  * Returns true if the actor has learned the specified
  * skill given the specified skill id.
  * @param {Float} skillId
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function isLearnedSkill(skillId: Float): Bool;

 /**
  * Changes the actor class; if keep is true, the actor
  * will retain their experience points.
  * @param {Float} classId
  * @param {Bool} keepExp
  * @memberof Game_Actor
  */
 public function changeClass(classId: Float, keepExp: Bool): Void;

 public function setCharacterImage(characterName: String,
  characterIndex: Float): Void;

 /**
  * Sets the face image of the actor given the face image (from database)
  * and face index within the iamge.
  *
  * @param {String} faceName
  * @param {Float} faceIndex
  * @memberof Game_Actor
  */
 public function setFaceImage(faceName: String, faceIndex: Float): Void;

 /**
  * Sets the battler image of the actor; this is the sprite displayed
  * in the side view mode.
  * @param {String} battlerName
  * @memberof Game_Actor
  */
 public function setBattlerImage(battlerName: String): Void;

 /**
  * Returns true if the actor sprite is visible.
  *
  * @returns {Bool}
  * @memberof Game_Actor
  */
 public function isSpriteVisible(): Bool;

 /**
  * Starts the animation on the actor given the specified animation id;
  * if  mirror is set to true, the animation will be mirrored. If a delay is enter,
  * the animation will be delayed.
  * @param {Float} animationId
  * @param {Bool} mirror
  * @param {Float} delay
  * @memberof Game_Actor
  */
 public function startAnimation(animationId: Float, mirror: Bool,
  delay: Float): Void;

 /**
  * Performs the attack motion for the actor.
  *
  * @memberof Game_Actor
  */
 public function performAttack(): Void;

 /**
  * Perform the victory motion for the actor.
  *
  * @memberof Game_Actor
  */
 public function performVictory(): Void;

 /**
  * Performs the escape motion for the actor.
  *
  * @memberof Game_Actor
  */
 public function performEscape(): Void;

 /**
  * Creates the action list for the actor.
  *
  * @returns {Array<Game_Action>}
  * @memberof Game_Actor
  */
 public function makeActionList(): Array<Game_Action>;

 /**
  * Creates the auto battle actions for the game actor.
  *
  * @memberof Game_Actor
  */
 public function makeAutoBattleActions(): Void;

 public function makeConfusionActions(): Void;

 /**
  * Handler for when the player walks on the map scene.
  *
  * @memberof Game_Actor
  */
 public function onPlayerWalk(): Void;

 public function updateStateSteps(state: State): Void;

 /**
  * Shows the added states to the actor.
  *
  * @memberof Game_Actor
  */
 public function showAddedStates(): Void;

 /**
  * Shows the removed states from the actor.
  *
  * @memberof Game_Actor
  */
 public function showRemovedStates(): Void;

 public function stepsForTurn(): Float;

 public function turnEndOnMap(): Void;

 /**
  * Checks the effect of the floor on the actor.
  *
  * @memberof Game_Actor
  */
 public function checkFloorEffect(): Void;

 /**
  * Executes the floor dmaage on the actor.
  *
  * @memberof Game_Actor
  */
 public function executeFloorDamage(): Void;

 /**
  * Returns the basic floor damage.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function basicFloorDamage(): Float;

 /**
  * Returns the max floor damage.
  *
  * @returns {Float}
  * @memberof Game_Actor
  */
 public function maxFloorDamage(): Float;

 /**
  * Perform damage to the actor on the map scene.
  *
  * @memberof Game_Actor
  */
 public function performMapDamage(): Void;

 /**
  * Clears all of the actor's animations.
  *
  * @memberof Game_Actor
  */
 public function clearActions(): Void;

 /**
  * Returns action the actor is inputting.
  *
  * @returns {Game_Action}
  * @memberof Game_Actor
  */
 public function inputtingAction(): Game_Action;

 public function selectNextCommand(): Bool;

 public function selectPreviousCommand(): Bool;

 /**
  * Returns the last menu skill of the actor.
  *
  * @returns {Skill}
  * @memberof Game_Actor
  */
 public function lastMenuSkill(): Skill;

 public function setLastMenuSkill(skill: Skill): Void;

 /**
  * Returns the last battle skill of the actor.
  *
  * @returns {Skill}
  * @memberof Game_Actor
  */
 public function lastBattleSkill(): Skill;

 public function setLastBattleSkill(skill: Skill): Void;

 /**
  * Returns the last command symbol that the actor used.
  *
  * @returns {String}
  * @memberof Game_Actor
  */
 public function lastCommandSymbol(): String;

 /**
  * Sets the last command symbol to the given symbol; this is the
  * selected command in the battle menu.
  * @param {String} symbol
  * @memberof Game_Actor
  */
 public function setLastCommandSymbol(symbol: String): Void;

 /**
  * Returns true if the item effect  has a special effect from game action.
  * @param item
  * @return Bool
  */
 public function testEscape(item: BaseItem): Bool;
}
