---@class UNavModifierComponent : UNavRelevantComponent
---@field public AreaClass TSubclassOf<UNavArea>
---@field public FailsafeExtent FVector @box extent used ONLY when owning actor doesn't have collision component
---@field public bIncludeAgentHeight boolean @Setting to 'true' will result in expanding lower bounding box of the nav     modifier by agent's height, before applying to navmesh
local UNavModifierComponent = {}

---@param NewAreaClass TSubclassOf_UNavArea_
function UNavModifierComponent:SetAreaClass(NewAreaClass) end

