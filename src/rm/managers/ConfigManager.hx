package rm.managers;

import rm.types.RM.ConfigData;

/**
 * Manages the configuration of RPGMakerMZ Config Data.
 */
@:expose("ConfigManager")
@:native("ConfigManager")
extern class ConfigManager {
 public static dynamic function load(): Void;
 public static dynamic function save(): Void;
 public static dynamic function makeData(): ConfigData;
 public static dynamic function applyData(config: ConfigData): Void;
 public static dynamic function readFlag(config: ConfigData,
  name: String): Bool;
 public static dynamic function readVolume(config: ConfigData,
  name: String): Int;
}
