---Base class for all AR textures that represent the environment for lighting and reflection
---@class UAREnvironmentCaptureProbeTexture : UTextureCube
---@field public TextureType EARTextureType @The type of texture this is
---@field public Timestamp number @The timestamp this texture was captured at
---@field public ExternalTextureGuid FGuid @The guid of texture that gets registered as an external texture
---@field public Size FVector2D @The width and height of the texture
local UAREnvironmentCaptureProbeTexture = {}

