---@class UAsyncActionChangePrimaryAssetBundles : UAsyncActionLoadPrimaryAssetBase
---@field public Completed MulticastDelegate
local UAsyncActionChangePrimaryAssetBundles = {}

---Change the bundle state of assets in PrimaryAssetList. AddBundles are added and RemoveBundles are removed, both must be filled in but an empty array is allowed
---@param WorldContextObject UObject
---@param PrimaryAssetList TArray_FPrimaryAssetId_
---@param AddBundles TArray_string_
---@param RemoveBundles TArray_string_
---@return UAsyncActionChangePrimaryAssetBundles
function UAsyncActionChangePrimaryAssetBundles.AsyncChangeBundleStateForPrimaryAssetList(WorldContextObject, PrimaryAssetList, AddBundles, RemoveBundles) end

---Change the bundle state of all assets that match OldBundles to instead contain NewBundles.
---@param WorldContextObject UObject
---@param NewBundles TArray_string_
---@param OldBundles TArray_string_
---@return UAsyncActionChangePrimaryAssetBundles
function UAsyncActionChangePrimaryAssetBundles.AsyncChangeBundleStateForMatchingPrimaryAssets(WorldContextObject, NewBundles, OldBundles) end

