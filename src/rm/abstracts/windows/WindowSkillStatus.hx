package rm.abstracts.windows;

import rm.windows.Window_SkillStatus;

@:forward
@:forwardStatics
abstract WindowSkillStatus(Window_SkillStatus) from Window_SkillStatus
 to Window_SkillStatus {
 public inline function new(x: Float, y: Float, width: Float, height: Float) {
  this = new Window_SkillStatus(x, y, width, height);
 }
}
