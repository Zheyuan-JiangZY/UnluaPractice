---@class UMotionTrackedDeviceFunctionLibrary : UBlueprintFunctionLibrary
local UMotionTrackedDeviceFunctionLibrary = {}

---Set whether motion tracked controllers activate on creation by default, or do not and must be explicitly activated.
---@param Enable boolean
function UMotionTrackedDeviceFunctionLibrary.SetIsControllerMotionTrackingEnabledByDefault(Enable) end

---Returns true if tracking is enabled for the specified device.
---@param PlayerIndex integer
---@param SourceName string
---@return boolean
function UMotionTrackedDeviceFunctionLibrary.IsMotionTrackingEnabledForSource(PlayerIndex, SourceName) end

---Returns true if tracking is enabled for the specified device.
---@param PlayerIndex integer
---@param Hand EControllerHand
---@return boolean
function UMotionTrackedDeviceFunctionLibrary.IsMotionTrackingEnabledForDevice(PlayerIndex, Hand) end

---Returns true if tracking is enabled for the specified device.
---@param MotionControllerComponent UMotionControllerComponent
---@return boolean
function UMotionTrackedDeviceFunctionLibrary.IsMotionTrackingEnabledForComponent(MotionControllerComponent) end

---Returns true if it is necessary for the game to manage how many motion tracked devices it is asking to be tracked simultaneously.
---On some platforms this is unnecessary because all supported devices can be tracked simultaneously.
---@return boolean
function UMotionTrackedDeviceFunctionLibrary.IsMotionTrackedDeviceCountManagementNecessary() end

---Queries the specified source's tracking status and returns true if it has tracking.
---@param PlayerIndex integer
---@param SourceName string
---@return boolean
function UMotionTrackedDeviceFunctionLibrary.IsMotionSourceTracking(PlayerIndex, SourceName) end

---Get the number of controllers for which tracking is enabled.
---@return integer
function UMotionTrackedDeviceFunctionLibrary.GetMotionTrackingEnabledControllerCount() end

---Get the maximum number of controllers that can be tracked.
---@return integer
function UMotionTrackedDeviceFunctionLibrary.GetMaximumMotionTrackedControllerCount() end

---Returns the system name used to distinguish the current tracking system.
---If no XR tracking system is active, then the name 'None' is returned.
---@return string
function UMotionTrackedDeviceFunctionLibrary.GetActiveTrackingSystemName() end

---Returns a list of all available motion sources (FNames associated with
---discrete tracking data that can be used to drive MotionControllerComponents).
---@return TArray_string_
function UMotionTrackedDeviceFunctionLibrary.EnumerateMotionSources() end

---Enable tracking of the specified controller, by player index and tracked device type.
---@param PlayerIndex integer
---@param SourceName string
---@return boolean
function UMotionTrackedDeviceFunctionLibrary.EnableMotionTrackingOfSource(PlayerIndex, SourceName) end

---Enable tracking of the specified controller, by player index and tracked device type.
---@param PlayerIndex integer
---@param Hand EControllerHand
---@return boolean
function UMotionTrackedDeviceFunctionLibrary.EnableMotionTrackingOfDevice(PlayerIndex, Hand) end

---Enable tracking of the specified controller, by player index and tracked device type.
---@param MotionControllerComponent UMotionControllerComponent
---@return boolean
function UMotionTrackedDeviceFunctionLibrary.EnableMotionTrackingForComponent(MotionControllerComponent) end

---Disable tracking of the specified controller, by player index and tracked device type.
---@param PlayerIndex integer
---@param SourceName string
function UMotionTrackedDeviceFunctionLibrary.DisableMotionTrackingOfSource(PlayerIndex, SourceName) end

---Disable tracking of the specified controller, by player index and tracked device type.
---@param PlayerIndex integer
---@param Hand EControllerHand
function UMotionTrackedDeviceFunctionLibrary.DisableMotionTrackingOfDevice(PlayerIndex, Hand) end

---Disable tracking for all controllers associated with the specified player.
---@param PlayerIndex integer
function UMotionTrackedDeviceFunctionLibrary.DisableMotionTrackingOfControllersForPlayer(PlayerIndex) end

---Disable tracking for all controllers.
function UMotionTrackedDeviceFunctionLibrary.DisableMotionTrackingOfAllControllers() end

---Disable tracking of the specified controller, by player index and tracked device type.
---@param MotionControllerComponent UMotionControllerComponent
function UMotionTrackedDeviceFunctionLibrary.DisableMotionTrackingForComponent(MotionControllerComponent) end

