---@class FPolygonToCreate
---@field public PolygonGroupID FPolygonGroupID @The group the polygon will be added to
---@field public PerimeterVertices TArray<FVertexAndAttributes> @Ordered list of vertices that defines the polygon's perimeter, along with the polygon vertex attributes to set for each vertex
---@field public OriginalPolygonID FPolygonID @The original ID of the polygon.  Should only be used by the undo system.
---@field public PolygonEdgeHardness EPolygonEdgeHardness @Whether to create a hard-edged polygon
local FPolygonToCreate = {}
