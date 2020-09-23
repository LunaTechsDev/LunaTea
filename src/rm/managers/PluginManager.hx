package rm.managers;

import haxe.extern.Rest;
import js.html.Event;
import rm.types.RM;

/**
 * Static class that manages plugins
 */
@:expose("PluginManager")
@:native("PluginManager")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class PluginManager {
 private static var _path: String;

 private static var _scripts: Array<String>;

 private static var _errorUrls: Array<String>;

 public static function setup(plugins: Array<PluginSettings>): Void;

 public static function checkErrors(): Void;

 /**
  * Returns all of the plugin parameters for an RPGMakerMZ
  * plugin in a JSON Like String Format.
  * Should typedef this for ease of parsing.
  * @param name
  * @return Any
  */
 public static function parameters(name: String): Any;

 /**
  * Uses internally by the Plugin Manager to load
  * the plugin scripts.
  * @param name
  */
 public static function loadScript(name: String): Void;

 public static function onError(e: Event): Void;

 #if !compileMV
 /**
  * Makes the URL to the plugins folder.
  * ```js
  * return "js/plugins/" + Utils.encodeURI(fileName) + ".js";
  *```js
  * @return String
  */
 public static function makeUrl(fileName: String): String;

 /**
     * Regsters a new plugin command in MZ using a lambda expression
     * The Variable of the lambda should be transformed into the appropriate
     * typed def struct for your use case for your command.
  * Example Syntax For Commented Parameters
  *



    @command PluginCommandFunctionName
    @text My Plugin Command
    @desc Plugin Command Description Text

    @arg Actors
     @text Which Actors?
    @type actor[]
    @desc Select which Actor ID(s) to affect.
    @default ["1"]

    @arg State
    @text State
    @type state
    @desc Which State to apply?
    @default 1

    * @param pluginName
    * @param commandName
    * @param lambda
    ```js

     PluginManager.registerCommand("TestPlugin", "PluginCommandFunctionName", args => {
      // Get Arguments
      const actorIds = JSON.parse(args.Actors);
      const stateId = args.State;

      // Use the arguments
      for (const actorId of actorIds) {
         const actor = $gameParty.members().find(member => member.actorId() === Number(actorId));
         if (actor) {
          actor.addState(stateId);
         }
      }
     });
     ```
     * ```js

  */
 public static function registerCommand(pluginName: String,
  commandName: String, lambda: (Any) -> Void): Void;

 public static function callCommand(self: Any, pluginName: String,
  commandName: String, args: Rest<Dynamic>): Void;
 #end
}
