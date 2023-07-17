---A light component which emits light from a single point equally in all directions.
---@class ULocalLightComponent : ULightComponent
---@field public IntensityUnits ELightUnits @Units used for the intensity. The peak luminous intensity is measured in candelas, while the luminous power is measured in lumens.
---@field public AttenuationRadius number @Bounds the light's visible influence. This clamping of the light's influence is not physically correct but very important for performance, larger lights cost more.
---@field public LightmassSettings FLightmassPointLightSettings @The Lightmass settings for this object.
local ULocalLightComponent = {}

---Set the units used for the intensity of the light
---@param NewIntensityUnits ELightUnits
function ULocalLightComponent:SetIntensityUnits(NewIntensityUnits) end

---@param NewRadius number
function ULocalLightComponent:SetAttenuationRadius(NewRadius) end

---@param SrcUnits ELightUnits
---@param TargetUnits ELightUnits
---@param CosHalfConeAngle number @[opt] 
---@return number
function ULocalLightComponent.GetUnitsConversionFactor(SrcUnits, TargetUnits, CosHalfConeAngle) end

