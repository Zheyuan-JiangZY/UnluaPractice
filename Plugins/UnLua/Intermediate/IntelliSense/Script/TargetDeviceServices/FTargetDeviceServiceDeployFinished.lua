---Implements a message for notifying a target device proxy that a deployment transaction has finished.
---@class FTargetDeviceServiceDeployFinished
---@field public Variant string @Holds the variant identifier of the target device to use.
---@field public AppID string @Holds the created identifier for the deployed application. The semantics of this identifier are target platform specific. In some cases it may be a GUID, in other cases it may be the path to the application or some other means of identifying the application. Application identifiers are returned from target device services as result of successful deployment transactions.
---@field public Succeeded boolean @Holds a flag indicating whether the deployment transaction finished successfully.
---@field public TransactionId FGuid @Holds the identifier of the deployment transaction that this file is part of.
local FTargetDeviceServiceDeployFinished = {}
