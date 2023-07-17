---@class UAssetRegistry : UInterface
local UAssetRegistry = {}

---Wait for scan to be complete
function UAssetRegistry:WaitForCompletion() end

---Trims items out of the asset data list that pass the supplied filter
---@param AssetDataList TArray_FAssetData_ @[out] 
---@param Filter FARFilter
function UAssetRegistry:UseFilterToExcludeAssets(AssetDataList, Filter) end

---Look for all assets on disk (can be async or synchronous)
---@param bSynchronousSearch boolean
function UAssetRegistry:SearchAllAssets(bSynchronousSearch) end

---Scan the supplied paths recursively right now and populate the asset registry. If bForceRescan is true, the paths will be scanned again, even if they were previously scanned
---@param InPaths TArray_string_
---@param bForceRescan boolean @[opt] 
function UAssetRegistry:ScanPathsSynchronous(InPaths, bForceRescan) end

---Forces a rescan of specific filenames, call this when you need to refresh from disk
---@param InFilePaths TArray_string_
function UAssetRegistry:ScanModifiedAssetFiles(InFilePaths) end

---Scan the specified individual files right now and populate the asset registry. If bForceRescan is true, the paths will be scanned again, even if they were previously scanned
---@param InFilePaths TArray_string_
---@param bForceRescan boolean @[opt] 
function UAssetRegistry:ScanFilesSynchronous(InFilePaths, bForceRescan) end

---Trims items out of the asset data list that do not pass the supplied filter
---@param AssetDataList TArray_FAssetData_ @[out] 
---@param Filter FARFilter
function UAssetRegistry:RunAssetsThroughFilter(AssetDataList, Filter) end

---If assets are currently being asynchronously scanned in the specified path, this will cause them to be scanned before other assets.
---@param PathToPrioritize string
function UAssetRegistry:PrioritizeSearchPath(PathToPrioritize) end

---Gets a list of packages that reference the supplied package. (On disk references ONLY)
---@param PackageName string
---@param ReferenceOptions FAssetRegistryDependencyOptions
---@param OutReferencers TArray_string_ @[out] 
---@return boolean
function UAssetRegistry:K2_GetReferencers(PackageName, ReferenceOptions, OutReferencers) end

---Gets a list of paths to objects that are referenced by the supplied package. (On disk references ONLY)
---@param PackageName string
---@param DependencyOptions FAssetRegistryDependencyOptions
---@param OutDependencies TArray_string_ @[out] 
---@return boolean
function UAssetRegistry:K2_GetDependencies(PackageName, DependencyOptions, OutDependencies) end

---Returns true if the asset registry is currently loading files and does not yet know about all assets
---@return boolean
function UAssetRegistry:IsLoadingAssets() end

---Does the given path contain assets, optionally also testing sub-paths?
---@param PackagePath string
---@param bRecursive boolean @[opt] 
---@return boolean
function UAssetRegistry:HasAssets(PackagePath, bRecursive) end

---Gets a list of all paths that are currently cached below the passed-in base path
---@param InBasePath string
---@param OutPathList TArray_string_ @[out] 
---@param bInRecurse boolean
function UAssetRegistry:GetSubPaths(InBasePath, OutPathList, bInRecurse) end

---Gets asset data for all assets in the supplied folder path
---@param PackagePath string
---@param OutAssetData TArray_FAssetData_ @[out] 
---@param bRecursive boolean @[opt] 
---@param bIncludeOnlyOnDiskAssets boolean @[opt] 
---@return boolean
function UAssetRegistry:GetAssetsByPath(PackagePath, OutAssetData, bRecursive, bIncludeOnlyOnDiskAssets) end

---Gets asset data for the assets in the package with the specified package name
---@param PackageName string
---@param OutAssetData TArray_FAssetData_ @[out] 
---@param bIncludeOnlyOnDiskAssets boolean @[opt] 
---@return boolean
function UAssetRegistry:GetAssetsByPackageName(PackageName, OutAssetData, bIncludeOnlyOnDiskAssets) end

---Gets asset data for all assets with the supplied class
---@param ClassName string
---@param OutAssetData TArray_FAssetData_ @[out] 
---@param bSearchSubClasses boolean @[opt] 
---@return boolean
function UAssetRegistry:GetAssetsByClass(ClassName, OutAssetData, bSearchSubClasses) end

---Gets asset data for all assets that match the filter.
---Assets returned must satisfy every filter component if there is at least one element in the component's array.
---Assets will satisfy a component if they match any of the elements in it.
---@param Filter FARFilter
---@param OutAssetData TArray_FAssetData_ @[out] 
---@return boolean
function UAssetRegistry:GetAssets(Filter, OutAssetData) end

---Gets the asset data for the specified object path
---@param ObjectPath string
---@param bIncludeOnlyOnDiskAssets boolean @[opt] 
---@return FAssetData
function UAssetRegistry:GetAssetByObjectPath(ObjectPath, bIncludeOnlyOnDiskAssets) end

---Gets a list of all paths that are currently cached
---@param OutPathList TArray_string_ @[out] 
function UAssetRegistry:GetAllCachedPaths(OutPathList) end

---Gets asset data for all assets in the registry.
---This method may be slow, use a filter if possible to avoid iterating over the entire registry.
---@param OutAssetData TArray_FAssetData_ @[out] 
---@param bIncludeOnlyOnDiskAssets boolean @[opt] 
---@return boolean
function UAssetRegistry:GetAllAssets(OutAssetData, bIncludeOnlyOnDiskAssets) end

