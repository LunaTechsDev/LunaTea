package rm.objects;

import rm.types.RPG.BaseItem;
import rm.types.RPG.EnemyAction;
import rm.types.RPG.Enemy;

/**
 * -----------------------------------------------------------------------------
 * Game_Enemy
 *
 * The game object declare class for an enemy.
 * @class Game_Enemy
 */
@:expose("Game_Enemy")
@:native("Game_Enemy")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Enemy extends Game_Battler {
 private var _enemyId: Float;

 private var _letter: String;

 private var _plural: Bool;

 private var _screenX: Float;

 private var _screenY: Float;

 public function new(enemyId: Float, x: Float, y: Float);
 public function initialize(enemyId: Float, x: Float, y: Float): Void;

 public function initMembers(): Void;
 public function setup(enemyId: Float, x: Float, y: Float): Void;

 /**
  * Returns the other troops in the enemy team.
  *
  * @returns {Game_Troop}
  * @memberof Game_Enemy
  */
 public function friendsUnit(): Game_Troop;

 /**
  * Returns the game party.
  *
  * @returns {Game_Party}
  * @memberof Game_Enemy
  */
 public function opponentsUnit(): Game_Party;

 public function isBattleMember(): Bool;

 /**
  * Returns the enemy id.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function enemyId(): Float;

 /**
  * Returns the enemy information from the database.
  *
  * @returns {RPG.Enemy}
  * @memberof Game_Enemy
  */
 public function enemy(): Enemy;

 /**
  * Returns the enemy's exp amount.
  *
  * @memberof Game_Enemy
  */
 public function exp(): Void;

 /**
  * Returns enemy's given gold.
  *
  * @memberof Game_Enemy
  */
 public function gold(): Void;

 /**
  * Creates the drop items for the enemy specified by the database.
  *
  * @returns {Array<RPG.BaseItem>}
  * @memberof Game_Enemy
  */
 public function makeDropItems(): Array<BaseItem>;

 /**
  * Returns the item drop rate of the enemy.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function dropItemRate(): Float;

 // TODO: turn kind into an enum
 public function itemObject(kind: Float, dataId: Float): Void;

 /**
  * Returns true if the enemy sprite is visible.
  *
  * @returns {boolean}
  * @memberof Game_Enemy
  */
 public function isSpriteVisible(): Bool;

 /**
  * Returns enemy screen X coordinate.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function screenX(): Float;

 /**
  * Returns enemy screen Y position.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function screenY(): Float;

 /**
  * Returns the hue of the enemy.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function battlerHue(): Float;

 /**
  * Returns the enemy original name.
  *
  * @returns {string}
  * @memberof Game_Enemy
  */
 public function originalName(): String;

 public function isLetterEmpty(): Bool;
 public function setLetter(letter: String): Void;
 public function setPlural(plural: Bool): Void;

 /**
  * Transform the enemy into another enemy based on id.
  *
  * @param {number} enemyId
  * @memberof Game_Enemy
  */
 public function transform(enemyId: Float): Void;

 public function meetsCondition(action: EnemyAction): Bool;

 public function meetsTurnCondition(param1: Float, param2: Float): Bool;

 public function meetsHpCondition(param1: Float, param2: Float): Bool;

 public function meetsMpCondition(param1: Float, param2: Float): Bool;

 public function meetsStateCondition(param: Float): Bool;

 public function meetsPartyLevelCondition(param: Float): Bool;

 public function meetsSwitchCondition(param: Float): Bool;

 /**
  * Returns true if the enemy action is valid.
  *
  * @param {RPG.Enemy.Action} action
  * @returns {boolean}
  * @memberof Game_Enemy
  */
 public function isActionValid(action: EnemyAction): Bool;

 public function selectAction(actionList: Array<EnemyAction>,
  ratingZero: Float): EnemyAction;
 public function selectAllActions(actionList: Array<EnemyAction>): Void;
}
