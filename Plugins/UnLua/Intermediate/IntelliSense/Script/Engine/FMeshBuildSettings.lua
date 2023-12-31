---Settings applied when building a mesh.
---@class FMeshBuildSettings
---@field public bUseMikkTSpace boolean @If true, degenerate triangles will be removed.
---@field public bRecomputeNormals boolean @If true, normals in the raw mesh are ignored and recomputed.
---@field public bRecomputeTangents boolean @If true, tangents in the raw mesh are ignored and recomputed.
---@field public bComputeWeightedNormals boolean @If true, we will use the surface area and the corner angle of the triangle as a ratio when computing the normals.
---@field public bRemoveDegenerates boolean @If true, degenerate triangles will be removed.
---@field public bBuildAdjacencyBuffer boolean @Required for PNT tessellation but can be slow. Recommend disabling for larger meshes.
---@field public bBuildReversedIndexBuffer boolean @Required to optimize mesh in mirrored transform. Double index buffer size.
---@field public bUseHighPrecisionTangentBasis boolean @If true, Tangents will be stored at 16 bit vs 8 bit precision.
---@field public bUseFullPrecisionUVs boolean @If true, UVs will be stored at full floating point precision.
---@field public bGenerateLightmapUVs boolean
---@field public bGenerateDistanceFieldAsIfTwoSided boolean @Whether to generate the distance field treating every triangle hit as a front face. When enabled prevents the distance field from being discarded due to the mesh being open, but also lowers Distance Field AO quality.
---@field public bSupportFaceRemap boolean
---@field public MinLightmapResolution integer
---@field public SrcLightmapIndex integer
---@field public DstLightmapIndex integer
---@field public BuildScale3D FVector @The local scale applied when building the mesh
---@field public DistanceFieldResolutionScale number @Scale to apply to the mesh when allocating the distance field volume texture. The default scale is 1, which is assuming that the mesh will be placed unscaled in the world.
---@field public DistanceFieldReplacementMesh UStaticMesh
local FMeshBuildSettings = {}
