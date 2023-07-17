---Implements a message for deploying a single file to a target device.
---The actual file data must be attached to the message.
---@class FTargetDeviceServiceDeployFile
---@field public TargetFileName string @Holds the name and path of the file as it will be stored on the target device.
---@field public TransactionId FGuid @Holds the identifier of the deployment transaction that this file is part of.
local FTargetDeviceServiceDeployFile = {}
