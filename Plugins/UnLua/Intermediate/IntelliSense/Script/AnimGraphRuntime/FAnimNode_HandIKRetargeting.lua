---Node to handle re-targeting of Hand IK bone chain.
---It looks at position in Mesh Space of Left and Right IK bones, and moves Left and Right IK bones to those.
---based on HandFKWeight. (0 = favor left hand, 1 = favor right hand, 0.5 = equal weight).
---This is used so characters of different proportions can handle the same props.
---@class FAnimNode_HandIKRetargeting : FAnimNode_SkeletalControlBase
---@field public RightHandFK FBoneReference @Bone for Right Hand FK
---@field public LeftHandFK FBoneReference @Bone for Left Hand FK
---@field public RightHandIK FBoneReference @Bone for Right Hand IK
---@field public LeftHandIK FBoneReference @Bone for Left Hand IK
---@field public IKBonesToMove TArray<FBoneReference> @IK Bones to move.
---@field public HandFKWeight number @Which hand to favor. 0.5 is equal weight for both, 1 = right hand, 0 = left hand.
local FAnimNode_HandIKRetargeting = {}
