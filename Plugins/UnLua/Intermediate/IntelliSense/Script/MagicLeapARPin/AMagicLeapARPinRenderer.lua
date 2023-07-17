---@class AMagicLeapARPinRenderer : AActor
---@field public bInfoActorsVisibilityOverride boolean
---@field private AllInfoActors TMap<FGuid, AMagicLeapARPinInfoActorBase>
---@field private ClassToSpawn TSubclassOf<AMagicLeapARPinInfoActorBase>
local AMagicLeapARPinRenderer = {}

---@param InVisibilityOverride boolean
function AMagicLeapARPinRenderer:SetVisibilityOverride(InVisibilityOverride) end

