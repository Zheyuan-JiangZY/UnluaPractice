---@class USynthComponentMoto : USynthComponent
---@field public MotoSynthPreset UMotoSynthPreset @The moto synth preset to use for the moto synth component.
---@field public RPM number @Sets the starting RPM of the engine
local USynthComponentMoto = {}

---Sets a moto synth settings dynamically.
---@param InSettings FMotoSynthRuntimeSettings
function USynthComponentMoto:SetSettings(InSettings) end

---Sets the RPM of the granular engine directly.
---@param InRPM number
---@param InTimeSec number
function USynthComponentMoto:SetRPM(InRPM, InTimeSec) end

---Returns if the moto synth is enabled.
---@return boolean
function USynthComponentMoto:IsEnabled() end

---Retrieves RPM range of the moto synth, taking into account the acceleration and deceleration sources. The min RPM is the largest of the min RPms of either and the max RPM is min of the max RPMs of either.
---@param OutMinRPM number @[out] 
---@param OutMaxRPM number @[out] 
function USynthComponentMoto:GetRPMRange(OutMinRPM, OutMaxRPM) end

