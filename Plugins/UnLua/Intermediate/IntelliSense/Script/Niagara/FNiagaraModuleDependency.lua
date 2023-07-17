---@class FNiagaraModuleDependency
---@field public Id string @Specifies the provided id of the required dependent module (e.g. 'ProvidesNormalizedAge')
---@field public Type ENiagaraModuleDependencyType @Whether the dependency belongs before or after this module
---@field public ScriptConstraint ENiagaraModuleDependencyScriptConstraint @Specifies constraints related to the source script a modules provides as dependency.
---@field public Description string @Detailed description of the dependency
local FNiagaraModuleDependency = {}
