---@class UTexture2D : UTexture
---@field public LevelIndex integer @* Level scope index of this texture. It is used to reduce the amount of lookup to map a texture to its level index. * Useful when building texture streaming data, as well as when filling the texture streamer with precomputed data. * It relates to FStreamingTextureBuildInfo::TextureLevelIndex and also the index in ULevel::StreamingTextureGuids. * Default value of -1, indicates that the texture has an unknown index (not yet processed). At level load time, * -2 is also used to indicate that the texture has been processed but no entry were found in the level table. * After any of these processes, the LevelIndex is reset to INDEX_NONE. Making it ready for the next level task.
---@field public FirstResourceMemMip integer @keep track of first mip level used for ResourceMem creation
---@field private bTemporarilyDisableStreaming boolean @True if streaming is temporarily disabled so we can update subregions of this texture's resource       without streaming clobbering it. Automatically cleared before saving.
---@field public bHasBeenPaintedInEditor boolean @Whether the texture has been painted in the editor.
---@field public AddressX integer @The addressing mode to use for the X axis.
---@field public AddressY integer @The addressing mode to use for the Y axis.
---@field private ImportedSize FIntPoint @The imported size of the texture. Only valid on cooked builds when texture source is not available. Access ONLY via the GetImportedSize() accessor!
local UTexture2D = {}

---Gets the Y size of the texture, in pixels
---@return integer
function UTexture2D:Blueprint_GetSizeY() end

---Gets the X size of the texture, in pixels
---@return integer
function UTexture2D:Blueprint_GetSizeX() end

