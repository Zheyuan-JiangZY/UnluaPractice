---@class UAsyncActionLoadPrimaryAssetClassList : UAsyncActionLoadPrimaryAssetBase
---@field public Completed MulticastDelegate
local UAsyncActionLoadPrimaryAssetClassList = {}

---Load a list primary asset classes into memory. The completed delegate will go off when the load succeeds or fails, you should cast the Loaded object list to verify it is the correct type
---If LoadBundles is specified, those bundles are loaded along with the asset list
---@param WorldContextObject UObject
---@param PrimaryAssetList TArray_FPrimaryAssetId_
---@param LoadBundles TArray_string_
---@return UAsyncActionLoadPrimaryAssetClassList
function UAsyncActionLoadPrimaryAssetClassList.AsyncLoadPrimaryAssetClassList(WorldContextObject, PrimaryAssetList, LoadBundles) end

