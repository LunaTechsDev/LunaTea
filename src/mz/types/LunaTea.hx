package mz.types;

@:forward
@:forwardStatics
enum abstract StateId(Int) from Int to Int {
}

@:forward
@:forwardStatics
enum abstract BuffId(Int) from Int to Int {
}

@:forward
@:forwardStatics
enum abstract BalloonId(Int) from Int to Int {
 public inline var EXCLAMATION = 0;
 public inline var QUESTION = 1;
 public inline var MUSIC_NOTE = 2;
 public inline var HEART = 3;
 public inline var ANGER = 4;
 public inline var SWEAT = 5;
 public inline var COBWEB = 6;
 public inline var SILENCE = 7;
 public inline var LIGHT_BULB = 8;
 public inline var ZZZ = 9;
 // Extra Balloon IDs would be user defined
}

@:forward
@:forwardStatics
enum abstract AnimationSpeed(Int) from Int to Int {
}

@:forward
@:forwardStatics
enum abstract WeaponImageId(Int) from Int to Int {
}

/**
 * Character pattern represents the in-editor character
 * pattern.
 */
@:forward
@:forwardStatics
enum abstract CharacterPattern(Int) from Int to Int {
}

/**
 * The Move Types of Characters/Event in RPGMaker MV/MZ
 */
@:forward
@:forwardStatics
enum abstract MoveType(Int) from Int to Int {
 public inline var FIXED = 0;
 public inline var RANDOM = 1;
 public inline var APPROACH = 2;
 public inline var CUSTOM = 3;
}

/**
 * The Move Speed Types of Characters/Events in RPGMaker MV/MZ
 */
@:forward
@:forwardStatics
enum abstract MoveSpeed(Int) from Int to Int {
 public inline var X8SLOWER = 1;
 public inline var X4SLOWER = 2;
 public inline var X2SLOWER = 3;
 public inline var NORMAL = 4;
 public inline var X2FASTER = 5;
 public inline var X4FASTER = 6;
}

/**
 *  Move frequency for Characters/Events
 * in RPGMaker MV/MZ.
 */
@:forward
@:forwardStatics
enum abstract MoveFrequency(Int) from Int to Int {
 public var LOWEST = 1;
 public var LOWER = 2;
 public var NORMAL = 3;
 public var HIGHER = 4;
 public var HIGHEST = 5;
}

/**
 * Character/Events priority in RPGMaker MV/MZ.
 * This will determine if they're shown above or below or
 * on the same level as characters on the map.
 */
@:forward
@:forwardStatics
enum abstract CharacterPriority(Int) from Int to Int {
 public var BELOW_CHARACTERS = 0;
 public var SAME_AS_CHARACTERS = 1;
 public var ABOVE_CHARACTERS = 2;
}
