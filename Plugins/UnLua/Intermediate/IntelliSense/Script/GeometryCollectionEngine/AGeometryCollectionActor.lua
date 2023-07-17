---@class AGeometryCollectionActor : AActor
---@field public GeometryCollectionComponent UGeometryCollectionComponent @GeometryCollectionComponent
---@field public GeometryCollectionDebugDrawComponent UGeometryCollectionDebugDrawComponent
local AGeometryCollectionActor = {}

---@param Start FVector
---@param End FVector
---@param OutHit FHitResult @[out] 
---@return boolean
function AGeometryCollectionActor:RaycastSingle(Start, End, OutHit) end

