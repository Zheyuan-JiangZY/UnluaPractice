---Coplanar connected line segments representing the outer boundary of an N-sided polygon.
---@class FMagicLeapPlaneBoundary
---@field public Polygon FMagicLeapPolygon @The polygon that defines the region.
---@field public Holes TArray<FMagicLeapPolygon> @A polygon may contains multiple holes.
local FMagicLeapPlaneBoundary = {}
