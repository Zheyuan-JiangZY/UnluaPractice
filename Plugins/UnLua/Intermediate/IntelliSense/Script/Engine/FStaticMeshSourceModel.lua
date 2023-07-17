---Source model from which a renderable static mesh is built.
---@class FStaticMeshSourceModel
---@field public BuildSettings FMeshBuildSettings @Settings applied when building the mesh.
---@field public ReductionSettings FMeshReductionSettings @Reduction settings to apply when building render data.
---@field public ScreenSize FPerPlatformFloat @ScreenSize to display this LOD. The screen size is based around the projected diameter of the bounding sphere of the model. i.e. 0.5 means half the screen's maximum dimension.
---@field public SourceImportFilename string @The file path that was used to import this LOD.
---@field public bImportWithBaseMesh boolean @Whether this LOD was imported in the same file as the base mesh.
local FStaticMeshSourceModel = {}
