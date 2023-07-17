---A component that represents a planet atmosphere material and simulates sky and light scattering within it.
---@class USkyAtmosphereComponent : USceneComponent
---@field public TransformMode ESkyAtmosphereTransformMode @The ground albedo that will tint the atmosphere when the sun light will bounce on it. Only taken into account when MultiScattering>0.0.
---@field public BottomRadius number @The radius in kilometers from the center of the planet to the ground level.
---@field public GroundAlbedo FColor @The ground albedo that will tint the atmosphere when the sun light will bounce on it. Only taken into account when MultiScattering>0.0.
---@field public AtmosphereHeight number @The height of the atmosphere layer above the ground in kilometers.
---@field public MultiScatteringFactor number @Render multi scattering as if sun light would bounce around in the atmosphere. This is achieved using a dual scattering approach.
---@field public TraceSampleCountScale number @Scale the atmosphere tracing sample count. Quality level scalability The sample count is still clamped according to scalability setting to 'r.SkyAtmosphere.SampleCountMax' when 'r.SkyAtmosphere.FastSkyLUT' is 0. The sample count is still clamped according to scalability setting to 'r.SkyAtmosphere.FastSkyLUT.SampleCountMax' when 'r.SkyAtmosphere.FastSkyLUT' is 1. The sample count is still clamped for aerial perspective according to  'r.SkyAtmosphere.AerialPerspectiveLUT.SampleCountMaxPerSlice'.
---@field public RayleighScatteringScale number @Rayleigh scattering coefficient scale.
---@field public RayleighScattering FLinearColor @The Rayleigh scattering coefficients resulting from molecules in the air at an altitude of 0 kilometer.
---@field public RayleighExponentialDistribution number @The altitude in kilometer at which Rayleigh scattering effect is reduced to 40%.
---@field public MieScatteringScale number @Mie scattering coefficient scale.
---@field public MieScattering FLinearColor @The Mie scattering coefficients resulting from particles in the air at an altitude of 0 kilometer. As it becomes higher, light will be scattered more.
---@field public MieAbsorptionScale number @Mie absorption coefficient scale.
---@field public MieAbsorption FLinearColor @The Mie absorption coefficients resulting from particles in the air at an altitude of 0 kilometer. As it becomes higher, light will be absorbed more.
---@field public MieAnisotropy number @A value of 0 mean light is uniformly scattered. A value closer to 1 means lights will scatter more forward, resulting in halos around light sources.
---@field public MieExponentialDistribution number @The altitude in kilometer at which Mie effects are reduced to 40%.
---@field public OtherAbsorptionScale number @Absorption coefficients for another atmosphere layer. Density increase from 0 to 1 between 10 to 25km and decreases from 1 to 0 between 25 to 40km. This approximates ozone molecules distribution in the Earth atmosphere.
---@field public OtherAbsorption FLinearColor @Absorption coefficients for another atmosphere layer. Density increase from 0 to 1 between 10 to 25km and decreases from 1 to 0 between 25 to 40km. The default values represents ozone molecules absorption in the Earth atmosphere.
---@field public OtherTentDistribution FTentDistribution @Represents the altitude based tent distribution of absorption particles in the atmosphere.
---@field public SkyLuminanceFactor FLinearColor @Scales the luminance of pixels representing the sky, i.e. not belonging to any surface.
---@field public AerialPespectiveViewDistanceScale number @Makes the aerial perspective look thicker by scaling distances from view to surfaces (opaque and translucent).
---@field public HeightFogContribution number @Scale the sky and atmosphere lights contribution to the height fog when SupportSkyAtmosphereAffectsHeightFog project setting is true.
---@field public TransmittanceMinLightElevationAngle number @The minimum elevation angle in degree that should be used to evaluate the sun transmittance to the ground. Useful to maintain a visible sun light and shadow on meshes even when the sun has started going below the horizon. This does not affect the aerial perspective.
---@field public AerialPerspectiveStartDepth number @The distance (kilometers) at which we start evaluating the aerial perspective. Having the aerial perspective starts away from the camera can help with performance: pixels not affected by the aerial perspective will have their computation skipped using early depth test.
---@field private bStaticLightingBuiltGUID FGuid @GUID used to associate a atmospheric component with precomputed lighting/shadowing information across levels. The GUID changes whenever the atmospheric properties change, e.g. LUTs.
local USkyAtmosphereComponent = {}

---@param NewValue FLinearColor
function USkyAtmosphereComponent:SetSkyLuminanceFactor(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetRayleighScatteringScale(NewValue) end

---@param NewValue FLinearColor
function USkyAtmosphereComponent:SetRayleighScattering(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetRayleighExponentialDistribution(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetOtherAbsorptionScale(NewValue) end

---@param NewValue FLinearColor
function USkyAtmosphereComponent:SetOtherAbsorption(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetMultiScatteringFactor(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetMieScatteringScale(NewValue) end

---@param NewValue FLinearColor
function USkyAtmosphereComponent:SetMieScattering(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetMieExponentialDistribution(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetMieAnisotropy(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetMieAbsorptionScale(NewValue) end

---@param NewValue FLinearColor
function USkyAtmosphereComponent:SetMieAbsorption(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetHeightFogContribution(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetAtmosphereHeight(NewValue) end

---@param NewValue number
function USkyAtmosphereComponent:SetAerialPespectiveViewDistanceScale(NewValue) end

---@param AtmosphereLightIndex integer
---@param LightDirection FVector
function USkyAtmosphereComponent:OverrideAtmosphereLightDirection(AtmosphereLightIndex, LightDirection) end

---@param DirectionalLight UDirectionalLightComponent
---@return FLinearColor
function USkyAtmosphereComponent:GetAtmosphereTransmitanceOnGroundAtPlanetTop(DirectionalLight) end

