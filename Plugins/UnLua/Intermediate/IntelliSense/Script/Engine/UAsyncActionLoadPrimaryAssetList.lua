---@class UAsyncActionLoadPrimaryAssetList : UAsyncActionLoadPrimaryAssetBase
---@field public Completed MulticastDelegate
local UAsyncActionLoadPrimaryAssetList = {}

---Load a list primary assets into memory. The completed delegate will go off when the load succeeds or fails, you should cast the Loaded object list to verify it is the correct type
---If LoadBundles is specified, those bundles are loaded along with the asset list
---@param WorldContextObject UObject
---@param PrimaryAssetList TArray_FPrimaryAssetId_
---@param LoadBundles TArray_string_
---@return UAsyncActionLoadPrimaryAssetList
function UAsyncActionLoadPrimaryAssetList.AsyncLoadPrimaryAssetList(WorldContextObject, PrimaryAssetList, LoadBundles) end

