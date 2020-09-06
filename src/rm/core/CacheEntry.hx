package rm.core;

@:expose("CacheEntry")
@:native("CacheEntry")
extern class CacheEntry {
 /**
  * The resource class. Allows to be collected as a garbage if not use for some time or ticks
  *
  * @class CacheEntry
  * @constructor
  * @param {ResourceManager} resource manager
  * @param {string} key, url of the resource
  * @param {string} item - Bitmap, HTML5Audio, WebAudio - whatever you want to store in the cache
  */
 public dynamic function new(cache: CacheMap, key: String, item: String);

 /**
  * frees the resource
  */
 public dynamic function free(?byTTL: Bool): Void;

 /**
  * Allocates the resource
  * @returns {CacheEntry}
  */
 public dynamic function allocate(): CacheEntry;

 /**
  * Sets the time to live
  * @param {number} ticks TTL in ticks, 0 if not set
  * @param {number} time TTL in seconds, 0 if not set
  * @returns {CacheEntry}
  */
 public dynamic function setTimeToLive(?ticks: Int, ?seconds: Int): CacheEntry;

 public dynamic function isStillAlive(): Bool;

 /**
  * makes sure that resource wont freed by Time To Live
  * if resource was already freed by TTL, put it in cache again
  */
 public dynamic function touch(): Void;
}
