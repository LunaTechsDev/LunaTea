package rm.windows;

import rm.core.Rectangle;

typedef Info = {key: String};

@:expose("Window_SavefileList")
@:native("Window_SavefileList")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
extern class Window_SavefileList extends Window_Selectable {
 private var _mode: String;

 #if !compileMV
 /**
  * Whether or not the auto save feature is enabled
  *
  * @default {Bool} false
  * @memberof Window_SavefileList
  */
 private var _autosave: Bool;
 #end

 #if !compileMV
 public function new(rect: Rectangle);

 public function setMode(mode: String, autosave: Bool): Void;
 public function selectSavefile(savefileId: Float): Void;

 #else
 public function new(x: Float, y: Float, width: Float, height: Float);
 /**
  * Sets the mode of the save file window.
  *
  * @param {string} mode
  * @memberof Window_SavefileList
  */
 public function setMode(mode: String): Void;
 #end

 /**
  * Returns the maximum number of visible items.
  *
  * @returns {number}
  * @memberof Window_SavefileList
  */
 public function maxVisibleItems(): Float;

 public function itemHeight(): Float;

 /**
  * Draws the file id at the specified x and y coordinates.
  *
  * @param {number} id
  * @param {number} x
  * @param {number} y
  * @memberof Window_SavefileList
  */
 public function drawFileId(id: Float, x: Float, y: Float): Void;

 public function drawContents(info: Info, rect: Rectangle, valid: Bool): Void;
 public function drawGameTitle(info: Info, x: Float, y: Float,
  width: Float): Void;
 public function drawPartyCharacters(info: Info, x: Float, y: Float): Void;

 /**
  * Draws the current playtime at the specified x and y coordinates within the given
  * width.
  * @param {{key: string}} info
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_SavefileList
  */
 public function drawPlaytime(info: Info, x: Float, y: Float,
  width: Float): Void;
}
