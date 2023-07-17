---@class FSkeletalMeshLODGroupSettings
---@field public ScreenSize FPerPlatformFloat @The screen sizes to use for the respective LOD level
---@field public LODHysteresis number @Used to avoid 'flickering' when on LOD boundary. Only taken into account when moving from complex->simple.
---@field public BoneFilterActionOption EBoneFilterActionOption @Bones which should be removed from the skeleton for the LOD level
---@field public BoneList TArray<FBoneFilter> @Bones which should be removed from the skeleton for the LOD level
---@field public BonesToPrioritize TArray<string> @Bones which should be prioritized for the quality, this will be weighted toward keeping source data.
---@field public WeightOfPrioritization number @Weight of how much consider for BonesToPrioritize. 0 means nothing, and 1 means take all source
---@field public BakePose UAnimSequence @Pose which should be used to reskin vertex influences for which the bones will be removed in this LOD level, uses ref-pose by default
---@field public ReductionSettings FSkeletalMeshOptimizationSettings @The optimization settings to use for the respective LOD level
local FSkeletalMeshLODGroupSettings = {}
