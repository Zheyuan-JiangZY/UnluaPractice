---@class USourceEffectEnvelopeFollowerPreset : USoundEffectSourcePreset
---@field public Settings FSourceEffectEnvelopeFollowerSettings
local USourceEffectEnvelopeFollowerPreset = {}

---Adds a submix effect preset to the master submix.
---@param EnvelopeFollowerListener UEnvelopeFollowerListener
function USourceEffectEnvelopeFollowerPreset:UnregisterEnvelopeFollowerListener(EnvelopeFollowerListener) end

---@param InSettings FSourceEffectEnvelopeFollowerSettings
function USourceEffectEnvelopeFollowerPreset:SetSettings(InSettings) end

---Adds a submix effect preset to the master submix.
---@param EnvelopeFollowerListener UEnvelopeFollowerListener
function USourceEffectEnvelopeFollowerPreset:RegisterEnvelopeFollowerListener(EnvelopeFollowerListener) end

