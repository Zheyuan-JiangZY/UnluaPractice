---@class AARSharedWorldGameMode : AGameMode
---@field public BufferSizePerChunk integer @The size of the buffer to use per send request. Must be between 1 and 65535, though should not be max to avoid saturation
local AARSharedWorldGameMode = {}

---Sets the image data for the shared world game session
---@param ImageData TArray_integer_
function AARSharedWorldGameMode:SetPreviewImageData(ImageData) end

---Tells the game mode that the AR data is ready and should be replicated to all connected clients
function AARSharedWorldGameMode:SetARWorldSharingIsReady() end

---Sets the image data for the shared world game session
---@param ARWorldData TArray_integer_
function AARSharedWorldGameMode:SetARSharedWorldData(ARWorldData) end

---
---@return AARSharedWorldGameState
function AARSharedWorldGameMode:GetARSharedWorldGameState() end

