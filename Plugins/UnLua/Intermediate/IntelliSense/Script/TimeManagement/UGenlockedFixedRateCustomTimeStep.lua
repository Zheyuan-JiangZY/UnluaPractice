---Control the Engine TimeStep via a fixed frame rate.
---Philosophy:
---  * Quantized increments but keeping up with platform time.
---  * FApp::GetDeltaTime
---      - Forced to a multiple of the desired FrameTime.
---  * FApp::GetCurrentTime
---      - Incremented in multiples of the desired FrameTime.
---      - Corresponds to platform time minus any fractional FrameTime.
---@class UGenlockedFixedRateCustomTimeStep : UGenlockedCustomTimeStep
---@field public FrameRate FFrameRate @Desired frame rate
local UGenlockedFixedRateCustomTimeStep = {}

