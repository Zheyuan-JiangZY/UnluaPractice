---@class FEdgeToCreate
---@field public VertexID0 FVertexID @The first vertex this edge connects
---@field public VertexID1 FVertexID @The second vertex this edge connects
---@field public EdgeAttributes FMeshElementAttributeList @Attributes of this edge itself
---@field public OriginalEdgeID FEdgeID @The original ID of the edge.  Should only be used by the undo system.
local FEdgeToCreate = {}
