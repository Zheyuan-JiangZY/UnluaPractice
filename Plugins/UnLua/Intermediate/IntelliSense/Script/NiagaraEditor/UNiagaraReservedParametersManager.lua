---Manager singleton for tracking parameters that are reserved by parameter definitions assets.
---Implements UObject to support undo/redo transactions on the map of definitions asset ptrs to parameter names.
---@class UNiagaraReservedParametersManager : UObject
---@field private ReservedParameters TMap<string, FReservedParameterArray>
local UNiagaraReservedParametersManager = {}

