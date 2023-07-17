---An exposed value updater
---@class FExposedValueHandler
---@field public BoundFunction string @The function to call to update associated properties (can be NULL)
---@field public CopyRecords TArray<FExposedValueCopyRecord> @Direct data access to property in anim instance
---@field public Function UFunction @function pointer if BoundFunction != NAME_None
---@field public ValueHandlerNodeProperty Unknown @Node property that this value handler is associated with, when the node is instantiated from this property the node's ExposedValueHandler will point back to this FExposedValueHandler:
local FExposedValueHandler = {}
