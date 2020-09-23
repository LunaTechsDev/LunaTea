package rm.managers;

/**
 * The static class that handles terms and messages.
 * This is linked to the terms and information
 * contained within the editor.
 */
@:expose("TextManager")
@:native("TextManager")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class TextManager {
 public static var currencyUnit: String;
 public static var level: String;
 public static var levelA: String;
 public static var hp: String;
 public static var hpA: String;
 public static var mp: String;
 public static var mpA: String;
 public static var tp: String;
 public static var tpA: String;
 public static var exp: String;
 public static var expA: String;
 public static var fight: String;
 public static var escape: String;
 public static var attack: String;
 public static var guard: String;
 public static var item: String;
 public static var skill: String;
 public static var equip: String;
 public static var status: String;
 public static var formation: String;
 public static var save: String;
 public static var gameEnd: String;
 public static var options: String;
 public static var weapon: String;
 public static var armor: String;
 public static var keyItem: String;
 public static var equip2: String;
 public static var optimize: String;
 public static var clear: String;
 public static var newGame: String;
 public static var continue_: String;
 public static var toTitle: String;
 public static var cancel: String;
 public static var buy: String;
 public static var sell: String;
 public static var alwaysDash: String;
 public static var commandRemember: String;
 public static var bgmVolume: String;
 public static var bgsVolume: String;
 public static var meVolume: String;
 public static var seVolume: String;
 public static var possession: String;
 public static var expTotal: String;
 public static var expNext: String;
 public static var saveMessage: String;
 public static var loadMessage: String;
 public static var file: String;
 public static var partyName: String;
 public static var emerge: String;
 public static var preemptive: String;
 public static var surprise: String;
 public static var escapeStart: String;
 public static var escapeFailure: String;
 public static var victory: String;
 public static var defeat: String;
 public static var obtainExp: String;
 public static var obtainGold: String;
 public static var obtainItem: String;
 public static var levelUp: String;
 public static var obtainSkill: String;
 public static var useItem: String;
 public static var criticalToEnemy: String;
 public static var criticalToActor: String;
 public static var actorDamage: String;
 public static var actorRecovery: String;
 public static var actorGain: String;
 public static var actorLoss: String;
 public static var actorDrain: String;
 public static var actorNoDamage: String;
 public static var actorNoHit: String;
 public static var enemyDamage: String;
 public static var enemyRecovery: String;
 public static var enemyGain: String;
 public static var enemyLoss: String;
 public static var enemyDrain: String;
 public static var enemyNoDamage: String;
 public static var enemyNoHit: String;
 public static var evasion: String;
 public static var magicEvasion: String;
 public static var magicReflection: String;
 public static var counterAttack: String;
 public static var substitute: String;
 public static var buffAdd: String;
 public static var debuffAdd: String;
 public static var buffRemove: String;
 public static var actionFailure: String;
 public static function basic(basicId: Int): String;
 public static function param(paramId: Int): String;
 public static function command(commandId: Int): String;
 public static function message(messageId: String): String;
 public static function getter(method: String, param: Int): String;
}
