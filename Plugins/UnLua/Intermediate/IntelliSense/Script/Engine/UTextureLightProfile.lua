---@class UTextureLightProfile : UTexture2D
---@field public Brightness number @Light brightness in Candelas, imported from IES profile, <= 0 if the profile is used for masking only. Use with InverseSquareFalloff.
---@field public TextureMultiplier number @Multiplier to map texture value to result to integrate over the sphere to 1.0f
local UTextureLightProfile = {}

