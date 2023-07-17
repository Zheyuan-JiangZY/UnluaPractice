---@class FPolygonToSplit
---@field public PolygonID FPolygonID @The polygon that we'll be splitting
---@field public VertexPairsToSplitAt TArray<FVertexPair> @A list of pairs of vertices that new edges will be created at.  The pairs must be ordered, and the vertices           must already exist and be connected to the polygon
local FPolygonToSplit = {}
