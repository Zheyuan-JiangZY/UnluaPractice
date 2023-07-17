---@class UNiagaraGraph : UEdGraph
---@field private ChangeId FGuid @The current change identifier for this graph overall. Used to sync status with UNiagaraScripts.
---@field private ForceRebuildId FGuid @Internal value used to invalidate a DDC key for the script no matter what.
---@field private LastBuiltTraversalDataChangeId FGuid
---@field private CachedUsageInfo TArray<FNiagaraGraphScriptUsageInfo>
---@field private VariableToScriptVariable TMap<FNiagaraVariable, UNiagaraScriptVariable> @Storage of variables defined for use with this graph.
---@field private ParameterToReferencesMap TMap<FNiagaraVariable, FNiagaraGraphParameterReferenceCollection> @A map of parameters in the graph to their referencers.
local UNiagaraGraph = {}

