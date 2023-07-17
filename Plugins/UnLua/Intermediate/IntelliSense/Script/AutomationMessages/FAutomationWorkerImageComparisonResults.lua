---Implements a message that is sent in containing a screen shot run during performance test.
---@class FAutomationWorkerImageComparisonResults
---@field public UniqueId FGuid @The unique id for the comparison.
---@field public bNew boolean @Was this a new image we've never seen before and have no ground truth for?
---@field public bSimilar boolean @Were the images similar?  If they're not you should log an error.
---@field public MaxLocalDifference number
---@field public GlobalDifference number
---@field public ErrorMessage string
local FAutomationWorkerImageComparisonResults = {}
