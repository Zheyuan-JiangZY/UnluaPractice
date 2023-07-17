---@class UARSaveWorldAsyncTaskBlueprintProxy : UARBaseAsyncTaskBlueprintProxy
---@field public OnSuccess MulticastDelegate
---@field public OnFailed MulticastDelegate
local UARSaveWorldAsyncTaskBlueprintProxy = {}

---Saves an AR world to a byte array for network replication or saving to disk
---@param WorldContextObject UObject
---@return UARSaveWorldAsyncTaskBlueprintProxy
function UARSaveWorldAsyncTaskBlueprintProxy.ARSaveWorld(WorldContextObject) end

