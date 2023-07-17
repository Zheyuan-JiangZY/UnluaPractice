---Remap asset for data coming from Live Link. Allows simple application of bone transforms into current pose based on name remapping only
---@class ULiveLinkRemapAsset : ULiveLinkRetargetAsset
local ULiveLinkRemapAsset = {}

---Blueprint Implementable function for remapping, adding or otherwise modifying the curve element data from Live Link. This is run after GetRemappedCurveName
---@param CurveItems TMap_string__number_ @[out] 
function ULiveLinkRemapAsset:RemapCurveElements(CurveItems) end

---Blueprint Implementable function for getting a remapped curve name from the original
---@param CurveName string
---@return string
function ULiveLinkRemapAsset:GetRemappedCurveName(CurveName) end

---Blueprint Implementable function for getting a remapped bone name from the original
---@param BoneName string
---@return string
function ULiveLinkRemapAsset:GetRemappedBoneName(BoneName) end

