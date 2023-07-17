---@class AMagicLeapSharedWorldGameState : AGameState
---@field public SharedWorldData FMagicLeapSharedWorldSharedData @Pins which are common in this environment and replicated to all clients.
---@field public AlignmentTransforms FMagicLeapSharedWorldAlignmentTransforms @Alignment transforms, replicated to all clients, to be used to calculate the final transform for the camera component parent to align coordinate spaces. Order should match the pin order in SharedWorldData.PinIDs.
---@field public OnSharedWorldDataUpdated MulticastDelegate @Event fired when shared pins are updated on the client.
---@field public OnAlignmentTransformsUpdated MulticastDelegate @Event fired when alignment transforms are updated on the client.
local AMagicLeapSharedWorldGameState = {}

function AMagicLeapSharedWorldGameState:OnReplicate_SharedWorldData() end

function AMagicLeapSharedWorldGameState:OnReplicate_AlignmentTransforms() end

function AMagicLeapSharedWorldGameState:MagicLeapSharedWorldEvent__DelegateSignature() end

---Calculates the transform to be used to align coordinate spaces of connected clients.
---The result should be set as the world transform of the parent of the camera component.
---This function is a BlueprintNativeEvent, override to implement a custom behavior.
---Default implementation -> inv(inv(AlignmentTransform) * ClientPinTransform)
---and uses only yaw component in rotation to ensure up vector alignes with gravity.
---The result is an average of the calculated transforms for each shared pin.
---@return FTransform
function AMagicLeapSharedWorldGameState:CalculateXRCameraRootTransform() end

