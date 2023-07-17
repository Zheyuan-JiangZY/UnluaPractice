---Used to create fogging effects such as clouds.
---@class UAtmosphericFogComponent : USceneComponent
---@field public SunMultiplier number @Scale the scattered luminance from the atmosphere sun light. Only affect the sky and atmospheric fog.
---@field public FogMultiplier number @Scale the scattered luminance from the atmosphere sun light only on surfaces, excludes the sky.
---@field public DensityMultiplier number @Scales the atmosphere transmittance over background.
---@field public DensityOffset number @Offset the atmosphere transmittance over background [-1.f ~ 1.f].
---@field public DistanceScale number @Scale the view position.
---@field public AltitudeScale number @Scale the view altitude (only Z scale).
---@field public DistanceOffset number @Apply a distance offset before evaluating the atmospheric fog, in km (to handle large distance). Only on surfaces, excludes the sky.
---@field public GroundOffset number @Offset the view altitude (along Z).
---@field public StartDistance number @The atmospheric fog start distance in centimeters.
---@field public SunDiscScale number @Sun half apex angle in degree, see https://en.wikipedia.org/wiki/Solid_angle
---@field public DefaultBrightness number @Default atmospheric sun light disc luminance. Used when there is no atmospheric sun light selected in the level.
---@field public DefaultLightColor FColor @Default atmospheric sun light disc color. Used when there is no sunlight placed in the level.
---@field public bDisableSunDisk boolean @Disable sun disk rendering.
---@field public bAtmosphereAffectsSunIlluminance boolean @Set to true if the atmosphere should affect the selected sun light illuminance. The light will be tinted based on its zenith angle and atmosphere properties as if all surfaces were at the ground level 0 meter.
---@field public bDisableGroundScattering boolean @Disable color scattering from ground.
---@field protected PrecomputeParams FAtmospherePrecomputeParameters
local UAtmosphericFogComponent = {}

function UAtmosphericFogComponent:StartPrecompute() end

---Set SunMultiplier
---@param NewSunMultiplier number
function UAtmosphericFogComponent:SetSunMultiplier(NewSunMultiplier) end

---Set StartDistance
---@param NewStartDistance number
function UAtmosphericFogComponent:SetStartDistance(NewStartDistance) end

---Set PrecomputeParams, only valid in Editor mode
---@param DensityHeight number
---@param MaxScatteringOrder integer
---@param InscatterAltitudeSampleNum integer
function UAtmosphericFogComponent:SetPrecomputeParams(DensityHeight, MaxScatteringOrder, InscatterAltitudeSampleNum) end

---Set FogMultiplier
---@param NewFogMultiplier number
function UAtmosphericFogComponent:SetFogMultiplier(NewFogMultiplier) end

---Set DistanceScale
---@param NewDistanceScale number
function UAtmosphericFogComponent:SetDistanceScale(NewDistanceScale) end

---Set DistanceOffset
---@param NewDistanceOffset number
function UAtmosphericFogComponent:SetDistanceOffset(NewDistanceOffset) end

---Set DensityOffset
---@param NewDensityOffset number
function UAtmosphericFogComponent:SetDensityOffset(NewDensityOffset) end

---Set DensityMultiplier
---@param NewDensityMultiplier number
function UAtmosphericFogComponent:SetDensityMultiplier(NewDensityMultiplier) end

---Set color of the light
---@param NewLightColor FLinearColor
function UAtmosphericFogComponent:SetDefaultLightColor(NewLightColor) end

---Set brightness of the light
---@param NewBrightness number
function UAtmosphericFogComponent:SetDefaultBrightness(NewBrightness) end

---Set AltitudeScale
---@param NewAltitudeScale number
function UAtmosphericFogComponent:SetAltitudeScale(NewAltitudeScale) end

---Set DisableSunDisk
---@param NewSunDisk boolean
function UAtmosphericFogComponent:DisableSunDisk(NewSunDisk) end

---Set DisableGroundScattering
---@param NewGroundScattering boolean
function UAtmosphericFogComponent:DisableGroundScattering(NewGroundScattering) end

