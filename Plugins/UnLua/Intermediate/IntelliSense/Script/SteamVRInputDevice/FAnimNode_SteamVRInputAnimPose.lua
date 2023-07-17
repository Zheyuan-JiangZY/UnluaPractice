---Custom animation node to retrieve poses from the Skeletal Input System
---@class FAnimNode_SteamVRInputAnimPose : FAnimNode_Base
---@field public MotionRange EMotionRange @Range of motion for the skeletal input values
---@field public Hand EHand @Which hand should the animation node retrieve skeletal input values for
---@field public HandSkeleton EHandSkeleton @What kind of skeleton are we dealing with
---@field public Mirror boolean @Should the pose be mirrored so it can be applied to the opposite hand
---@field public SteamVRSkeletalTransform FSteamVRSkeletonTransform @The UE4 equivalent of the SteamVR Transform values per bone
---@field public UE4RetargettingRefs FUE4RetargettingRefs @SteamVR Skeleton to UE4 retargetting cache
local FAnimNode_SteamVRInputAnimPose = {}
