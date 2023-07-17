---@class UFbxStaticMeshImportData : UFbxMeshImportData
---@field public StaticMeshLODGroup string @The LODGroup to associate with this mesh when it is imported
---@field public VertexColorImportOption integer @Specify how vertex colors should be imported
---@field public VertexOverrideColor FColor @Specify override color in the case that VertexColorImportOption is set to Override
---@field public bRemoveDegenerates boolean @Disabling this option will keep degenerate triangles found.  In general you should leave this option on.
---@field public bBuildAdjacencyBuffer boolean @Required for PNT tessellation but can be slow. Recommend disabling for larger meshes.
---@field public bBuildReversedIndexBuffer boolean
---@field public bGenerateLightmapUVs boolean
---@field public bOneConvexHullPerUCX boolean @If checked, one convex hull per UCX_ prefixed collision mesh will be generated instead of decomposing into multiple hulls
---@field public bAutoGenerateCollision boolean @If checked, collision will automatically be generated (ignored if custom collision is imported or used).
---@field public bCombineMeshes boolean @If enabled, combines all meshes into a single mesh
local UFbxStaticMeshImportData = {}

