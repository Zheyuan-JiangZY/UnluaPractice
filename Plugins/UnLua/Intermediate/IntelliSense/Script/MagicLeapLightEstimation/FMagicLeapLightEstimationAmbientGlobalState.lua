---Information about the ambient light sensor global state.
---Capturing images or video will stop the lighting information update,
---causing the retrieved data to be stale (old timestamps).
---@class FMagicLeapLightEstimationAmbientGlobalState
---@field public AmbientIntensityNits TArray<number> @Array stores values for each world camera, ordered left, right, far left, far right. Luminance estimate is in nits (cd/m^2).
---@field public Timestamp FTimespan
local FMagicLeapLightEstimationAmbientGlobalState = {}
