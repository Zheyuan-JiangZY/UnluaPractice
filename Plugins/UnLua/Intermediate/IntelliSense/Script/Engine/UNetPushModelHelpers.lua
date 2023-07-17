---@class UNetPushModelHelpers : UBlueprintFunctionLibrary
local UNetPushModelHelpers = {}

---@param Object UObject
---@param RepIndex integer
---@param PropertyName string
function UNetPushModelHelpers.MarkPropertyDirtyFromRepIndex(Object, RepIndex, PropertyName) end

---@param Object UObject
---@param PropertyName string
function UNetPushModelHelpers.MarkPropertyDirty(Object, PropertyName) end

