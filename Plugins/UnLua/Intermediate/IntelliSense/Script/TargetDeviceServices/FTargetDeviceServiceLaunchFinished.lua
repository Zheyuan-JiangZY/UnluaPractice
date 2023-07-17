---Implements a message for notifying a target device proxy that launching an application has finished.
---@class FTargetDeviceServiceLaunchFinished
---@field public AppID string @Holds the identifier of the launched application. The semantics of this identifier are target platform specific. In some cases it may be a GUID, in other cases it may be the path to the application or some other means of identifying the application. Application identifiers are returned from target device services as result of successful deployment transactions.
---@field public ProcessId integer @Holds the process identifier for the launched application.
---@field public Succeeded boolean @Holds a flag indicating whether the application was launched successfully.
local FTargetDeviceServiceLaunchFinished = {}
