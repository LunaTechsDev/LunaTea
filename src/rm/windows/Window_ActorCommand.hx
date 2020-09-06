package rm.windows;

import rm.objects.Game_Actor;

/**
 * -----------------------------------------------------------------------------
 * Window_ActorCommand
 *
 * The window for selecting an actor's action on the battle screen.
 * @class Window_ActorCommand
 */
@:expose("Window_ActorCommand")
@:native("Window_ActorCommand")
extern class Window_ActorCommand extends Window_Command {
 private var _actor: Game_Actor;

 public dynamic function new();

 /**
  * Adds the attack command to the actor command window.
  *
  * @memberof Window_ActorCommand
  */
 public dynamic function addAttackCommand(): Void;

 /**
  * Adds the skill command to the actor command window.
  *
  * @memberof Window_ActorCommand
  */
 public dynamic function addSkillCommands(): Void;

 /**
  * Adds the guard command to the actor command window.
  *
  * @memberof Window_ActorCommand
  */
 public dynamic function addGuardCommand(): Void;

 /**
  * Adds the item command to the actor command window.
  *
  * @memberof Window_ActorCommand
  */
 public dynamic function addItemCommand(): Void;

 /**
  * Sets up the actor command window with a specified actor.
  *
  * @param {Game_Actor} actor
  * @memberof Window_ActorCommand
  */
 public dynamic function setup(actor: Game_Actor): Void;

 public dynamic function selectLast(): Void;
}
