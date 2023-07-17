---@class FChangeVertexInstancesForPolygon
---@field public PolygonID FPolygonID @The polygon to set vertex instances on
---@field public PerimeterVertexIndicesAndInstanceIDs TArray<FVertexIndexAndInstanceID> @A list of vertex numbers and vertex instance IDs to change for the polygon perimeter.
---@field public VertexIndicesAndInstanceIDsForEachHole TArray<FVertexInstancesForPolygonHole> @A list of vertex instance IDs for each hole.
local FChangeVertexInstancesForPolygon = {}
