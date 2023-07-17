---Component to handle receiving notifications from the LuminOS about application state (activated, suspended, termination, standby etc).
---@class ULuminApplicationLifecycleComponent : UApplicationLifecycleComponent
---@field public DeviceHasReactivatedDelegate MulticastDelegate @This event is called when the device has transitioned to the active mode from reality or standby. This is triggered when the device comes out of the reality mode or when the wearable is back on head and is no longer in standby mode.
---@field public DeviceWillEnterRealityModeDelegate MulticastDelegate @This event is called when the device has transitioned to the reality mode.
---@field public DeviceWillGoInStandbyDelegate MulticastDelegate @This callback is called when the device has transitioned to the standby mode. This is triggered when the wearable is off head.
---@field public FocusLostDelegate MulticastDelegate @This events is called when focus has been lost, usually because a system dialog has been displayed
---@field public FocusGainedDelegate MulticastDelegate @This events is called when focus has been gained, usually on startup or after a system dialog has been closed
local ULuminApplicationLifecycleComponent = {}

---@param reason EFocusLostReason
function ULuminApplicationLifecycleComponent:LuminApplicationLifetimeFocusLostDelegate__DelegateSignature(reason) end

function ULuminApplicationLifecycleComponent:LuminApplicationLifetimeDelegate__DelegateSignature() end

