---@class UFoliageStatistics : UBlueprintFunctionLibrary
local UFoliageStatistics = {}

---Counts how many foliage instances overlap a given sphere
---return number of foliage instances with their mesh set to Mesh that overlap the sphere
---@param WorldContextObject UObject
---@param StaticMesh UStaticMesh
---@param CenterPosition FVector
---@param Radius number
---@return integer
function UFoliageStatistics.FoliageOverlappingSphereCount(WorldContextObject, StaticMesh, CenterPosition, Radius) end

---Gets the number of instances overlapping a provided box
---@param WorldContextObject UObject
---@param StaticMesh UStaticMesh
---@param Box FBox
---@return integer
function UFoliageStatistics.FoliageOverlappingBoxCount(WorldContextObject, StaticMesh, Box) end

