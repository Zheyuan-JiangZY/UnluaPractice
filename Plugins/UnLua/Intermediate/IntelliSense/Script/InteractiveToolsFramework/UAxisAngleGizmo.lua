---@class UAxisAngleGizmo : UInteractiveGizmo
---@field public AxisSource TScriptInterface<UGizmoAxisSource>
---@field public AngleSource TScriptInterface<UGizmoFloatParameterSource>
---@field public HitTarget TScriptInterface<UGizmoClickTarget>
---@field public StateTarget TScriptInterface<UGizmoStateTarget>
---@field public bInInteraction boolean
---@field public RotationOrigin FVector
---@field public RotationAxis FVector
---@field public RotationPlaneX FVector
---@field public RotationPlaneY FVector
---@field public InteractionStartPoint FVector
---@field public InteractionCurPoint FVector
---@field public InteractionStartAngle number
---@field public InteractionCurAngle number
local UAxisAngleGizmo = {}

