---@class UARGetCandidateObjectAsyncTaskBlueprintProxy : UARBaseAsyncTaskBlueprintProxy
---@field public OnSuccess MulticastDelegate
---@field public OnFailed MulticastDelegate
local UARGetCandidateObjectAsyncTaskBlueprintProxy = {}

---Saves the point cloud centered at the specified location capturing all of the features within the specified extent as an object that can be detected later
---@param WorldContextObject UObject
---@param Location FVector
---@param Extent FVector
---@return UARGetCandidateObjectAsyncTaskBlueprintProxy
function UARGetCandidateObjectAsyncTaskBlueprintProxy.ARGetCandidateObject(WorldContextObject, Location, Extent) end

