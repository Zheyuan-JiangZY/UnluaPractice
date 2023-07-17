---Expose editor utility functions to Blutilities
---@class UEditorUtilityLibrary : UBlueprintFunctionLibrary
local UEditorUtilityLibrary = {}

---Renames an asset (cannot move folders)
---@param Asset UObject
---@param NewName string
function UEditorUtilityLibrary.RenameAsset(Asset, NewName) end

---@return TArray_AActor_
function UEditorUtilityLibrary.GetSelectionSet() end

---@param Origin FVector @[out] 
---@param BoxExtent FVector @[out] 
---@param SphereRadius number @[out] 
function UEditorUtilityLibrary.GetSelectionBounds(Origin, BoxExtent, SphereRadius) end

---Gets the set of currently selected classes
---@return TArray_TSubclassOf_UObject__
function UEditorUtilityLibrary.GetSelectedBlueprintClasses() end

---Gets the set of currently selected assets
---@return TArray_UObject_
function UEditorUtilityLibrary.GetSelectedAssets() end

---Gets the set of currently selected asset data
---@return TArray_FAssetData_
function UEditorUtilityLibrary.GetSelectedAssetData() end

---Attempts to find the actor specified by PathToActor in the current editor world
---@param PathToActor string
---@return AActor
function UEditorUtilityLibrary:GetActorReference(PathToActor) end

