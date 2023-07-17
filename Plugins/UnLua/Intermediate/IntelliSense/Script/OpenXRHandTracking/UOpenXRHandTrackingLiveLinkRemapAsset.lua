---OpenXR HandTracking LiveLink remapping asset
---@class UOpenXRHandTrackingLiveLinkRemapAsset : ULiveLinkRetargetAsset
---@field public bHasMetacarpals boolean @If true, remap the full human hand skeleton including metacarpals
---@field public bRetargetRotationOnly boolean @Only apply the orientation to each bone
---@field public SwizzleX EQuatSwizzleAxisB @Reorient the skeleton (swizzle the quaternion) to adjust for base skeleton and incoming skeleton differences
---@field public SwizzleY EQuatSwizzleAxisB
---@field public SwizzleZ EQuatSwizzleAxisB
---@field public SwizzleW EQuatSwizzleAxisB
---@field public HandTrackingBoneNameMap TMap<string, string>
local UOpenXRHandTrackingLiveLinkRemapAsset = {}

