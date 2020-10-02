package rm.types;

import haxe.DynamicAccess;
import rm.objects.Game_Player;
import rm.objects.Game_Map;
import rm.objects.Game_Party;
import rm.objects.Game_Actors;
import rm.objects.Game_SelfSwitches;
import rm.objects.Game_Screen;
import rm.types.RPG.BaseItem;

typedef Matrix = {
 type: String,
 value: Array<Float>
}

typedef TouchInputEvents = {
 trigger: Bool,
 cancelled: Bool,
 moved: Bool,
 released: Bool,
 wheelX: Float,
 wheelY: Float,
}

typedef AudioParameters = {
 name: String,
 volume: Float,
 pitch: Float,
 pan: Float,
 pos: Float
}

typedef BattleRewards = {
 gold: Float,
 exp: Float,
 items: Array<BaseItem>
}

typedef BattlerAnimation = {
 animationId: Float,
 mirror: Bool,
 delay: Float,
}

typedef CommandItem = {
 name: String,
 symbol: String,
 enabled: Bool,
 ext: Any
}

typedef TextStateLT = {
 var text: String;
 var index: Int;
 var x: Float;
 var y: Float;
 var startX: Float;
 var startY: Float;
 var width: Float;
 var left: Float;
 var height: Float;
 var rtl: Bool;
 var buffer: String;
 var outputWidth: Float;
 var outputHeight: Float;
 var drawing: Bool;
}

#if compileMV
typedef TextState = {
 index: Int,
 x: Float,
 y: Float,
 startX: Float,
 left: Float,
 text: String
}
#else
typedef TextState = {
 var text: String;
 var index: Int;
 var x: Float;
 var y: Float;
 var startX: Float;
 var startY: Float;
 var width: Float;
 var height: Float;
 var rtl: Bool;
 var buffer: String;
 var outputWidth: Float;
 var outputHeight: Float;
 var drawing: Bool;
}
#end

typedef BattleLogMethod = {
 name: String,
 params: Any
}

typedef ConfigData = {
 alwaysDash: Bool,
 commandRemember: Bool,
 bgmVolume: Float,
 bgsVolume: Float,
 meVolume: Float,
 seVolume: Float
}

typedef DatabaseFile = {
 name: String,
 src: String
}

typedef SaveFileInfo = {
 globalId: String,
 title: String,
 characters: Array<Array<Any>>,
 faces: Array<Array<Any>>,
 playtime: String,
 timestamp: Float,
}

typedef SaveContents = {
 // system:Game_System,
 screen: Game_Screen,
 selfSwitches: Game_SelfSwitches,
 actors: Game_Actors,
 party: Game_Party,
 map: Game_Map,
 player: Game_Player
}

/**
 * Plugin Settings for RPGMakerMV/MZ
 */
typedef PluginSettings = {
 /**
  * Plugin Name
  */
 var name: String;

 /**
  * Plugin Status On/Off
  */
 var status: String;

 /**
  * Plugin Description
  */
 var description: String;

 /**
  * Plugin Parameters in a map/dictionary like syntax.
  * Example:
  * ```js
  * parameters["TextSpeed"]
  * ```
  */
 var parameters: DynamicAccess<Dynamic>;

 // Any //{key:String}:String
}

typedef Motion = {
 var index: Int;
 var loop: Bool;
}
