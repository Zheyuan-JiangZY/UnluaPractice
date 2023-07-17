---A single property access list. This is a list of FPropertyAccessIndirection
---@class FPropertyAccessIndirectionChain
---@field private Property Unknown @Leaf property
---@field private IndirectionStartIndex integer @Index of the first indirection of a property access
---@field private IndirectionEndIndex integer @Index of the last indirection of a property access
---@field private EventId integer @If this access is an event, then this will be the event Id of the property
local FPropertyAccessIndirectionChain = {}
