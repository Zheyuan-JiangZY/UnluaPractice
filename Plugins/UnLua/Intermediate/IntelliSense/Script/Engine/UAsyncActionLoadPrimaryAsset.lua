---@class UAsyncActionLoadPrimaryAsset : UAsyncActionLoadPrimaryAssetBase
---@field public Completed MulticastDelegate
local UAsyncActionLoadPrimaryAsset = {}

---Load a primary asset into memory. The completed delegate will go off when the load succeeds or fails, you should cast the Loaded object to verify it is the correct type.
---If LoadBundles is specified, those bundles are loaded along with the asset
---@param WorldContextObject UObject
---@param PrimaryAsset FPrimaryAssetId
---@param LoadBundles TArray_string_
---@return UAsyncActionLoadPrimaryAsset
function UAsyncActionLoadPrimaryAsset.AsyncLoadPrimaryAsset(WorldContextObject, PrimaryAsset, LoadBundles) end

