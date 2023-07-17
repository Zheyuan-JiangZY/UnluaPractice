---Stores a hand mesh's vertices and indices.
---@class FMagicLeapHandMeshBlock
---@field public IndexCount integer @The number of indices in index buffer.
---@field public VertexCount integer @The number of vertices in vertex buffer.
---@field public Vertex TArray<FVector> @Pointer to the vertex buffer.
---@field public Index TArray<integer> @Pointer to the index buffer.
local FMagicLeapHandMeshBlock = {}
