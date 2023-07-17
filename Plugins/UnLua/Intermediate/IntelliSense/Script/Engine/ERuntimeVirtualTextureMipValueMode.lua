---Defines how MipValue is used.
---Internally we will convert to ETextureMipValueMode which is used by internal APIs.
---ETextureMipValueMode has more options then are valid for runtime virtual texture.
---@class ERuntimeVirtualTextureMipValueMode
---@field public RVTMVM_None integer
---@field public RVTMVM_MipLevel integer
---@field public RVTMVM_MipBias integer
---@field public RVTMVM_MAX integer
local ERuntimeVirtualTextureMipValueMode = {}
