---@class UCurveEditorBakeFilter : UCurveEditorFilterBase
---@field public bUseFrameBake boolean @If true we will use frame interval to bake, else will use seconds interval
---@field public BakeIntervalInFrames FFrameNumber @The interval (in display rate frames) between baked keys. Only used if bUseFrameBake is true.
---@field public BakeIntervalInSeconds number @The interval (in seconds) between baked keys. Only used if bUseSnapRateForInterval is false.
local UCurveEditorBakeFilter = {}

