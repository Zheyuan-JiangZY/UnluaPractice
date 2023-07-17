---Represents a human pose tracked in the 2D space
---@class FARPose2D
---@field public SkeletonDefinition FARSkeletonDefinition @The definition of this skeleton
---@field public JointLocations TArray<FVector2D> @The location of each joint in 2D normalized space
---@field public IsJointTracked TArray<boolean> @Flags indicating if each joint is tracked
local FARPose2D = {}
