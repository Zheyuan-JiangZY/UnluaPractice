---USubmixEffectDelayPreset
---Class which processes audio streams and uses parameters defined in the preset class.
---@class USubmixEffectDelayPreset : USoundEffectSubmixPreset
---@field public Settings FSubmixEffectDelaySettings
---@field public DynamicSettings FSubmixEffectDelaySettings
local USubmixEffectDelayPreset = {}

---Set all tap delay setting. This will replace any dynamically added or modified taps.
---@param InSettings FSubmixEffectDelaySettings
function USubmixEffectDelayPreset:SetSettings(InSettings) end

---Set the time it takes to interpolate between parameters, in milliseconds.
---@param Time number
function USubmixEffectDelayPreset:SetInterpolationTime(Time) end

---Set how long the delay actually is, in milliseconds.
---@param Length number
function USubmixEffectDelayPreset:SetDelay(Length) end

---Get the maximum delay possible.
---@return number
function USubmixEffectDelayPreset:GetMaxDelayInMilliseconds() end

