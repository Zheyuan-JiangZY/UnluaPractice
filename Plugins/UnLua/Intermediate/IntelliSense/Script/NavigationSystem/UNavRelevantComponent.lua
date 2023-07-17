---@class UNavRelevantComponent : UActorComponent
---@field protected bAttachToOwnersRoot boolean @attach navigation data to entry for owner's root component (depends on its relevancy)
---@field protected CachedNavParent UObject
local UNavRelevantComponent = {}

---@param bRelevant boolean
function UNavRelevantComponent:SetNavigationRelevancy(bRelevant) end

