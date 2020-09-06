package rm.windows;

import rm.types.RPG.BaseItem;

@:expose("Window_MenuActor")
@:native("Window_MenuActor")
extern class Window_MenuActor extends Window_MenuStatus {
 public dynamic function new();

 public dynamic function initialize(): Void;

 public dynamic function selectForItem(item: BaseItem): Void;
}
