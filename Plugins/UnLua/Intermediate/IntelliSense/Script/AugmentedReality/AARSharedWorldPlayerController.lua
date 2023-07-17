---@class AARSharedWorldPlayerController : APlayerController
local AARSharedWorldPlayerController = {}

---Tells the server it is ready for receiving any shared world data
function AARSharedWorldPlayerController:ServerMarkReadyForReceiving() end

---Copies the buffer into the image data (client)
---@param Offset integer
---@param Buffer TArray_integer_
function AARSharedWorldPlayerController:ClientUpdatePreviewImageData(Offset, Buffer) end

---Copies the buffer into the AR world data (client)
---@param Offset integer
---@param Buffer TArray_integer_
function AARSharedWorldPlayerController:ClientUpdateARWorldData(Offset, Buffer) end

---Used to setup the initial values and size the arrays (client)
---@param PreviewImageSize integer
---@param ARWorldDataSize integer
function AARSharedWorldPlayerController:ClientInitSharedWorld(PreviewImageSize, ARWorldDataSize) end

