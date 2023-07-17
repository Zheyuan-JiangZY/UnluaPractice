---Struct containing information for a particular LOD level, such as materials and info for when to use it.
---@class FSkeletalMeshLODInfo
---@field public ScreenSize FPerPlatformFloat @ScreenSize to display this LOD. The screen size is based around the projected diameter of the bounding sphere of the model. i.e. 0.5 means half the screen's maximum dimension.
---@field public LODHysteresis number @Used to avoid 'flickering' when on LOD boundary. Only taken into account when moving from complex->simple.
---@field public LODMaterialMap TArray<integer> @Mapping table from this LOD's materials to the USkeletalMesh materials array. section index is the key remapped material index is the value, can be INDEX_NONE for no remapping
---@field public BuildSettings FSkeletalMeshBuildSettings @build settings to apply when building render data.
---@field public ReductionSettings FSkeletalMeshOptimizationSettings @Reduction settings to apply when building render data.
---@field public BonesToRemove TArray<FBoneReference> @Bones which should be removed from the skeleton for the LOD level
---@field public BonesToPrioritize TArray<FBoneReference> @Bones which should be prioritized for the quality, this will be weighted toward keeping source data.
---@field public WeightOfPrioritization number @How much to consideration to give BonesToPrioritize.  The weight is an additional vertex simplification penalty where 0 means nothing.
---@field public BakePose UAnimSequence @Pose which should be used to reskin vertex influences for which the bones will be removed in this LOD level, uses ref-pose by default
---@field public BakePoseOverride UAnimSequence @This is used when you are sharing the LOD settings, but you'd like to override the BasePose. This precedes prior to BakePose
---@field public SourceImportFilename string @The filename of the file tha was used to import this LOD if it was not auto generated.
---@field public SkinCacheUsage ESkinCacheUsage @How this LOD uses the skin cache feature. Auto will defer to the default project global option. If Ray Tracing is enabled, will imply Enabled
---@field public bHasBeenSimplified boolean @Whether to disable morph targets for this LOD.
---@field public bHasPerLODVertexColors boolean
---@field public bAllowCPUAccess boolean @Keeps this LODs data on the CPU so it can be used for things such as sampling in FX.
---@field public bSupportUniformlyDistributedSampling boolean @Mesh supports uniformly distributed sampling in constant time. Memory cost is 8 bytes per triangle. Example usage is uniform spawning of particles.
---@field public bImportWithBaseMesh boolean @* This boolean specify if the LOD was imported with the base mesh or not.
local FSkeletalMeshLODInfo = {}