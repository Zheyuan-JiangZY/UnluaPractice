---Represents a human pose tracked in the 3D space
---@class FARPose3D
---@field public SkeletonDefinition FARSkeletonDefinition @The definition of this skeleton
---@field public JointTransforms TArray<FTransform> @The transform of each join in the model space
---@field public IsJointTracked TArray<boolean> @Flags indicating if each joint is tracked
---@field public JointTransformSpace EARJointTransformSpace
local FARPose3D = {}
