---A spot light component emits a directional cone shaped light (Eg a Torch).
---@class USpotLightComponent : UPointLightComponent
---@field public InnerConeAngle number @Degrees.
---@field public OuterConeAngle number @Degrees.
local USpotLightComponent = {}

---@param NewOuterConeAngle number
function USpotLightComponent:SetOuterConeAngle(NewOuterConeAngle) end

---@param NewInnerConeAngle number
function USpotLightComponent:SetInnerConeAngle(NewInnerConeAngle) end

