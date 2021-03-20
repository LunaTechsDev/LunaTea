package core;

import pixi.core.display.DisplayObject;

/**
 * Sets the pixi object interactable along with
 * setting the button mode to interactable as well.
 * @param bool
 */
function setInteracble(displayObj: DisplayObject, bool: Bool) {
 displayObj.interactive = bool;
 displayObj.buttonMode = bool;
}
