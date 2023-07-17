---SteamVR Extensions Function Library
---@class USteamVRFunctionLibrary : UBlueprintFunctionLibrary
local USteamVRFunctionLibrary = {}

---Returns an array of the currently tracked device IDs
---@param DeviceType ESteamVRTrackedDeviceType
---@param OutTrackedDeviceIds TArray_integer_ @[out] 
function USteamVRFunctionLibrary.GetValidTrackedDeviceIds(DeviceType, OutTrackedDeviceIds) end

---Gets the orientation and position (in device space) of the device with the specified ID
---@param DeviceId integer
---@param OutPosition FVector @[out] 
---@param OutOrientation FRotator @[out] 
---@return boolean
function USteamVRFunctionLibrary.GetTrackedDevicePositionAndOrientation(DeviceId, OutPosition, OutOrientation) end

---Given a controller index and a hand, returns the position and orientation of the controller
---@param ControllerIndex integer
---@param Hand EControllerHand
---@param OutPosition FVector @[out] 
---@param OutOrientation FRotator @[out] 
---@return boolean
function USteamVRFunctionLibrary.GetHandPositionAndOrientation(ControllerIndex, Hand, OutPosition, OutOrientation) end

