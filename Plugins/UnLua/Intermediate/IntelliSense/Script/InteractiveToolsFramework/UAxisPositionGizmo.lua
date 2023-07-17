---UAxisPositionGizmo implements a gizmo interaction where 1D parameter value is manipulated
---by dragging a point on a 3D line/axis in space. The 3D point is converted to the axis parameter at
---the nearest point, giving us the 1D parameter value.
---As with other base gizmos, this class only implements the interaction. The visual aspect of the
---gizmo, the axis, and the parameter storage are all provided externally.
---The axis direction+origin is provided by an IGizmoAxisSource.
---The interaction target (ie the thing you have to click on to start the dragging interaction) is provided by an IGizmoClickTarget.
---The new 1D parameter value is sent to an IGizmoFloatParameterSource
---Internally a UClickDragInputBehavior is used to handle mouse input, configured in ::Setup()
---@class UAxisPositionGizmo : UInteractiveGizmo
---@field public AxisSource TScriptInterface<UGizmoAxisSource> @AxisSource provides the 3D line on which the interaction happens
---@field public ParameterSource TScriptInterface<UGizmoFloatParameterSource> @The 3D line-nearest-point is converted to a 1D coordinate along the line, and the change in value is sent to this ParameterSource
---@field public HitTarget TScriptInterface<UGizmoClickTarget> @The HitTarget provides a hit-test against some 3D element (presumably a visual widget) that controls when interaction can start
---@field public StateTarget TScriptInterface<UGizmoStateTarget> @StateTarget is notified when interaction starts and ends, so that things like undo/redo can be handled externally.
---@field public bEnableSignedAxis boolean @If enabled, then the sign on the parameter delta is always "increasing" when moving away from the origin point, rather than just being a projection onto the axis
---@field public bInInteraction boolean @If true, we are in an active click+drag interaction, otherwise we are not
---@field public InteractionOrigin FVector @The values below are used in the context of a single click-drag interaction, ie if bInInteraction = true They otherwise should be considered uninitialized
---@field public InteractionAxis FVector
---@field public InteractionStartPoint FVector
---@field public InteractionCurPoint FVector
---@field public InteractionStartParameter number
---@field public InteractionCurParameter number
---@field public ParameterSign number
local UAxisPositionGizmo = {}
