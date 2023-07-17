---Represents a hierarchy of a human pose skeleton tracked by the AR system
---@class FARSkeletonDefinition
---@field public NumJoints integer @How many joints this skeleton has
---@field public JointNames TArray<string> @The name of each joint in this skeleton
---@field public ParentIndices TArray<integer> @The parent index of each joint in this skeleton
local FARSkeletonDefinition = {}
