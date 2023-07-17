---@class FAdaptorPolygon
---@field public PolygonGroupID FPolygonGroupID @Which rendering polygon group the polygon is in
---@field public TriangulatedPolygonTriangleIndices TArray<FAdaptorTriangleID> @This is a list of indices of triangles in the FRenderingPolygon2Group2::Triangles array.           We use this to maintain a record of which triangles in the section belong to this polygon.
local FAdaptorPolygon = {}
