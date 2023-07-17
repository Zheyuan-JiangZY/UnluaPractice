---Representation of a mesh block.
---@class FMagicLeapMeshBlockInfo
---@field public BlockID FGuid @The coordinate frame UID to represent the block.
---@field public BlockPosition FVector @The center of the mesh block bounding box.
---@field public BlockOrientation FRotator @The orientation of the mesh block bounding box.
---@field public BlockDimensions FVector @The size of the mesh block bounding box (in Unreal Units).
---@field public Timestamp FTimespan @The timestamp when block was updated.
---@field public BlockState EMagicLeapMeshState @The state of the mesh block.
local FMagicLeapMeshBlockInfo = {}
