---@class FAnimGraphNodePropertyBinding
---@field public PinType FEdGraphPinType @Pin type
---@field public PromotedPinType FEdGraphPinType @Source type if the binding is a promotion
---@field public PropertyName string @Property binding name
---@field public PathAsText string @The property path as text
---@field public PropertyPath TArray<string> @The property path a pin is bound to
---@field public Type EAnimGraphNodePropertyBindingType @Whether the binding is a function or not
---@field public bIsBound boolean @Whether the pin is bound or not
---@field public bIsPromotion boolean @Whether the pin binding is a promotion (e.g. bool->int)
local FAnimGraphNodePropertyBinding = {}
