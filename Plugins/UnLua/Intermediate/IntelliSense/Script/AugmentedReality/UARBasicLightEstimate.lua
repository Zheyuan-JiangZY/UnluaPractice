---@class UARBasicLightEstimate : UARLightEstimate
---@field private AmbientIntensityLumens number
---@field private AmbientColorTemperatureKelvin number
---@field private AmbientColor FLinearColor
local UARBasicLightEstimate = {}

---@return number
function UARBasicLightEstimate:GetAmbientIntensityLumens() end

---@return number
function UARBasicLightEstimate:GetAmbientColorTemperatureKelvin() end

---@return FLinearColor
function UARBasicLightEstimate:GetAmbientColor() end

