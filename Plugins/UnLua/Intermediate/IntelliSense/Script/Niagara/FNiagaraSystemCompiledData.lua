---@class FNiagaraSystemCompiledData
---@field public InstanceParamStore FNiagaraParameterStore
---@field public DataSetCompiledData FNiagaraDataSetCompiledData
---@field public SpawnInstanceParamsDataSetCompiledData FNiagaraDataSetCompiledData
---@field public UpdateInstanceParamsDataSetCompiledData FNiagaraDataSetCompiledData
---@field public SpawnInstanceGlobalBinding FNiagaraParameterDataSetBindingCollection
---@field public SpawnInstanceSystemBinding FNiagaraParameterDataSetBindingCollection
---@field public SpawnInstanceOwnerBinding FNiagaraParameterDataSetBindingCollection
---@field public SpawnInstanceEmitterBindings TArray<FNiagaraParameterDataSetBindingCollection>
---@field public UpdateInstanceGlobalBinding FNiagaraParameterDataSetBindingCollection
---@field public UpdateInstanceSystemBinding FNiagaraParameterDataSetBindingCollection
---@field public UpdateInstanceOwnerBinding FNiagaraParameterDataSetBindingCollection
---@field public UpdateInstanceEmitterBindings TArray<FNiagaraParameterDataSetBindingCollection>
local FNiagaraSystemCompiledData = {}