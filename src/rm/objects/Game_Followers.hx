package rm.objects;

/**
 * -----------------------------------------------------------------------------
 * Game_Followers
 *
 * The wrapper declare class for a follower array.
 * @class Game_Followers
 */
@:expose("Game_Followers")
@:native("Game_Followers")
extern class Game_Followers {
 @:native("_visible")
 public var __visible: Bool;
 private var _visible: Bool;
 @:native("_gathering")
 public var __gathering: Bool;
 private var _gathering: Bool;
 @:native("_data")
 public var __data: Array<Game_Follower>;
 private var _data: Array<Game_Follower>;

 public dynamic function new(): Void;

 public dynamic function initialize(): Void;

 /**
  * Returns true if the followers are visible.
  *
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public dynamic function isVisible(): Bool;

 /**
  * Shows  the followers.
  *
  * @memberof Game_Followers
  */
 public dynamic function show(): Void;

 /**
  * Hides the followers.
  *
  * @memberof Game_Followers
  */
 public dynamic function hide(): Void;

 /**
  * Returns the followers at the specified index.
  *
  * @param {number} index
  * @returns {Game_Follower}
  * @memberof Game_Followers
  */
 public dynamic function follower(index: Int): Game_Follower;

 public dynamic function forEach(callback: () -> Void, thisObject: Any): Void;
 public dynamic function reverseEach(callback: () -> Void,
  thisObject: Any): Void;

 /**
  * Refreshes the game followers.
  *
  * @memberof Game_Followers
  */
 public dynamic function refresh(): Void;

 /**
  * Updates the game followers.
  *
  * @memberof Game_Followers
  */
 public dynamic function update(): Void;

 /**
  * Updates the movement of game followers.
  *
  * @memberof Game_Followers
  */
 public dynamic function updateMove(): Void;

 public dynamic function jumpAll(): Void;
 public dynamic function synchronize(x: Int, y: Int, d: Int): Void;

 /**
  * Gathers the followers.
  *
  * @memberof Game_Followers
  */
 public dynamic function gather(): Void;

 /**
  * Returns true if the followers are gathering.
  *
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public dynamic function areGathering(): Bool;

 /**
  * Returns the visible followers.
  *
  * @returns {Array<Game_Follower>}
  * @memberof Game_Followers
  */
 public dynamic function visibleFollowers(): Array<Game_Follower>;

 /**
  * Returns true if the followers are moving.
  *
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public dynamic function areMoving(): Bool;

 /**
  * Returns true if the followers are gathered.
  *
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public dynamic function areGathered(): Bool;

 /**
  * Returns true if the specified follower is collided at the specified x and y
  *coordinate.
  *
  * @param {number} x
  * @param {number} y
  * @returns {Bool}
  * @memberof Game_Followers
  */
 public dynamic function isSomeoneCollided(x: Int, y: Int): Bool;
}
