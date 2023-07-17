---@class UAssetRegistryHelpers : UObject
local UAssetRegistryHelpers = {}

---Convert to a SoftObjectPath for loading
---@param InAssetData FAssetData
---@return FSoftObjectPath
function UAssetRegistryHelpers.ToSoftObjectPath(InAssetData) end

---Populates the FARFilters tags and values map with the passed in tags and values
---@param InFilter FARFilter
---@param InTagsAndValues TArray_FTagAndValue_
---@return FARFilter
function UAssetRegistryHelpers.SetFilterTagsAndValues(InFilter, InTagsAndValues) end

---Checks to see if this AssetData refers to an asset or is NULL
---@param InAssetData FAssetData
---@return boolean
function UAssetRegistryHelpers.IsValid(InAssetData) end

---Returns true if this is the primary asset in a package, true for maps and assets but false for secondary objects like class redirectors
---@param InAssetData FAssetData
---@return boolean
function UAssetRegistryHelpers.IsUAsset(InAssetData) end

---Returns true if the this asset is a redirector.
---@param InAssetData FAssetData
---@return boolean
function UAssetRegistryHelpers.IsRedirector(InAssetData) end

---Returns true if the asset is loaded
---@param InAssetData FAssetData
---@return boolean
function UAssetRegistryHelpers.IsAssetLoaded(InAssetData) end

---Gets the value associated with the given tag as a string
---@param InAssetData FAssetData
---@param InTagName string
---@param OutTagValue string @[out] 
---@return boolean
function UAssetRegistryHelpers.GetTagValue(InAssetData, InTagName, OutTagValue) end

---Returns the full name for the asset in the form: Class ObjectPath
---@param InAssetData FAssetData
---@return string
function UAssetRegistryHelpers.GetFullName(InAssetData) end

---Returns the name for the asset in the form: Class'ObjectPath'
---@param InAssetData FAssetData
---@return string
function UAssetRegistryHelpers.GetExportTextName(InAssetData) end

---@param InAssetData FAssetData
---@return TSubclassOf_UObject_
function UAssetRegistryHelpers.GetClass(InAssetData) end

---@return TScriptInterface_UAssetRegistry_
function UAssetRegistryHelpers.GetAssetRegistry() end

---Returns the asset UObject if it is loaded or loads the asset if it is unloaded then returns the result
---@param InAssetData FAssetData
---@return UObject
function UAssetRegistryHelpers.GetAsset(InAssetData) end

---Creates asset data from a UObject.
---@param InAsset UObject
---@param bAllowBlueprintClass boolean @[opt] 
---@return FAssetData
function UAssetRegistryHelpers.CreateAssetData(InAsset, bAllowBlueprintClass) end

