---A UInteractiveTool contains a set of UObjects that contain "properties" of the Tool, ie
---the configuration flags, parameters, etc that control the Tool. Currently any UObject
---can be added as a property set, however there is no automatic mechanism for those child
---UObjects to notify the Tool when a property changes.
---If you make your property set UObjects subclasses of UInteractiveToolPropertySet, then
---when the Tool Properties are changed *in the Editor*, the parent Tool will be automatically notified.
---You can override UInteractiveTool::OnPropertyModified() to act on these notifications
---@class UInteractiveToolPropertySet : UObject
---@field protected CachedProperties UInteractiveToolPropertySet @CachedProperties should only ever be set to an instance of the subclass, ideally via GetPropertyCache().
---@field protected bIsPropertySetEnabled boolean
local UInteractiveToolPropertySet = {}

