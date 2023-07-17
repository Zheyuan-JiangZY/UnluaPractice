---Implements a message for running an executable on a target device.
---To launch a previously deployed application on a device use the FTargetDeviceServiceLaunchApp message instead.
---@class FTargetDeviceServiceRunExecutable
---@field public Variant string @Holds the variant identifier of the target device to use for execution.
---@field public ExecutablePath string @Holds the path to the executable on the device.
---@field public Params string @Holds optional command line parameters for the executable.
local FTargetDeviceServiceRunExecutable = {}
