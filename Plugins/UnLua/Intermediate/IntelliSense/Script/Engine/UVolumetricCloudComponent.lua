---A component that represents a participating media material around a planet, e.g. clouds.
---@class UVolumetricCloudComponent : USceneComponent
---@field public LayerBottomAltitude number @The altitude at which the cloud layer starts. (kilometers above the ground)
---@field public LayerHeight number @The altitude at which the cloud layer ends. (kilometers above the ground)
---@field public TracingStartMaxDistance number @The maximum distance of the volumetric surface before which we will accept to start tracing. (kilometers)
---@field public TracingMaxDistance number @The maximum distance that will be traced inside the cloud layer. (kilometers)
---@field public PlanetRadius number @The planet radius used when there is not SkyAtmosphere component present in the scene.
---@field public GroundAlbedo FColor @The ground albedo used to light the cloud from below with respect to the sun light and sky atmosphere. This is only used by the cloud material when the 'Volumetric Advanced' node have GroundContribution enabled.
---@field public Material UMaterialInterface @The material describing the cloud volume. It must be a Volume domain material.
---@field public bUsePerSampleAtmosphericLightTransmittance boolean @Whether to apply atmosphere transmittance per sample, instead of using the light global transmittance.
---@field public SkyLightCloudBottomOcclusion number @Occlude the sky light contribution at the bottom of the cloud layer. This is a fast approximation to sky lighting being occluded by cloud without having to trace rays or sample AO texture. Ignored if the cloud material explicitely sets the ambient occlusion value.
---@field public ViewSampleCountScale number @Scale the tracing sample count in primary views. Quality level scalability CVARs affect the maximum range. The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.ViewRaySampleCountMax'.
---@field public ReflectionSampleCountScale number @Scale the tracing sample count in reflection views. Quality level scalability CVARs affect the maximum range. The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.ReflectionRaySampleMaxCount'.
---@field public ShadowViewSampleCountScale number @Scale the shadow tracing sample count in primary views, only used with Advanced Output ray marched shadows. Quality level scalability CVARs affect the maximum range. The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.Shadow.ViewRaySampleMaxCount'.
---@field public ShadowReflectionSampleCountScale number @Scale the shadow tracing sample count in reflection views, only used with Advanced Output ray marched shadows. Quality level scalability CVARs affect the maximum range. The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.Shadow.ReflectionRaySampleMaxCount'.
---@field public ShadowTracingDistance number @The shadow tracing distance in kilometers, only used with Advanced Output ray marched shadows.
---@field public StopTracingTransmittanceThreshold number @When the mean transmittance is below this threashold, we stop tracing. This is an good way to reduce the ray marched sample count, and thus to increase performance.
local UVolumetricCloudComponent = {}

---@param NewValue number
function UVolumetricCloudComponent:SetViewSampleCountScale(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetTracingStartMaxDistance(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetTracingMaxDistance(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetStopTracingTransmittanceThreshold(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetSkyLightCloudBottomOcclusion(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetShadowViewSampleCountScale(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetShadowTracingDistance(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetShadowReflectionSampleCountScale(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetReflectionSampleCountScale(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetPlanetRadius(NewValue) end

---@param NewValue UMaterialInterface
function UVolumetricCloudComponent:SetMaterial(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetLayerHeight(NewValue) end

---@param NewValue number
function UVolumetricCloudComponent:SetLayerBottomAltitude(NewValue) end

---@param NewValue FColor
function UVolumetricCloudComponent:SetGroundAlbedo(NewValue) end

---@param NewValue boolean
function UVolumetricCloudComponent:SetbUsePerSampleAtmosphericLightTransmittance(NewValue) end

