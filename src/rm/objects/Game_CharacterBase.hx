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
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_CharacterBase {
 private var _x: Float;

 private var _y: Float;

 private var _realX: Float;

 private var _realY: Float;

 private var _moveSpeed: MoveSpeed;

 private var _moveFrequency: MoveFrequency;

 private var _opacity: Float;

 private var _blendMode: Float;

 private var _direction: Direction;

 private var _pattern: CharacterPattern;

 private var _priorityType: CharacterPriority;

 private var _tileId: Float;

 private var _characterName: String;

 private var _characterIndex: Float;

 private var _isObjectCharacter: Bool;

 private var _walkAnime: Bool;

 private var _stepAnime: Bool;

 private var _directionFix: Bool;

 private var _through: Bool;

 private var _transparent: Bool;

 private var _bushDepth: Float;

 private var _animationId: AnimationId;

 private var _balloonId: BalloonId;

 private var _animationPlaying: Bool;

 private var _balloonPlaying: Bool;

 private var _animationCount: Float;

 private var _stopCount: Float;

 private var _jumpCount: Float;

 private var _jumpPeak: Float;

 private var _movementSuccess: Bool;

 public function new(): Void;
 public function initialize(): Void;

 /** [read-only] */
 public var x: Float;

 /** [read-only] */
 public var y: Float;

 public function initMembers(): Void;
 public function pos(x: Float, y: Float): Bool;
 public function posNt(x: Float, y: Float): Bool;

 /**
  * Returns the move speed of the game character.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function moveSpeed(): Float;

 public function setMoveSpeed(moveSpeed: Float): Void;

 /**
  * Returns the move frequency of the character.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function moveFrequency(): Float;

 public function setMoveFrequency(moveFrequency: Float): Void;
 public function opacity(): Float;
 public function setOpacity(opacity: Float): Void;

 /**
  * Returns the blend mode of the character;
  * these are represented by Ints.
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function blendMode(): Float;

 /**
  * Sets the blend mode of the character;
  * these are represented by Ints.
  * @param {Float} blendMode
  * @memberof Game_CharacterBase
  */
 public function setBlendMode(blendMode: Float): Void;

 /**
  * Returns true if the character is
  * normal priority; this means you can collide with them.
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isNormalPriority(): Bool;

 public function setPriorityType(priorityType: Float): Void;

 /**
  * Returns true if the character is moving.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isMoving(): Bool;

 /**
  * Returns true if the character is jumping.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isJumping(): Bool;

 /**
  * Returns the jump height of base character.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function jumpHeight(): Float;

 /**
  * Returns true if the character is stopping.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isStopping(): Bool;

 public function checkStop(threshold: Float): Bool;

 /**
  * Resets the step count of the character.
  *
  * @memberof Game_CharacterBase
  */
 public function resetStopCount(): Void;

 public function realMoveSpeed(): Float;
 public function distancePerFrame(): Float;

 /**
  * Returns true if the character is dashing.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isDashing(): Bool;

 public function isDebugThrough(): Bool;

 /**
  * Straightens the character.
  *
  * @memberof Game_CharacterBase
  */
 public function straighten(): Void;

 public function reverseDir(d: Float): Float;
 public function canPass(x: Float, y: Float, d: Float): Bool;
 public function canPassDiagonally(x: Float, y: Float, horz: Float,
  vert: Float): Bool;
 public function isMapPassable(x: Float, y: Float, d: Float): Bool;
 public function isCollidedWithCharacters(x: Float, y: Float): Bool;
 public function isCollidedWithEvents(x: Float, y: Float): Bool;
 public function isCollidedWithVehicles(x: Float, y: Float): Bool;
 public function setPosition(x: Float, y: Float): Void;
 public function copyPosition(character: Game_Player): Void;
 public function locate(x: Float, y: Float): Void;
 public function direction(): Float;

 /**
  * Sets the direction of the character based on numpad
  * directions.
  * @param {Float} d
  * @memberof Game_CharacterBase
  */
 public function setDirection(d: Float): Void;

 /**
  * Returns true if the character is a tile; these
  * are events without character sprites.
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isTile(): Bool;

 /**
  * Returns true if the character is an object character;
  * these are events with character sprites.
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isObjectCharacter(): Bool;

 public function shiftY(): Float;
 public function scrolledX(): Float;
 public function scrolledY(): Float;

 /**
  * Returns the character's scrreen x position.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function screenX(): Float;

 /**
  * Returns the character's screen y position.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function screenY(): Float;

 /**
  * Returns the character's screen z position.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function screenZ(): Float;

 public function isNearTheScreen(): Bool;
 public function update(): Void;
 public function updateStop(): Void;
 public function updateJump(): Void;
 public function updateMove(): Void;
 public function updateAnimation(): Void;
 public function animationWait(): Float;

 /**
  * Updates the character's animation count.
  *
  * @memberof Game_CharacterBase
  */
 public function updateAnimationCount(): Void;

 public function updatePattern(): Void;
 public function maxPattern(): Float;

 /**
  * Returns the pattern of the character; these are the walking
  * patterns.
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function pattern(): Float;

 /**
  * Sets the pattern of the character, given
  * a pattern Float.
  * @param {Float} pattern
  * @memberof Game_CharacterBase
  */
 public function setPattern(pattern: Float): Void;

 public function isOriginalPattern(): Bool;

 /**
  * Resets the pattern of the character.
  *
  * @memberof Game_CharacterBase
  */
 public function resetPattern(): Void;

 public function refreshBushDepth(): Void;
 public function isOnLadder(): Bool;
 public function isOnBush(): Bool;

 /**
  * Returns the terrain tag of the character.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function terrainTag(): Float;

 /**
  * Returns the region id of the character.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function regionId(): Float;

 /**
  * Increases the character steps.
  *
  * @memberof Game_CharacterBase
  */
 public function increaseSteps(): Void;

 /**
  * Returns the tile id of character.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function tileId(): Float;

 public function characterName(): String;
 public function characterIndex(): Float;
 public function setImage(characterName: String, characterIndex: Float): Void;
 public function setTileImage(tileId: Float): Void;
 public function checkEventTriggerTouchFront(d: Float): Void;
 public function checkEventTriggerTouch(x: Float, y: Float): Bool;
 public function isMovementSucceeded(x: Float, y: Float): Bool;
 public function setMovementSuccess(success: Bool): Void;
 public function moveStraight(d: Float): Void;
 public function moveDiagonally(horz: Float, vert: Float): Void;
 public function jump(xPlus: Float, yPlus: Float): Void;
 public function hasWalkAnime(): Bool;
 public function setWalkAnime(walkAnime: Bool): Void;

 /**
  * Returns true if the character has step animation.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function hasStepAnime(): Bool;

 public function setStepAnime(stepAnime: Bool): Void;

 /**
  * Returns true if the character is set to a fixed direction.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isDirectionFixed(): Bool;

 /**
  * Sets the character to be fixed in a specified direction
  * given a Bool value.
  * @param {Bool} directionFix
  * @memberof Game_CharacterBase
  */
 public function setDirectionFix(directionFix: Bool): Void;

 /**
  * Returns true if the character is set to pass through.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isThrough(): Bool;

 public function setThrough(through: Bool): Void;
 public function isTransparent(): Bool;

 /**
  * Returns the bush depth around the character.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function bushDepth(): Float;

 public function setTransparent(transparent: Bool): Void;

 /**
  * Requests an animation given the animation id.
  *
  * @param {Float} animationId
  * @memberof Game_CharacterBase
  */
 public function requestAnimation(animationId: Float): Void;

 /**
  * Requests the balloon animation given the balloon id.
  *
  * @param {Float} balloonId
  * @memberof Game_CharacterBase
  */
 public function requestBalloon(balloonId: Float): Void;

 /**
  * Returns the animation id.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function animationId(): Float;

 /**
  * Returns the id of the balloon animation.
  *
  * @returns {Float}
  * @memberof Game_CharacterBase
  */
 public function balloonId(): Float;

 /**
  * Starts the requested animation.
  *
  * @memberof Game_CharacterBase
  */
 public function startAnimation(): Void;

 /**
  * Stars a balloon animation.
  *
  * @memberof Game_CharacterBase
  */
 public function startBalloon(): Void;

 public function isAnimationPlaying(): Bool;

 /**
  * Returns true if a balloon animation is playing.
  *
  * @returns {Bool}
  * @memberof Game_CharacterBase
  */
 public function isBalloonPlaying(): Bool;

 public function endAnimation(): Void;

 /**
  * Ends the balloon animation on the character.
  *
  * @memberof Game_CharacterBase
  */
 public function endBalloon(): Void;
}
