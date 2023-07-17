---* Used to store variable data and metadata per graph.
---@class UNiagaraScriptVariable : UObject
---@field public DefaultMode ENiagaraDefaultMode @The default mode. Can be Value, Binding or Custom.
---@field public DefaultBinding FNiagaraScriptVariableBinding @The default binding. Only used if DefaultMode == ENiagaraDefaultMode::Binding.
---@field public Variable FNiagaraVariable @Variable type, name and data. The data is not persistent, but used as a buffer when interfacing elsewhere.
---@field public Metadata FNiagaraVariableMetaData @The metadata associated with this script variable.
---@field private DefaultValueVariant FNiagaraVariant
---@field private StaticSwitchDefaultValue integer
---@field private bIsStaticSwitch boolean
---@field private bSubscribedToParameterDefinitions boolean
---@field private ChangeId FGuid
---@field private bOverrideParameterDefinitionsDefaultValue boolean
local UNiagaraScriptVariable = {}

