---A box generally used for simple collision. Bounds are rendered as lines in the editor.
---@class UBoxComponent : UShapeComponent
---@field protected BoxExtent FVector @The extents (radii dimensions) of the box *
---@field protected LineThickness number @Used to control the line thickness when rendering
local UBoxComponent = {}

---Change the box extent size. This is the unscaled size, before component scale is applied.
---@param InBoxExtent FVector
---@param bUpdateOverlaps boolean @[opt] 
function UBoxComponent:SetBoxExtent(InBoxExtent, bUpdateOverlaps) end

---
---@return FVector
function UBoxComponent:GetUnscaledBoxExtent() end

---
---@return FVector
function UBoxComponent:GetScaledBoxExtent() end

