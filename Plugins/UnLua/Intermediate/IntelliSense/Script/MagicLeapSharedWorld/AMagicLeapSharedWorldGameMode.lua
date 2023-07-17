---Game mode to use for shared world experiences on MagicLeap capable XR devices.
---Requires the game state class to be or derived from AMagicLeapSharedWorldGameState.
---Requires the player controller class to be or derived from AMagicLeapSharedWorldPlayerController.
---@class AMagicLeapSharedWorldGameMode : AGameMode
---@field public SharedWorldData FMagicLeapSharedWorldSharedData @Cache pins common among all clients
---@field public OnNewLocalDataFromClients MulticastDelegate @Event fired when server receives new local data from connected clients.
---@field public PinSelectionConfidenceThreshold number @Confidence threshold for selecting shared Pins
---@field protected ChosenOne AMagicLeapSharedWorldPlayerController
local AMagicLeapSharedWorldGameMode = {}

---Replicate pins common among all clients via AMagicLeapSharedWorldGameState.
---These pins can be selected by calling DetermineSharedWorldData()
---@return boolean
function AMagicLeapSharedWorldGameMode:SendSharedWorldDataToClients() end

---Select a certain client to be the "chosen-one" or pseudo-authoritative for this shared world session.
---Means that this client is responsible for sending the list of it's pin transforms (in world space so its own alignment is unaffected)
---to the server via AMagicLeapSharedWorldPlayerController::ServerSetAlignmentTransforms().
---Everyone will align to this client's coordinate space using those pin transforms.
---This function is a BlueprintNativeEvent, override to implement a custom behavior.
---Default implementation -> client with best confidence values for selected shared pins.
function AMagicLeapSharedWorldGameMode:SelectChosenOne() end

function AMagicLeapSharedWorldGameMode:MagicLeapOnNewLocalDataFromClients__DelegateSignature() end

---Determine which pins should be used for shared world aligment of all clients.
---The result can be set to AMagicLeapSharedWorldGameMode::SharedWorldData.
---Calling SendSharedWorldDataToClients() will replicate these local pins to all clients.
---Calling SelectChosenOne() can select a certain client to be pseudo-authoritative i.e. all other clients will align to its coordinate space.
---This function is a BlueprintNativeEvent, override to implement a custom behavior.
---Default implementation -> simple selection of pins common in all connected non-spectator clients,
---with their confidence value thresholded by PinSelectionConfidenceThreshold
---@param NewSharedWorldData FMagicLeapSharedWorldSharedData @[out] 
function AMagicLeapSharedWorldGameMode:DetermineSharedWorldData(NewSharedWorldData) end

