---@class UNiagaraLightRendererProperties : UNiagaraRendererProperties
---@field public bUseInverseSquaredFalloff boolean @Whether to use physically based inverse squared falloff from the light.  If unchecked, the value from the LightExponent binding will be used instead.
---@field public bAffectsTranslucency boolean @Whether lights from this renderer should affect translucency. Use with caution - if enabled, create only a few particle lights at most, and the smaller they are, the less they will cost.
---@field public bAlphaScalesBrightness boolean @When checked, will treat the alpha value of the particle's color as a multiplier of the light's brightness.
---@field public RadiusScale number @A factor used to scale each particle light radius
---@field public DefaultExponent number @The exponent to use for all lights if no exponent binding was found
---@field public ColorAdd FVector @A static color shift applied to each rendered light
---@field public RendererVisibility integer @If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.
---@field public LightRenderingEnabledBinding FNiagaraVariableAttributeBinding @Which attribute should we use to check if light rendering should be enabled for a particle? This can be used to control the spawn-rate on a per-particle basis.
---@field public LightExponentBinding FNiagaraVariableAttributeBinding @Which attribute should we use for the light's exponent when inverse squared falloff is disabled?
---@field public PositionBinding FNiagaraVariableAttributeBinding @Which attribute should we use for position when generating lights?
---@field public ColorBinding FNiagaraVariableAttributeBinding @Which attribute should we use for light color when generating lights?
---@field public RadiusBinding FNiagaraVariableAttributeBinding @Which attribute should we use for light radius when generating lights?
---@field public VolumetricScatteringBinding FNiagaraVariableAttributeBinding @Which attribute should we use for the intensity of the volumetric scattering from this light? This scales the light's intensity and color.
---@field public RendererVisibilityTagBinding FNiagaraVariableAttributeBinding @Which attribute should we use for the renderer visibility tag?
local UNiagaraLightRendererProperties = {}

