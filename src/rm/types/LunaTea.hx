package rm.types;

@:forward
@:forwardStatics
enum abstract StateIdA(StateId) from StateId to StateId {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract BuffIdA(BuffId) from BuffId to BuffId {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract ParameterIdA(ParameterId) from ParameterId to ParameterId {
 public inline var base = -1;

 /**
  * Maximum HP
  */
 public inline var MHP = 0;

 /**
  * Maximum MP
  */
 public inline var MMP = 1;

 /**
  * Attack
  */
 public inline var ATK = 2;

 /**
  * Defense
  */
 public inline var DEF = 3;

 /**
  * Magic Attack
  */
 public inline var MAT = 4;

 /**
  * Magic Defense Power
  */
 public inline var MDF = 5;

 /**
  * Agility
  */
 public inline var AGI = 6;

 /**
  * Luck
  */
 public inline var LUK = 7;

 /**
  * X Param Hit  Rate
  */
 public inline var HIT = 0;

 /**
  * X Param Evasion Rate
  */
 public inline var EVA = 1;

 /**
  * X Param Critical Rate
  */
 public inline var CRI = 2;

 /**
  * X Param Critical Evasion Rate
  */
 public inline var CEV = 3;

 /**
  * X Param Magic Evasion Rate
  */
 public inline var MEV = 4;

 /**
  * X Param Magic Reflection Rate
  */
 public inline var MRF = 5;

 /**
  * X Param Counter Attack Rate
  */
 public inline var CNT = 6;

 /**
  * X Param HP Regeneration Rate
  */
 public inline var HRG = 7;

 /**
  * X Param MP Regeneration Rate
  */
 public inline var MRG = 8;

 /**
  * X Param TP Regeneration Rate
  */
 public inline var TRG = 9;

 /**
  * S Param Target Rate
  */
 public inline var TGR = 0;

 /**
  * S Param Guard Effect Rate
  */
 public inline var GRD = 1;

 /**
  * S Param Recovery Effect Rate
  */
 public inline var REC = 2;

 /**
  * S Param Pharmacology
  */
 public inline var PHA = 3;

 /**
  * S Param Mp Cost Rate
  */
 public inline var MCR = 4;

 /**
  * S Param TP Charge Rate
  */
 public inline var TCR = 5;

 /**
  * S Param Physical Damage Rate
  */
 public inline var PDR = 6;

 /**
  * S Param Magical Damage Rate
  */
 public inline var MDR = 7;

 /**
  * S Param Floor Damage Rate
  */
 public inline var FDR = 8;

