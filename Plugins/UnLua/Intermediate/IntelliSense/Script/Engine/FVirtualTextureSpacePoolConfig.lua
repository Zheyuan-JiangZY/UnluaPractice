---Settings of a single pool
---@class FVirtualTextureSpacePoolConfig
---@field public MinTileSize integer @Minimum tile size to match (including tile border).
---@field public MaxTileSize integer @Maximum tile size to match (including tile border).
---@field public Formats TArray<integer> @Format set to match. One pool can contain multiple layers with synchronized page table mappings.
---@field public SizeInMegabyte integer @Upper limit of size in megabytes to allocate for the pool. The allocator will allocate as close as possible to this limit.
---@field public bAllowSizeScale boolean @Allow the size to allocate for the pool to be scaled by some factor.
---@field public ScalabilityGroup integer @Scalability group index that gives the size scale.
local FVirtualTextureSpacePoolConfig = {}
