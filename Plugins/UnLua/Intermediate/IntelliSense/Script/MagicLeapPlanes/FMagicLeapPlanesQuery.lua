---Type used to represent a plane query.
---@class FMagicLeapPlanesQuery
---@field public Flags TArray<EMagicLeapPlaneQueryFlags> @The flags to apply to this query.
---@field public SearchVolume UBoxComponent @DEPRECATED. Use individual fields for setting search volume position, orientation and extents.
---@field public MaxResults integer @The maximum number of results that should be returned.  This is also the minimum expected size of the array of results passed to the MLPlanesGetResult function.
---@field public MinHoleLength number @If #MLPlanesQueryFlag_IgnoreHoles is set to false, holes with a perimeter (in meters) smaller than this value will be ignored, and can be part of the plane.  This value cannot be lower than 0 (lower values will be capped to this minimum). A good default value is 50cm.
---@field public MinPlaneArea number @The minimum area (in squared meters) of planes to be returned.  This value cannot be lower than 400 (lower values will be capped to this minimum).
---@field public SearchVolumePosition FVector
---@field public SearchVolumeOrientation FQuat
---@field public SearchVolumeExtents FVector
---@field public SimilarityThreshold number @The threshold used to compare incoming planes with any cached planes. Larger values reduce the amount of NewPlanes returned by a persistent query. Larger values increase the amount of error in the current set of planes.
---@field public bSearchVolumeTrackingSpace boolean @A flag representing what coordinate space the search volume is in. If set, the search volume is in HMD tracking space. If unset, the search volume is in world space.
---@field public bResultTrackingSpace boolean @A flag representing what coordinate space the results are in. If set, the results are in HMD tracking space. If unset, the results are is in world space.
local FMagicLeapPlanesQuery = {}
