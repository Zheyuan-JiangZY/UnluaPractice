---Base class for all asset action-related utilities
---Any functions/events that are exposed on derived classes that have the correct signature will be
---included as menu options when right-clicking on a group of assets in the content browser.
---@class UAssetActionUtility : UEditorUtilityObject
local UAssetActionUtility = {}

---Returns whether or not this action is designed to work specifically on Blueprints (true) or on all assets (false).
---If true, GetSupportedClass() is treated as a filter against the Parent Class of selected Blueprint assets
---@return boolean
function UAssetActionUtility:IsActionForBlueprints() end

---Return the class that this asset action supports (if not implemented, it will show up for all asset types)
---@return TSubclassOf_UObject_
function UAssetActionUtility:GetSupportedClass() end

