package rm.objects;

@:expose("Game_Actors")
@:native("Game_Actors")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Game_Actors {
 /**
  * List of Game_Actor in the database.
  */
 private var _data: Array<Game_Actor>;

 public function new(): Void;
 public function initialize(): Void;

 /**
  * Returns the actor with the specified id.
  *
  * @param {number} actorId
  * @returns {Game_Actor}
  * @memberof Game_Actors
  */
 public function actor(actorId: Float): Game_Actor;
}
