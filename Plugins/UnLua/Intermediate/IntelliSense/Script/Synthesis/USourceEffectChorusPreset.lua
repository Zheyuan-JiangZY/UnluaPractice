---@class USourceEffectChorusPreset : USoundEffectSourcePreset
---@field public Settings FSourceEffectChorusSettings
local USourceEffectChorusPreset = {}

---@param Modulator USoundModulatorBase
function USourceEffectChorusPreset:SetWetModulator(Modulator) end

---@param WetAmount number
function USourceEffectChorusPreset:SetWet(WetAmount) end

---@param Modulator USoundModulatorBase
function USourceEffectChorusPreset:SetSpreadModulator(Modulator) end

---@param Spread number
function USourceEffectChorusPreset:SetSpread(Spread) end

---Sets just base (i.e. carrier) setting values without modifying modulation source references
---@param Settings FSourceEffectChorusBaseSettings
function USourceEffectChorusPreset:SetSettings(Settings) end

---@param ModulationSettings FSourceEffectChorusSettings
function USourceEffectChorusPreset:SetModulationSettings(ModulationSettings) end

---@param Modulator USoundModulatorBase
function USourceEffectChorusPreset:SetFrequencyModulator(Modulator) end

---@param Frequency number
function USourceEffectChorusPreset:SetFrequency(Frequency) end

---@param Modulator USoundModulatorBase
function USourceEffectChorusPreset:SetFeedbackModulator(Modulator) end

---@param Feedback number
function USourceEffectChorusPreset:SetFeedback(Feedback) end

---@param Modulator USoundModulatorBase
function USourceEffectChorusPreset:SetDryModulator(Modulator) end

---@param DryAmount number
function USourceEffectChorusPreset:SetDry(DryAmount) end

---@param Modulator USoundModulatorBase
function USourceEffectChorusPreset:SetDepthModulator(Modulator) end

---@param Depth number
function USourceEffectChorusPreset:SetDepth(Depth) end

