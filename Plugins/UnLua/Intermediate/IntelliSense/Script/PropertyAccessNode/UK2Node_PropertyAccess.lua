---@class UK2Node_PropertyAccess : UK2Node
---@field private Path TArray<string> @Path that this access exposes
---@field private TextPath string @Path as text, for display
---@field private ResolvedPinType FEdGraphPinType @Resolved pin type
---@field private GeneratedPropertyName string @Generated property created during compilation
local UK2Node_PropertyAccess = {}

