---Struct used to define information for terminal types, e.g. types that can be contained
---by a container. Currently can represent strong/weak references to a type (only UObjects),
---a structure, or a primitive. Support for "Container of Containers" is done by wrapping
---a structure, rather than implicitly defining names for containers.
---@class FEdGraphTerminalType
---@field public TerminalCategory string @Category
---@field public TerminalSubCategory string @Sub-category
---@field public TerminalSubCategoryObject TWeakObjectPtr<UObject> @Sub-category object
---@field public bTerminalIsConst boolean @Whether or not this pin is a immutable const value
---@field public bTerminalIsWeakPointer boolean @Whether or not this is a weak reference
---@field public bTerminalIsUObjectWrapper boolean @Whether or not this is a "wrapped" Unreal object ptr type (e.g. TSubclassOf<T> instead of UClass*)
local FEdGraphTerminalType = {}
