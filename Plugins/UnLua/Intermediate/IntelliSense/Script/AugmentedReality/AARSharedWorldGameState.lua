---@class AARSharedWorldGameState : AGameState
---@field public PreviewImageData TArray<integer> @The image taken at the time of world saving for use when aligning the AR world later in the session
---@field public ARWorldData TArray<integer> @Each client and the host have a copy of the shared world data
---@field public PreviewImageBytesTotal integer @The size of the image that will be replicated to each client
---@field public ARWorldBytesTotal integer @The size of the AR world data that will be replicated to each client
---@field public PreviewImageBytesDelivered integer @The amount of the preview image data that has been replicated to this client so far
---@field public ARWorldBytesDelivered integer @The amount of the AR world data that has been replicated to this client so far
local AARSharedWorldGameState = {}

function AARSharedWorldGameState:K2_OnARWorldMapIsReady() end

