---@class UARPlaneGeometry : UARTrackedGeometry
---@field private Orientation EARPlaneOrientation
---@field private Center FVector
---@field private Extent FVector
---@field private BoundaryPolygon TArray<FVector>
---@field private SubsumedBy UARPlaneGeometry @Used by ARCore Only
local UARPlaneGeometry = {}

---@return UARPlaneGeometry
function UARPlaneGeometry:GetSubsumedBy() end

---@return EARPlaneOrientation
function UARPlaneGeometry:GetOrientation() end

---@return FVector
function UARPlaneGeometry:GetExtent() end

---@return FVector
function UARPlaneGeometry:GetCenter() end

---@return TArray_FVector_
function UARPlaneGeometry:GetBoundaryPolygonInLocalSpace() end