 /**
  * S Param Experience Rate
  */
 public inline var EXR = 9;
}

@:forward
@:forwardStatics
enum abstract EquipTypeId(EquipmentTypeId) from EquipmentTypeId
 to EquipmentTypeId {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract SkillIdA(SkillId) from SkillId to SkillId {
 public inline var base = -1;
}

@:forward
@:forwardStatics // TODO: Add Action States from MV
enum abstract ActionState(String) from String to String {
 public inline var base = "";
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

 @:to
 public inline static function toString(value: BalloonId): String {
  switch (value) {
   case EXCLAMATION:
    return "Exclamation";
   case QUESTION:
    return "Question";
   case MUSIC_NOTE:
    return "Music Note";
   case HEART:
    return "Heart";
   case ANGER:
    return "Anger";
   case SWEAT:
    return "Sweat";
   case COBWEB:
    return "Cobweb";
   case SILENCE:
    return "Silence";
   case LIGHT_BULB:
    return "Light Bulb";
   case ZZZ:
    return "Zzz";
   case _:
    return "";
  }
 }
 // Extra Balloon IDs would be user defined
}

@:forward
@:forwardStatics
enum abstract AnimationSpeed(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract WeaponImageId(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract AnimationId(Int) from Int to Int {
 public inline var base = -1;
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
 * Motion Type used for Sprite Actors
 * on different scenes in MV/rm.
 */
enum abstract MotionType(String) from String to String {
 public inline var WALK = "walk";
 public inline var WAIT = "wait";
 public inline var CHANT = "chant";
 public inline var GUARD = "guard";
 public inline var DAMAGE = "damage";
 public inline var EVADE = "evade";
 public inline var THRUST = "thrust";
 public inline var MISSLE = "missle";
 public inline var SKILL = "SKILL";
 public inline var SPELL = "spell";
 public inline var ITEM = "item";
 public inline var ESCAPE = "escape";
 public inline var VICTORY = "victory";
 public inline var DYING = "dying";
 public inline var ABNORMAL = "abnormal";
 public inline var SLEEP = "sleep";
 public inline var DEAD = "dead";
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

 @from
 public inline static function toString(value: MoveType) {
  switch (value) {
   case FIXED:
    return "Fixed";
   case RANDOM:
    return "Random";
   case APPROACH:
    return "Approach";
   case CUSTOM:
    return "Custom";
   case _:
    return "Custom";
  }
 }
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

 @:to
 public inline static function toString(value: MoveSpeed): String {
  switch (value) {
   case X8SLOWER:
    return "X8Slower";
   case X4SLOWER:
    return "X4Slower";
   case X2SLOWER:
    return "X2Slower";
   case NORMAL:
    return "Normal";
   case X2FASTER:
    return "X2Faster";
   case X4FASTER:
    return "X4Faster";
   case _:
    return "";
  }
 }
}

/**
 *  Move frequency for Characters/Events
 * in RPGMaker MV/rm.
 */
@:forward
@:forwardStatics
enum abstract MoveFrequency(Int) from Int to Int {
 public inline var LOWEST = 1;
 public inline var LOWER = 2;
 public inline var NORMAL = 3;
 public inline var HIGHER = 4;
 public inline var HIGHEST = 5;

 @:to
 public inline static function toString(value: MoveFrequency): String {
  switch (value) {
   case LOWEST:
    return "Lowest";
   case LOWER:
    return "Lower";
   case NORMAL:
    return "Normal";
   case HIGHER:
    return "Higher";
   case HIGHEST:
    return "Highest";
   case _:
    return "";
  }
 }
}

/**
 * Character/Events priority in RPGMaker MV/rm.
 * This will determine if they're shown above or below or
 * on the same level as characters on the map.
 */
@:forward
@:forwardStatics
enum abstract CharacterPriority(Int) from Int to Int {
 public inline var BELOW_CHARACTERS = 0;
 public inline var SAME_AS_CHARACTERS = 1;
 public inline var ABOVE_CHARACTERS = 2;

 @:to
 public inline static function toString(value: CharacterPriority): String {
  switch (value) {
   case BELOW_CHARACTERS:
    return "Below characters";
   case SAME_AS_CHARACTERS:
    return "Same as characters";
   case ABOVE_CHARACTERS:
    return "Above characters";
   case _:
    return "";
  }
 }
}

@:forward
@:forwardStatics
enum abstract Color(String) from String to String {
}

@:forward
@:forwardStatics
enum abstract DamageColorType(Int) from Int to Int {
 public inline var HP_DAMAGE = 0;
 public inline var HP_RECOVER = 1;
 public inline var MP_DAMAGE = 2;
 public inline var MP_RECOVER = 3;

 /**
  * Default can be any number
  */
 public inline var DEFAULT = 4;
}

@:forward
@:forwardStatics
enum abstract WaitModeA(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract Frames(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract Money(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract GaugeType(String) from String to String {
 public var HP = "hp";
 public var MP = "mp";
 public var TP = "tp";
 public var TIME = "time";
}

@:forward
@:forwardStatics
enum abstract SkillTypeId(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract BattleResult(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract Direction(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract EventTrigger(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract MessageBackgroundType(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract MessagePositionType(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract ChoiceDefaultType(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract ChoiceCancelType(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract ChocieBackgroundType(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract ChoicePositionType(Int) from Int to Int {
 public inline var base = -1;
}

@:forward
@:forwardStatics
enum abstract VehicleTypeA(String) from String to String {
 public inline var base = "";
}

@:forward
@:forwardStatics
enum abstract InterpreterWaitModeA(InterpreterWaitMode)
 from InterpreterWaitMode to InterpreterWaitMode {
 public inline var base = "";
}

typedef Icon = Int;
typedef SlotType = Int;
typedef FlagId = Int;
typedef CollapseType = Int;
typedef AbilityId = Int;
typedef ParameterId = Int;
typedef FadeType = Int;
typedef InterpreterWaitMode = String;
