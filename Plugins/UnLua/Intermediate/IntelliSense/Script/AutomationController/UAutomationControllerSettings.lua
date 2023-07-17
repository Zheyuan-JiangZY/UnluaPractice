---Implements the Editor's user settings.
---@class UAutomationControllerSettings : UObject
---@field public Groups TArray<FAutomatedTestGroup> @List of user-defined test groups
---@field public bSuppressLogErrors boolean @Whether to suppress log from test results (default=false)
---@field public bSuppressLogWarnings boolean @Whether to suppress log warnings from test results (default=false)
---@field public bTreatLogWarningsAsTestErrors boolean @Whether to treat log warnings as test errors (default=true)
---@field public CheckTestIntervalSeconds number @How long to wait between test updates (default=1sec)
---@field public GameInstanceLostTimerSeconds number @The maximum response wait time for detecting a lost game instance (default=300sec)
local UAutomationControllerSettings = {}

