---* Pose Asset that can be blended by weight of curves
---@class UPoseAsset : UAnimationAsset
---@field private PoseContainer FPoseDataContainer @Animation Pose Data
---@field private bAdditivePose boolean @Whether or not Additive Pose or not - these are property that needs post process, so
---@field private BasePoseIndex integer @if -1, use ref pose
---@field public RetargetSource string @Base pose to use when retargeting
---@field public RetargetSourceAsset TSoftObjectPtr<USkeletalMesh> @If RetargetSource is set to Default (None), this is asset for the base pose to use when retargeting. Transform data will be saved in RetargetSourceAssetReferencePose.
---@field public RetargetSourceAssetReferencePose TArray<FTransform> @When using RetargetSourceAsset, use the post stored here
---@field public SourceAnimation UAnimSequence
local UPoseAsset = {}

