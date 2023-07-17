---@class UContentBrowserAssetContextMenuContext : UObject
---@field public SelectedObjects TArray<TWeakObjectPtr<UObject>>
---@field public CommonClass TSubclassOf<UObject>
---@field public bCanBeModified boolean
local UContentBrowserAssetContextMenuContext = {}

---@return TArray_UObject_
function UContentBrowserAssetContextMenuContext:GetSelectedObjects() end

