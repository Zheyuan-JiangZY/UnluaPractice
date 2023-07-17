---Base class for simple Components intended to be used as part of 3D Gizmos.
---Contains common properties and utility functions.
---This class does nothing by itself, use subclasses like UGizmoCircleComponent
---@class UGizmoBaseComponent : UPrimitiveComponent
---@field public Color FLinearColor
---@field public HoverSizeMultiplier number
---@field public PixelHitDistanceThreshold number
local UGizmoBaseComponent = {}

---@param bWorldIn boolean
function UGizmoBaseComponent:UpdateWorldLocalState(bWorldIn) end

---@param bHoveringIn boolean
function UGizmoBaseComponent:UpdateHoverState(bHoveringIn) end

