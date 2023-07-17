---Implements a message for committing a deployment transaction.
---To launch an arbitrary executable on a device use the FTargetDeviceServiceRunExecutable message instead.
---@class FTargetDeviceServiceLaunchApp
---@field public Variant string @Holds the variant identifier of the target device to use.
---@field public AppID string @Holds the identifier of the application to launch. The semantics of this identifier are target platform specific. In some cases it may be a GUID, in other cases it may be the path to the application or some other means of identifying the application. Application identifiers are returned from target device services as result of successful deployment transactions.
---@field public BuildConfiguration integer @The application's build configuration, i.e. Debug or Shipping.
---@field public Params string @Holds optional command line parameters for the application.
local FTargetDeviceServiceLaunchApp = {}
