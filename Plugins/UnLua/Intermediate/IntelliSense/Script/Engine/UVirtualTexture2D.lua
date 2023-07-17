---Virtual Texture with locally configurable build settings.
---A raw UTexture2D can also represent a Virtual Texture but uses the one and only per-project build settings.
---@class UVirtualTexture2D : UTexture2D
---@field public Settings FVirtualTextureBuildSettings
---@field public bContinuousUpdate boolean
---@field public bSinglePhysicalSpace boolean
local UVirtualTexture2D = {}

