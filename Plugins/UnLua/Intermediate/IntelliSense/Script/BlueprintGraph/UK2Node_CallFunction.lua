---@class UK2Node_CallFunction : UK2Node
---@field public bIsPureFunc boolean @Indicates that this is a call to a pure function
---@field public bIsConstFunc boolean @Indicates that this is a call to a const function
---@field public bWantsEnumToExecExpansion boolean @Indicates that during compile we want to create multiple exec pins from an enum param
---@field public bIsInterfaceCall boolean @Indicates that this is a call to an interface function
---@field public bIsFinalFunction boolean @Indicates that this is a call to a final / superclass's function
---@field public bIsBeadFunction boolean @Indicates that this is a 'bead' function with no fixed location; it is drawn between the nodes that it is wired to
---@field public FunctionReference FMemberReference @The function to call
local UK2Node_CallFunction = {}

