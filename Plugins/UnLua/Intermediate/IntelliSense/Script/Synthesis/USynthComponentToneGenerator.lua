---@class USynthComponentToneGenerator : USynthComponent
---@field public Frequency number @The frequency (in hz) of the tone generator.
---@field public Volume number @The linear volume of the tone generator.
local USynthComponentToneGenerator = {}

---Sets the volume of the tone generator
---@param InVolume number
function USynthComponentToneGenerator:SetVolume(InVolume) end

---Sets the frequency of the tone generator
---@param InFrequency number
function USynthComponentToneGenerator:SetFrequency(InFrequency) end

