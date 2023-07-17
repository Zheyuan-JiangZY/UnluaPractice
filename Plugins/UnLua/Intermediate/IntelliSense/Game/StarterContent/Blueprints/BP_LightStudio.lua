---@class BP_LightStudio_C : AActor
---@field public SkyLight1 USkyLightComponent
---@field public ExponentialHeightFog1 UExponentialHeightFogComponent
---@field public PrevisArrow UStaticMeshComponent
---@field public Skybox UStaticMeshComponent
---@field public Scene1 USceneComponent
---@field public GlobalBrightness number
---@field public Use_HDRI boolean
---@field public UseSunLight boolean
---@field public SunBrightness number
---@field public SunTint FLinearColor
---@field public StationaryLightForSun boolean
---@field public SunDirectionalLight UDirectionalLightComponent
---@field public UseAtmosphere boolean
---@field public AtmosphereBrightness number
---@field public AtmosphereTint FLinearColor
---@field public PrevisArrowMaterial UMaterialInstanceDynamic
---@field public LightColor FLinearColor
---@field public SunColorCurve UCurveLinearColor
---@field public OverrideSunColor boolean
---@field public AtmosphereDensityMultiplier number
---@field public AtmosphereAltitude number
---@field public DisableSunDisk boolean
---@field public UseFog boolean
---@field public FogBrightness number
---@field public FogTint FLinearColor
---@field public FogAltitude number
---@field public FogMaxOpacity number
---@field public FogHeightFalloff number
---@field public FogDensity number
---@field public FogBrightnessCurve UCurveFloat
---@field public FogStartDistance number
---@field public DisableGroundScattering boolean
---@field public AtmosphereDistanceScale number
---@field public SkyboxMaterial UMaterialInstanceDynamic
---@field public HDRI_Brightness number
---@field public HDRI_Contrast number
---@field public HDRI_Tint FLinearColor
---@field public HDRI_Cubemap UTexture
---@field public HDRI_Rotation number
---@field public AtmosphereOpacityHorizon number
---@field public AtmosphereOpacityZenith number
---@field public HighDensityAtmosphere boolean
---@field public AtmosphericFog UAtmosphericFogComponent
---@field public UseSkylight boolean
---@field public Shadowdistance number
---@field public LightShaftBloom boolean
---@field public LightShaftOcclusion boolean
---@field public OcclusionMaskDarkness number
---@field public BloomScale number
---@field public BloomThreshold number
---@field public BloomTint FColor
---@field public AtmosphereFogMultiplier number
---@field public AtmosphereDensityHeight number
---@field public AtmosphereMaxScatteringOrder integer
---@field public AtmosphereAltitudeSampleNumber integer
---@field public LightFunctionMaterial UMaterialInterface
---@field public MIC_Black UMaterialInstance
---@field public MIC_HDRI UMaterialInstance
local BP_LightStudio_C = {}

function BP_LightStudio_C:AtmosphereDensity() end

---@param Angle number @[out] 
function BP_LightStudio_C:NormalizedSunAngle(Angle) end

function BP_LightStudio_C:SunMobility() end

function BP_LightStudio_C:CalculateSunColor() end

---Construction script, the place to spawn components and do other setup.
function BP_LightStudio_C:UserConstructionScript() end

