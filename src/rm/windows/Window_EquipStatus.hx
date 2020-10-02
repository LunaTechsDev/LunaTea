package rm.windows;

import rm.types.LunaTea.ParameterIdA;
import rm.core.Rectangle;
import rm.objects.Game_Actor;

@:expose("Window_EquipStatus")
@:native("Window_EquipStatus")
@:build(macros.BuildMacroTools.buildDynamicFunctions())
@:build(macros.BuildMacroTools.buildPublicPrivateFields())
#if compileMV
extern class Window_EquipStatus extends Window_Base {
#else
extern class Window_EquipStatus extends Window_StatusBase {
#end
private var _actor: Game_Actor;
private var _tempActor: Game_Actor;
#if compileMV
public function new(x: Float, y: Float);
public function initialize(x: Float, y: Float): Void;
#else
public function new(rect: Rectangle): Void;
public function initialize(rect: Rectangle): Void;
#end
public function windowWidth(): Float;
public function windowHeight(): Float;
public function numVisibleRows(): Float;
public function setActor(actor: Game_Actor): Void;
public function refresh(): Void;
public function setTempActor(tempActor: Game_Actor): Void;
public function drawItem(x: Float, y: Float, paramId: ParameterIdA): Void;
public function drawParamName(x: Float, y: Float, paramId: ParameterIdA): Void;

public function drawCurrentParam(x: Float, y: Float,
 paramId: ParameterIdA): Void;

public function drawRightArrow(x: Float, y: Float): Void;
public function drawNewParam(x: Float, y: Float, paramId: ParameterIdA): Void;
#if compileMV
#else

/**
 * The amount of spacing between columns
 * in the equip status menu.
 * Defaults to 0.
 * @return Float
 */
public function colSpacing(): Float;

/**
 * Draws all the parameters within the
 * equip status window.
 */
public function drawAllParams(): Void;

/**
 * The width of the right arrow within the equip
 * status window.
 * Defaults to 32.
 * @return Float
 */
public function rightArrowWidth(): Float;

/**
 * The width of the parameter text within
 * the equip status window.
 * Defaults to 48.
 * @return Float
 */
public function paramWidth(): Float;

/**
 * The x position of the parameter
 * within the equip status window.
 * ```js
 *   const itemPadding = this.itemPadding();
    const rightArrowWidth = this.rightArrowWidth();
    const paramWidth = this.paramWidth();
    return this.innerWidth - itemPadding - paramWidth * 2 - rightArrowWidth;
 * ```
 * @return Float
 */
public function paramX(): Float;

/**
 * The  y position of the parameter
 * within the equip status window.
 * ```js
 * const faceHeight = ImageManager.faceHeight;
    return faceHeight + Math.floor(this.lineHeight() * (index + 1.5));
 * ```
 * @return Float
 */
public function paramY(): Float;
#end
}
