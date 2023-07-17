---@class DatasmithLayer_C : USceneComponent
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public EnableHierarchy boolean
local DatasmithLayer_C = {}

---@param Enable boolean
---@param StaticMesh UStaticMeshComponent
function DatasmithLayer_C:UpdateChildStaticMeshVisibility(Enable, StaticMesh) end

---@param Enable boolean
function DatasmithLayer_C:UpdateHierarchy(Enable) end

---Event called every frame if tick is enabled
---@param DeltaSeconds number
function DatasmithLayer_C:ReceiveTick(DeltaSeconds) end

