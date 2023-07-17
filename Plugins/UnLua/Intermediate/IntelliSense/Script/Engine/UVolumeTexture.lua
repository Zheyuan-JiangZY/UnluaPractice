---@class UVolumeTexture : UTexture
---@field public Source2DTexture UTexture2D @A (optional) reference texture from which the volume texture was built
---@field public SourceLightingGuid FGuid @The lighting Guid of the source 2D texture, used to trigger rebuild when the source changes.
---@field public Source2DTileSizeX integer @The reference texture tile size X
---@field public Source2DTileSizeY integer @The reference texture tile size Y
local UVolumeTexture = {}

