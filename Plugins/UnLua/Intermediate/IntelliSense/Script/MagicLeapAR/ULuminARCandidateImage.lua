---@class ULuminARCandidateImage : UARCandidateImage
---@field private bUseUnreliablePose boolean
---@field private bImageIsStationary boolean
---@field private AxisOrientation EMagicLeapImageTargetOrientation
local ULuminARCandidateImage = {}

---@return boolean
function ULuminARCandidateImage:GetUseUnreliablePose() end

---
---@return boolean
function ULuminARCandidateImage:GetImageIsStationary() end

---@return EMagicLeapImageTargetOrientation
function ULuminARCandidateImage:GetAxisOrientation() end

