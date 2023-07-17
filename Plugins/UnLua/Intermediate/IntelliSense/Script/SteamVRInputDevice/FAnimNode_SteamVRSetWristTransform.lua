---Custom animation node that sets the wrist transform of a target pose from a reference pose
---@class FAnimNode_SteamVRSetWristTransform : FAnimNode_Base
---@field public ReferencePose FPoseLink @The pose from where we will get the root and/or wrist transform from
---@field public HandSkeleton EHandSkeleton @What kind of skeleton is used in the reference pose
---@field public TargetPose FPoseLink @The pose to apply the wrist transform to
local FAnimNode_SteamVRSetWristTransform = {}
