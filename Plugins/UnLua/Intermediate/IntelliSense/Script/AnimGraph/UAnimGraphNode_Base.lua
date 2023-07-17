---This is the base class for any animation graph nodes that generate or consume an animation pose in
---the animation blend graph.
---Any concrete implementations will be paired with a runtime graph node derived from FAnimNode_Base
---@class UAnimGraphNode_Base : UK2Node
---@field public ShowPinForProperties TArray<FOptionalPinFromProperty>
---@field public PropertyBindings TMap<string, FAnimGraphNodePropertyBinding> @Map from property name->binding info
---@field public BlueprintUsage EBlueprintUsage
local UAnimGraphNode_Base = {}

