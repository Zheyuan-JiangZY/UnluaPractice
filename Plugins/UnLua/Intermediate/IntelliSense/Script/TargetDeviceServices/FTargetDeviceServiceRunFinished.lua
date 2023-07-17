---Implements a message for notifying a target device proxy that running an executable has finished.
---@class FTargetDeviceServiceRunFinished
---@field public Variant string @Holds the variant identifier of the target device to use.
---@field public ExecutablePath string @Holds the path to the executable that was run.
---@field public ProcessId integer @Holds the process identifier of the running executable.
---@field public Succeeded boolean @Holds a flag indicating whether the executable started successfully.
local FTargetDeviceServiceRunFinished = {}
