---Runtime script for a Niagara system
---@class UNiagaraScript : UNiagaraScriptBase
---@field public Usage ENiagaraScriptUsage @how this script is to be used. cannot be private due to use of GET_MEMBER_NAME_CHECKED
---@field private UsageId FGuid @Specifies a unique id for use when there are multiple scripts with the same usage, e.g. events.
---@field private ExposedVersion FGuid @The exposed version is the version that is used by default when a user adds this script somewhere. It is basically the published version and allows a script maintainer to create and test newer versions that are not used by normal users.
---@field private bVersioningEnabled boolean @If true then this script asset uses active version control to track changes.
---@field private VersionData TArray<FVersionedNiagaraScriptData> @Contains all of the versioned script data.
---@field public RapidIterationParameters FNiagaraParameterStore @Contains all of the top-level values that are iterated on in the UI. These are usually "Module" variables in the graph. They don't necessarily have to be in the order that they are expected in the uniform table.
---@field public VersionToOpenInEditor FGuid @This is used as a transient value to open a specific version in the graph editor
---@field private ScriptExecutionParamStoreCPU FNiagaraScriptExecutionParameterStore
---@field private ScriptExecutionParamStoreGPU FNiagaraScriptExecutionParameterStore
---@field private ScriptExecutionParamStore FNiagaraScriptExecutionParameterStore @The equivalent of ScriptExecutionParamStoreCPU (or GPU) cooked for the given platform.
---@field private ScriptExecutionBoundParameters TArray<FNiagaraBoundParameter> @The cooked binding data between ScriptExecutionParamStore and RapidIterationParameters.
---@field private CachedScriptVMId FNiagaraVMExecutableDataId @Adjusted every time that we compile this script. Lets us know that we might differ from any cached versions.
---@field private ActiveCompileRoots TArray<UObject>
---@field private CachedScriptVM FNiagaraVMExecutableData @Compiled VM bytecode and data necessary to run this script.
---@field private CachedParameterCollectionReferences TArray<UNiagaraParameterCollection>
---@field private CachedDefaultDataInterfaces TArray<FNiagaraScriptDataInterfaceInfo>
local UNiagaraScript = {}

function UNiagaraScript:RaiseOnGPUCompilationComplete() end

