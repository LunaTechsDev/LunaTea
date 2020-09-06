package rm.core;

import rm.managers.ImageManager;

@:expose("CacheMap")
@:native("CacheMap")
extern class CacheMap {
 /**
  * Cache for images, audio, or any other kind of resource
  * @param manager
  * @constructor
  */
 public dynamic function new(manager: ImageManager);

 /**
  * checks ttl of all elements and removes dead ones
  */
 public dynamic function checkTTL(): Void;

 /**
  * cache item
  * @param key url of cache element
  * @returns {*|null}
  */
 public dynamic function getItem(key: String): Any;

 public dynamic function clear(): Void;
 public dynamic function setItem(key: String, item: Any): CacheEntry;
 public dynamic function update(ticks: Int, delta: Float): Void;
}
