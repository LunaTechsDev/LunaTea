package rm.abstracts.objects;

import rm.objects.Game_Interpreter;

@:forward
@:forwardStatics
abstract GameInterpreter(Game_Interpreter) from Game_Interpreter
 to Game_Interpreter {
 public inline function new(depth: Float) {
  this = new Game_Interpreter(depth);
 }
}
