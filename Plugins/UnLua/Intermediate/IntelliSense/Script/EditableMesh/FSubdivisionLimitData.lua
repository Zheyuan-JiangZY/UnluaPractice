---@class FSubdivisionLimitData
---@field public VertexPositions TArray<FVector> @Positions of all of the vertices for this subdivision level.  Many vertex positions may be shared between subdivided quads.
---@field public Sections TArray<FSubdivisionLimitSection> @Data for each of the sections in the mesh.  This array will have the same number of elements as the editable mesh's           section list (not necessarily the same indices though, due to sparseness).
---@field public SubdividedWireEdges TArray<FSubdividedWireEdge> @All of the wire edges in the entire mesh (for all sections)
local FSubdivisionLimitData = {}
