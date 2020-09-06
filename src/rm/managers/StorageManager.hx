package rm.managers;

import haxe.Json;
import js.lib.Promise;

/**
 * The static class that manages storage of save game data.
 */
@:expose("StorageManager")
@:native("StorageManager")
extern class StorageManager {
 // @todo make type for zip
 #if !compileMV
 public static dynamic function saveObject(saveName: String,
  object: Dynamic): Promise<Any>;
 public static dynamic function loadObject(object: Dynamic): Promise<Any>;
 public static dynamic function objectToJson(object: Dynamic): Promise<Any>;
 public static dynamic function jsonToObject(json: Json): Promise<Any>;
 public static dynamic function jsonToZip(json: Json): Promise<Any>;
 public static dynamic function zipToJson(zip: Any): Promise<Any>; // TODO: Find proper zip type for this
 public static dynamic function saveZip(saveName: String,
  zip: Dynamic): Promise<Any>;
 public static dynamic function loadZip(saveName: String,
  zip: Dynamic): Promise<Any>;
 public static dynamic function saveToForage(saveName: String): Promise<Any>;
 public static dynamic function loadFromForage(saveName: String): Promise<Any>;
 public static dynamic function forageExists(saveName: String): Bool;
 public static dynamic function removeForage(saveName: String): Promise<Any>;
 public static dynamic function updateForageKeys(): Promise<Any>;
 public static dynamic function forageKeysUpdated(): Bool;
 public static dynamic function fsMkdir(path: String): Void;
 public static dynamic function fsRename(oldPath: String,
  newPath: String): Void;
 public static dynamic function fsUnlink(path: String): Void;
 public static dynamic function fsReadFile(path: String): Void;
 public static dynamic function fsWriteFile(path: String, data: Any): Void;
 public static dynamic function fileDirectoryPath(): String;
 public static dynamic function filePath(): String;
 public static dynamic function forageKey(): String;
 public static dynamic function forageTestKey(): String;
 #end
 public static dynamic function save(savefileId: Int, json: String): Void;
 public static dynamic function load(savefileId: Int): String;
 public static dynamic function exists(savefileId: Int): Bool;
 public static dynamic function remove(savefileId: Int): Void;
 public static dynamic function backup(savefileId: Int): Void;
 public static dynamic function backupExists(savefileId: Int): Bool;
 public static dynamic function cleanBackup(savefileId: Int): Bool;
 public static dynamic function restoreBackup(savefileId: Int): Void;
 public static dynamic function isLocalMode(): Bool;
 public static dynamic function saveToLocalFile(savefileId: Int,
  json: String): Void;
 public static dynamic function loadFromLocalFile(savefileId: Int): String;
 public static dynamic function loadFromLocalBackupFile(savefileId: Int): String;
 public static dynamic function localFileBackupExists(savefileId: Int): Bool;
 public static dynamic function localFileExists(savefileId: Int): Bool;
 public static dynamic function removeLocalFile(savefileId: Int): Void;
 public static dynamic function saveToWebStorage(savefileId: Int,
  json: String): Void;
 public static dynamic function loadFromWebStorage(savefileId: Int): String;
 public static dynamic function loadFromWebStorageBackup(savefileId: Int): String;
 public static dynamic function webStorageBackupExists(savefileId: Int): Bool;
 public static dynamic function webStorageExists(savefileId: Int): Bool;
 public static dynamic function removeWebStorage(savefileId: Int): Void;
 public static dynamic function localFileDirectoryPath(): String;
 public static dynamic function localFilePath(savefileId: Int): String;
 public static dynamic function webStorageKey(savefileId: Int): String;
}
