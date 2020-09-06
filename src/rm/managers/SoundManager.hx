package rm.managers;

/**
 * Static class that plays sound effects defined in the database.
 */
@:expose("SoundManager")
@:native("SoundManager")
extern class SoundManager {
 public static dynamic function preloadImportantSounds(): Void;
 public static dynamic function loadSystemSound(databaseNumber: Int): Void;
 public static dynamic function playSystemSound(databaseNumber: Int): Void;
 public static dynamic function playCursor(): Void;
 public static dynamic function playOk(): Void;
 public static dynamic function playCancel(): Void;
 public static dynamic function playBuzzer(): Void;
 public static dynamic function playEquip(): Void;
 public static dynamic function playSave(): Void;
 public static dynamic function playLoad(): Void;
 public static dynamic function playBattleStart(): Void;
 public static dynamic function playEscape(): Void;
 public static dynamic function playEnemyAttack(): Void;
 public static dynamic function playEnemyDamage(): Void;
 public static dynamic function playEnemyCollapse(): Void;
 public static dynamic function playBossCollapse1(): Void;
 public static dynamic function playBossCollapse2(): Void;
 public static dynamic function playActorDamage(): Void;
 public static dynamic function playActorCollapse(): Void;
 public static dynamic function playRecovery(): Void;
 public static dynamic function playMiss(): Void;
 public static dynamic function playEvasion(): Void;
 public static dynamic function playMagicEvasion(): Void;
 public static dynamic function playReflection(): Void;
 public static dynamic function playShop(): Void;
 public static dynamic function playUseItem(): Void;
 public static dynamic function playUseSkill(): Void;
}
