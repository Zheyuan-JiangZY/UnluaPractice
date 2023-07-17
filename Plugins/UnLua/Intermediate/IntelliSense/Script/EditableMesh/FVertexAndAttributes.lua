---@class FVertexAndAttributes
---@field public VertexInstanceID FVertexInstanceID @The vertex instance ID to insert into the polygon, or FVertexInstanceID::Invalid to create a new vertex instance with the given attributes
---@field public VertexID FVertexID @The vertex ID to insert into the polygon, if no valid vertex instance ID was supplied.
---@field public PolygonVertexAttributes FMeshElementAttributeList @A list of polygon attributes to set for the vertex on the polygon we're inserting it into, if no valid vertex instance ID was supplied.
local FVertexAndAttributes = {}
