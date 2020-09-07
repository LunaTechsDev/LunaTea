package rm.windows;

import rm.types.LunaTea.ParameterIdA;
import rm.core.Rectangle;
import rm.objects.Game_Actor;

@:expose("Window_EquipStatus")
@:native("Window_EquipStatus")
#if compileMV
extern class Window_EquipStatus extends Window_Base {
#else
extern class Window_EquipStatus extends Window_StatusBase {
#end

@:native("_actor")
public var __actor: Game_Actor;

private var _actor: Game_Actor;

@:native("_tempActor")
public var __tempActor: Game_Actor;

private var _tempActor: Game_Actor;
#if compileMV
public function new(x: Int, y: Int);
public function initialize(x: Int, y: Int): Void;
#else
public function new(rect: Rectangle): Void;
public function initialize(rect: Rectangle): Void;
#end
public function windowWidth(): Int;
public function windowHeight(): Int;
public function numVisibleRows(): Int;
public function setActor(actor: Game_Actor): Void;
public function refresh(): Void;
public function setTempActor(tempActor: Game_Actor): Void;
public function drawItem(x: Int, y: Int, paramId: ParameterIdA): Void;
public function drawParamName(x: Int, y: Int, paramId: ParameterIdA): Void;
public function drawCurrentParam(x: Int, y: Int, paramId: ParameterIdA): Void;
public function drawRightArrow(x: Int, y: Int): Void;
public function drawNewParam(x: Int, y: Int, paramId: ParameterIdA): Void;
#if compileMV
#else

/**
 * The amount of spacing between columns
 * in the equip status menu.
 * Defaults to 0.
 * @return Int
 */
public function colSpacing(): Int;

/**
 * Draws all the parameters within the
 * equip status window.
 */
public function drawAllParams(): Void;

/**
 * The width of the right arrow within the equip
 * status window.
 * Defaults to 32.
 * @return Int
 */
public function rightArrowWidth(): Int;

/**
 * The width of the parameter text within
 * the equip status window.
 * Defaults to 48.
 * @return Int
 */
public function paramWidth(): Int;

/**
 * The x position of the parameter
 * within the equip status window.
 * ```js
 *   const itemPadding = this.itemPadding();
    const rightArrowWidth = this.rightArrowWidth();
    const paramWidth = this.paramWidth();
    return this.innerWidth - itemPadding - paramWidth * 2 - rightArrowWidth;
 * ```
 * @return Int
 */
public function paramX(): Int;

/**
 * The  y position of the parameter
 * within the equip status window.
 * ```js
 * const faceHeight = ImageManager.faceHeight;
    return faceHeight + Math.floor(this.lineHeight() * (index + 1.5));
 * ```
 * @return Int
 */
public function paramY(): Int;
#end
}
