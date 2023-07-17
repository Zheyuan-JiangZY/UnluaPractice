---Base class for all AR texture types.
---Derived from UTexture instead of UTexture2D because UTexture2D is all about streaming and source art
---@class UARTexture : UTexture
---@field public TextureType EARTextureType @The type of texture this is
---@field public Timestamp number @The timestamp this texture was captured at
---@field public ExternalTextureGuid FGuid @The guid of texture that gets registered as an external texture
---@field public Size FVector2D @The width and height of the texture
local UARTexture = {}

