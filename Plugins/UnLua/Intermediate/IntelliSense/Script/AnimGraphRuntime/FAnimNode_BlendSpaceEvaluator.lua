---Evaluates a point in a blendspace, using a specific time input rather than advancing time internally.
---Typically the playback position of the animation for this node will represent something other than time, like jump height.
---This node will not trigger any notifies present in the associated sequence.
---@class FAnimNode_BlendSpaceEvaluator : FAnimNode_BlendSpacePlayer
---@field public NormalizedTime number @Normalized time between [0,1]. The actual length of a blendspace is dynamic based on the coordinate, so it is exposed as a normalized value.
local FAnimNode_BlendSpaceEvaluator = {}
