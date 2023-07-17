---Common Cloth LOD representation for all clothing assets.
---@class FClothLODDataCommon
---@field public PhysicalMeshData FClothPhysicalMeshData @Raw phys mesh data
---@field public CollisionData FClothCollisionData @Collision primitive and convex data for clothing collisions
---@field public bUseMultipleInfluences boolean @Whether to use multiple triangles to interpolate from simulated cloth mesh to render mesh
---@field public SkinningKernelRadius number @Radius of the weighting kernel used to interpolate from simulated cloth mesh to render mesh
---@field public PointWeightMaps TArray<FPointWeightMap> @Parameter masks defining the physics mesh masked data
local FClothLODDataCommon = {}
