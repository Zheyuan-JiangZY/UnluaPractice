---UGizmoComponentHitTarget is an IGizmoClickTarget implementation that
---hit-tests a UPrimitiveComponent
---@class UGizmoComponentHitTarget : UObject
---@field public Component UPrimitiveComponent @Component->LineTraceComponent() is called to determine if the target is hit
local UGizmoComponentHitTarget = {}

---@param bHovering boolean
function UGizmoComponentHitTarget:UpdateHoverState(bHovering) end

