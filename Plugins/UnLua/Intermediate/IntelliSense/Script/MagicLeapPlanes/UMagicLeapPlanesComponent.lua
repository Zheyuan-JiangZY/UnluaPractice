---Component that provides access to the Planes API functionality.
---@class UMagicLeapPlanesComponent : USceneComponent
---@field public QueryFlags TArray<EMagicLeapPlaneQueryFlags> @The flags to apply to this query. TODO: Should be a TSet but that is misbehaving in the editor.
---@field public SearchVolume UBoxComponent @Bounding box for searching planes in.
---@field public MaxResults integer @The maximum number of planes that should be returned in the result.
---@field public MinHolePerimeter number @If EMagicLeapPlaneQueryFlags::IgnoreHoles is not a query flag then holes with a perimeter (in Unreal Units) smaller than this value will be ignored, and can be part of the plane.
---@field public MinPlaneArea number @The minimum area (in squared Unreal Units) of planes to be returned. This value cannot be lower than 400 (lower values will be capped to this minimum).
---@field public QueryType EMagicLeapPlaneQueryType @The type of plane query to perform. Bulk: Use OnPlanesQueryResult to retrieve results. Delta: Use OnPersistentPlanesQueryResult to retrieve results.
---@field public SimilarityThreshold number @The threshold used to compare incoming planes with any cached planes.
---@field private OnPlanesQueryResult MulticastDelegate @Delegate instances
---@field private OnPersistentPlanesQueryResult MulticastDelegate
local UMagicLeapPlanesComponent = {}

---Initiates a plane query.
---@return boolean
function UMagicLeapPlanesComponent:RequestPlanesAsync() end

