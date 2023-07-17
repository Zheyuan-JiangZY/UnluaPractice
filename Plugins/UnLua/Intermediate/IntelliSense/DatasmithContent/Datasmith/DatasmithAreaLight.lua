---@class DatasmithAreaLight_C : ADatasmithAreaLightActor
---@field public DefaultSceneRoot USceneComponent
---@field public IndirectIntensity number
---@field public VolumetricScatteringIntensity number
---@field public SpecularScale number
---@field public ShadowBias number
---@field public Cast Shadows boolean
local DatasmithAreaLight_C = {}

---@param Intensity number
---@param Color FLinearColor
---@param Emissive FLinearColor @[out] 
function DatasmithAreaLight_C:LightColor(Intensity, Color, Emissive) end

---Construction script, the place to spawn components and do other setup.
function DatasmithAreaLight_C:UserConstructionScript() end

