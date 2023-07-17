---Information about the color temperature state.
---Capturing images or video will stop the lighting information update,
---causing the retrieved data to be stale (old timestamps).
---@class FMagicLeapLightEstimationColorTemperatureState
---@field public ColorTemperatureKelvin number
---@field public AmbientColor FLinearColor
---@field public Timestamp FTimespan
local FMagicLeapLightEstimationColorTemperatureState = {}
