---@class ULiveLinkInstance : UAnimInstance
---@field protected CurrentRetargetAsset ULiveLinkRetargetAsset @Cache for GC
local ULiveLinkInstance = {}

---@param SubjectName FLiveLinkSubjectName
function ULiveLinkInstance:SetSubject(SubjectName) end

---@param RetargetAsset TSubclassOf_ULiveLinkRetargetAsset_
function ULiveLinkInstance:SetRetargetAsset(RetargetAsset) end

