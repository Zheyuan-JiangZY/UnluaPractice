---This sky light class forces a refresh of the cube map data when an AR environment probe changes
---@class AARSkyLight : ASkyLight
---@field private CaptureProbe UAREnvironmentCaptureProbe
local AARSkyLight = {}

---Sets the environment capture probe that this sky light is driven by
---@param InCaptureProbe UAREnvironmentCaptureProbe
function AARSkyLight:SetEnvironmentCaptureProbe(InCaptureProbe) end

