---@class FSubdividedQuadVertex
---@field public VertexPositionIndex integer @The index of the vertex position (into the FSubdivisionLimitData's VertexPositions array) used for this vertex
---@field public TextureCoordinate0 FVector2D @Texture coordinates for this vertex.  We only support up to two, for now. (Just to avoid TArrays/allocations)
---@field public TextureCoordinate1 FVector2D
---@field public VertexColor FColor @Vertex color
---@field public VertexNormal FVector @Quad vertex normal
---@field public VertexTangent FVector @Quad vertex tangent
---@field public VertexBinormalSign number @Quad vertex binormal sign (-1.0 or 1.0)
local FSubdividedQuadVertex = {}
