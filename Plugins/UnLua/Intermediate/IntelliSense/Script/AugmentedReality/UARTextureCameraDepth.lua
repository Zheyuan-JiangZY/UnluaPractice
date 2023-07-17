---Base class for all AR textures that represent the camera depth data
---@class UARTextureCameraDepth : UARTexture
---@field public DepthQuality EARDepthQuality @The quality of the depth information captured this frame
---@field public DepthAccuracy EARDepthAccuracy @The accuracy of the depth information captured this frame
---@field public bIsTemporallySmoothed boolean @Whether or not the depth information is temporally smoothed
local UARTextureCameraDepth = {}

