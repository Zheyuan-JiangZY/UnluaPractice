---Transform definition
---@class FBlendSampleData
---@field public SampleDataIndex integer
---@field public Animation UAnimSequence
---@field public TotalWeight number
---@field public Time number
---@field public PreviousTime number
---@field public SamplePlayRate number @We may merge multiple samples if they use the same animation Calculate the combined sample play rate here
local FBlendSampleData = {}
