---@class FVertexAttributesForPolygon
---@field public PolygonID FPolygonID @The polygon to set vertex attributes on
---@field public PerimeterVertexAttributeLists TArray<FMeshElementAttributeList> @For each polygon vertex, a list of attributes for that vertex.  Can be left empty if you don't want to set any attributes.
---@field public VertexAttributeListsForEachHole TArray<FVertexAttributesForPolygonHole> @For each hole vertex, a list of attributes for that vertex.  Can be left empty if you don't want to set any attributes.  Also           you can leave a given array empty for a specific hole index if you don't want to set attributes for select holes.
local FVertexAttributesForPolygon = {}
