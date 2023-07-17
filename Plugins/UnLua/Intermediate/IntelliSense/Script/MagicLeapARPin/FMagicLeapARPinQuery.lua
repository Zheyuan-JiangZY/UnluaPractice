---This represents a collection of filters and modifiers used by to curate the ARPins search.
---@class FMagicLeapARPinQuery
---@field public Types TSet<EMagicLeapARPinType> @Types of Pins to look for
---@field public MaxResults integer @Upper bound number of expected results. The implementation may return less entries than requested. Set to -1 for all available.
---@field public TargetPoint FVector @Center query point from where the nearest neighbours will be calculated.
---@field public Radius number @Return only entries within radius of the sphere from TargetPoint. Set to 0 for unbounded results. Filtering by distance will incur a performance penalty.
---@field public bSorted boolean @Indicate if the result set should be sorted by distance from TargetPoint. Sorting by istance will incur a performance penalty.
local FMagicLeapARPinQuery = {}
