---@class UARMeshGeometry : UARTrackedGeometry
local UARMeshGeometry = {}

---Try to determine the classification of the object at a world space location
---@param InWorldLocation FVector
---@param OutClassification EARObjectClassification @[out] 
---@param OutClassificationLocation FVector @[out] 
---@param MaxLocationDiff number @[opt] 
---@return boolean
function UARMeshGeometry:GetObjectClassificationAtLocation(InWorldLocation, OutClassification, OutClassificationLocation, MaxLocationDiff) end

