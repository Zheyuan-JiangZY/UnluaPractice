---Dynamic data for light.
---@class FLiveLinkLightFrameData : FLiveLinkTransformFrameData
---@field public Temperature number @Color temperature in Kelvin of the blackbody illuminant
---@field public Intensity number @Total energy that the light emits in lux.
---@field public LightColor FColor @Filter color of the light.
---@field public InnerConeAngle number @Inner cone angle in degrees for a Spotlight.
---@field public OuterConeAngle number @Outer cone angle in degrees for a Spotlight.
---@field public AttenuationRadius number @Light visible influence. Works for Pointlight and Spotlight.
---@field public SourceRadius number @Radius of light source shape. Works for Pointlight and Spotlight.
---@field public SoftSourceRadius number @Soft radius of light source shape. Works for Pointlight and Spotlight.
---@field public SourceLength number @Length of light source shape. Works for Pointlight and Spotlight.
local FLiveLinkLightFrameData = {}
