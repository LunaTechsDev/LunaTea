package rm.objects;

import rm.types.LunaTea.BalloonId;
import rm.types.LunaTea.AnimationId;
import rm.types.LunaTea.Direction;
import rm.types.LunaTea.CharacterPriority;
import rm.types.LunaTea.CharacterPattern;
import rm.types.LunaTea.MoveSpeed;
import rm.types.LunaTea.MoveFrequency;

/**
 * The super class of Game Character. It handles basic
 * information such as coordinates, images, and more
 * shared by all characters.
 */
@:expose("Game_CharacterBase")
@:native("Game_CharacterBase")
extern class Game_CharacterBase {
 @:native("_x")
 public var __x: Int;
 private var _x: Int;
 @:native("_y")
 public var __y: Int;
 private var _y: Int;
 @:native("_realX")
 public var __realX: Int;
 private var _realX: Int;
 @:native("_realY")
 public var __realY: Int;
 private var _realY: Int;
 @:native("_moveSpeed")
 public var __moveSpeed: MoveSpeed;
 private var _moveSpeed: MoveSpeed;
 @:native("_moveFrequency")
 public var __moveFrequency: MoveFrequency;
 private var _moveFrequency: MoveFrequency;
 @:native("_opacity")
 public var __opacity: Int;
 private var _opacity: Int;
 @:native("_blendMode")
 public var __blendMode: Int; // TODO: Need to be changed
 private var _blendMode: Int;
 @:native("_direction")
 public var __direction: Direction;
 private var _direction: Direction;
 @:native("_pattern")
 public var __patern: CharacterPattern;
 private var _pattern: CharacterPattern;
 @:native("_priorityType")
 public var __priorityType: CharacterPriority;
 private var _priorityType: CharacterPriority;
 @:native("_tileId")
 public var __tileId: Int;
 private var _tileId: Int;
 @:native("_characterName")
 public var __characterName: String;
 private var _characterName: String;
 @:native("_characterIndex")
 public var __characterIndex: Int;
 private var _characterIndex: Int;
 @:native("_isObjectCharacter")
 public var __isObjectCharacter: Bool;
 private var _isObjectCharacter: Bool;
 @:native("_walkAnime")
 public var __walkAnime: Bool;
 private var _walkAnime: Bool;
 @:native("_stepAnime")
 public var __stepAnime: Bool;
 private var _stepAnime: Bool;
 @:native("_directionFix")
 public var __directionFix: Bool;
 private var _directionFix: Bool;
 @:native("_through")
 public var __through: Bool;
 private var _through: Bool;
 @:native("_transparent")
 public var __transparent: Bool;
 private var _transparent: Bool;
 @:native("_bushDepth")
 public var __bushDepth: Int;
 private var _bushDepth: Int;
 @:native("_animationId")
 public var __animationId: AnimationId;
 private var _animationId: AnimationId;
 @:native("_ballonId")
 public var __balloonId: BalloonId;
 private var _balloonId: BalloonId;
 @:native("_animationPlaying")
 public var __animationPlaying: Bool;
 private var _animationPlaying: Bool;
 @:native("_balloonPlaying")
 public var __balloonPlaying: Bool;
 private var _balloonPlaying: Bool;
 @:native("_animationCount")
 public var __animationCount: Int;
 private var _animationCount: Int;
 @:native("_stopCount")
 public var __stopCount: Int;
 private var _stopCount: Int;
 @:native("_jumpCount")
 public var __jumpCount: Int;
 private var _jumpCount: Int;
 @:native("_jumpPeak")
 public var __jumpPeak: Int;
 private var _jumpPeak: Int;
 @:native("_movementSuccess")
 public var __movementSuccess: Bool;
 private var _movementSuccess: Bool;

 public dynamic function new(): Void;
 public dynamic function initialize(): Void;

 /** [read-only] */
 public var x: Int;

 /** [read-only] */
 public var y: Int;

 public dynamic function initMembers(): Void;
 public dynamic function pos(x: Int, y: Int): Bool;
 public dynamic function posNt(x: Int, y: Int): Bool;

 /**
  * Returns the move speed of the game character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function moveSpeed(): Int;

 public dynamic function setMoveSpeed(moveSpeed: Int): Void;

 /**
  * Returns the move frequency of the character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function moveFrequency(): Int;

 public dynamic function setMoveFrequency(moveFrequency: Int): Void;
 public dynamic function opacity(): Int;
 public dynamic function setOpacity(opacity: Int): Void;

 /**
  * Returns the blend mode of the character;
  * these are represented by Ints.
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function blendMode(): Int;

 /**
  * Sets the blend mode of the character;
  * these are represented by Ints.
  * @param {Int} blendMode
  * @memberof Game_CharacterBase
  */
 public dynamic function setBlendMode(blendMode: Int): Void;

 /**
  * Returns true if the character is
  * normal priority; this means you can collide with them.
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isNormalPriority(): Bool;

 public dynamic function setPriorityType(priorityType: Int): Void;

 /**
  * Returns true if the character is moving.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isMoving(): Bool;

 /**
  * Returns true if the character is jumping.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isJumping(): Bool;

 /**
  * Returns the jump height of base character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function jumpHeight(): Int;

 /**
  * Returns true if the character is stopping.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isStopping(): Bool;

 public dynamic function checkStop(threshold: Int): Bool;

 /**
  * Resets the step count of the character.
  *
  * @memberof Game_CharacterBase
  */
 public dynamic function resetStopCount(): Void;

 public dynamic function realMoveSpeed(): Int;
 public dynamic function distancePerFrame(): Int;

 /**
  * Returns true if the character is dashing.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isDashing(): Bool;

 public dynamic function isDebugThrough(): Bool;

 /**
  * Straightens the character.
  *
  * @memberof Game_CharacterBase
  */
 public dynamic function straighten(): Void;

 public dynamic function reverseDir(d: Int): Int;
 public dynamic function canPass(x: Int, y: Int, d: Int): Bool;
 public dynamic function canPassDiagonally(x: Int, y: Int, horz: Int,
  vert: Int): Bool;
 public dynamic function isMapPassable(x: Int, y: Int, d: Int): Bool;
 public dynamic function isCollidedWithCharacters(x: Int, y: Int): Bool;
 public dynamic function isCollidedWithEvents(x: Int, y: Int): Bool;
 public dynamic function isCollidedWithVehicles(x: Int, y: Int): Bool;
 public dynamic function setPosition(x: Int, y: Int): Void;
 public dynamic function copyPosition(character: Game_Player): Void;
 public dynamic function locate(x: Int, y: Int): Void;
 public dynamic function direction(): Int;

 /**
  * Sets the direction of the character based on numpad
  * directions.
  * @param {Int} d
  * @memberof Game_CharacterBase
  */
 public dynamic function setDirection(d: Int): Void;

 /**
  * Returns true if the character is a tile; these
  * are events without character sprites.
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isTile(): Bool;

 /**
  * Returns true if the character is an object character;
  * these are events with character sprites.
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isObjectCharacter(): Bool;

 public dynamic function shiftY(): Int;
 public dynamic function scrolledX(): Int;
 public dynamic function scrolledY(): Int;

 /**
  * Returns the character's scrreen x position.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function screenX(): Int;

 /**
  * Returns the character's screen y position.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function screenY(): Int;

 /**
  * Returns the character's screen z position.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function screenZ(): Int;

 public dynamic function isNearTheScreen(): Bool;
 public dynamic function update(): Void;
 public dynamic function updateStop(): Void;
 public dynamic function updateJump(): Void;
 public dynamic function updateMove(): Void;
 public dynamic function updateAnimation(): Void;
 public dynamic function animationWait(): Int;

 /**
  * Updates the character's animation count.
  *
  * @memberof Game_CharacterBase
  */
 public dynamic function updateAnimationCount(): Void;

 public dynamic function updatePattern(): Void;
 public dynamic function maxPattern(): Int;

 /**
  * Returns the pattern of the character; these are the walking
  * patterns.
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function pattern(): Int;

 /**
  * Sets the pattern of the character, given
  * a pattern Int.
  * @param {Int} pattern
  * @memberof Game_CharacterBase
  */
 public dynamic function setPattern(pattern: Int): Void;

 public dynamic function isOriginalPattern(): Bool;

 /**
  * Resets the pattern of the character.
  *
  * @memberof Game_CharacterBase
  */
 public dynamic function resetPattern(): Void;

 public dynamic function refreshBushDepth(): Void;
 public dynamic function isOnLadder(): Bool;
 public dynamic function isOnBush(): Bool;

 /**
  * Returns the terrain tag of the character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function terrainTag(): Int;

 /**
  * Returns the region id of the character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function regionId(): Int;

 /**
  * Increases the character steps.
  *
  * @memberof Game_CharacterBase
  */
 public dynamic function increaseSteps(): Void;

 /**
  * Returns the tile id of character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function tileId(): Int;

 public dynamic function characterName(): String;
 public dynamic function characterIndex(): Int;
 public dynamic function setImage(characterName: String,
  characterIndex: Int): Void;
 public dynamic function setTileImage(tileId: Int): Void;
 public dynamic function checkEventTriggerTouchFront(d: Int): Void;
 public dynamic function checkEventTriggerTouch(x: Int, y: Int): Bool;
 public dynamic function isMovementSucceeded(x: Int, y: Int): Bool;
 public dynamic function setMovementSuccess(success: Bool): Void;
 public dynamic function moveStraight(d: Int): Void;
 public dynamic function moveDiagonally(horz: Int, vert: Int): Void;
 public dynamic function jump(xPlus: Int, yPlus: Int): Void;
 public dynamic function hasWalkAnime(): Bool;
 public dynamic function setWalkAnime(walkAnime: Bool): Void;

 /**
  * Returns true if the character has step animation.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function hasStepAnime(): Bool;

 public dynamic function setStepAnime(stepAnime: Bool): Void;

 /**
  * Returns true if the character is set to a fixed direction.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isDirectionFixed(): Bool;

 /**
  * Sets the character to be fixed in a specified direction
  * given a Bool value.
  * @param {Bool} directionFix
  * @memberof Game_CharacterBase
  */
 public dynamic function setDirectionFix(directionFix: Bool): Void;

 /**
  * Returns true if the character is set to pass through.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isThrough(): Bool;

 public dynamic function setThrough(through: Bool): Void;
 public dynamic function isTransparent(): Bool;

 /**
  * Returns the bush depth around the character.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function bushDepth(): Int;

 public dynamic function setTransparent(transparent: Bool): Void;

 /**
  * Requests an animation given the animation id.
  *
  * @param {Int} animationId
  * @memberof Game_CharacterBase
  */
 public dynamic function requestAnimation(animationId: Int): Void;

 /**
  * Requests the balloon animation given the balloon id.
  *
  * @param {Int} balloonId
  * @memberof Game_CharacterBase
  */
 public dynamic function requestBalloon(balloonId: Int): Void;

 /**
  * Returns the animation id.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function animationId(): Int;

 /**
  * Returns the id of the balloon animation.
  *
  * @returns {Int}
  * @memberof Game_CharacterBase
  */
 public dynamic function balloonId(): Int;

 /**
  * Starts the requested animation.
  *
  * @memberof Game_CharacterBase
  */
 public dynamic function startAnimation(): Void;

 /**
  * Stars a balloon animation.
  *
  * @memberof Game_CharacterBase
  */
 public dynamic function startBalloon(): Void;

 public dynamic function isAnimationPlaying(): Bool;

 /**
  * Returns true if a balloon animation is playing.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public dynamic function isBalloonPlaying(): Bool;

 public dynamic function endAnimation(): Void;

 /**
  * Ends the balloon animation on the character.
  *
  * @memberof Game_CharacterBase
  */
 public dynamic function endBalloon(): Void;
}
