---@class FVertexInstanceToCreate
---@field public VertexID FVertexID @Vertex ID which is being instanced
---@field public VertexInstanceAttributes FMeshElementAttributeList @Attributes of this vertex instance
---@field public OriginalVertexInstanceID FVertexInstanceID @The original ID of the vertex instance.  Should only be used by the undo system.
local FVertexInstanceToCreate = {}
