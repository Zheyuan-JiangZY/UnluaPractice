---@class UAnimSeqExportOption : UObject
---@field public bExportTransforms boolean @If enabled, export the transforms from the animation
---@field public bExportCurves boolean @If enabled, export the curves from the animation
---@field public bRecordInWorldSpace boolean @If enabled we record in World Space otherwise we record from 0,0,0
---@field public bEvaluateAllSkeletalMeshComponents boolean @If true we evaluate all other skeletal mesh components under the same actor, this may be needed for example, to get physics to get baked
---@field public WarmUpFrames FFrameNumber @Number of Display Rate frames to evaluate before doing the export. Use it if there is some post anim BP effects you want to warm up
local UAnimSeqExportOption = {}

