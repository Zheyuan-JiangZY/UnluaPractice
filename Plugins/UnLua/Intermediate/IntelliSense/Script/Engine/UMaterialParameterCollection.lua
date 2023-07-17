---Asset class that contains a list of parameter names and their default values.
---Any number of materials can reference these parameters and get new values when the parameter values are changed.
---@class UMaterialParameterCollection : UObject
---@field public StateId FGuid @Used by materials using this collection to know when to recompile.
---@field public ScalarParameters TArray<FCollectionScalarParameter>
---@field public VectorParameters TArray<FCollectionVectorParameter>
local UMaterialParameterCollection = {}

