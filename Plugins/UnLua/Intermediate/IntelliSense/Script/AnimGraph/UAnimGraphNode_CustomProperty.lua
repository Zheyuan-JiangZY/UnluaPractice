---@class UAnimGraphNode_CustomProperty : UAnimGraphNode_Base
---@field protected KnownExposableProperties TArray<string> @List of property names we know to exist on the target class, so we can detect when Properties are added or removed on reconstruction
---@field protected ExposedPropertyNames TArray<string> @Names of properties the user has chosen to expose
local UAnimGraphNode_CustomProperty = {}

