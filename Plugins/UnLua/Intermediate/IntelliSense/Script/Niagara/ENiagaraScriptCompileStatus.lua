---Enumerates states a Niagara script can be in.
---@class ENiagaraScriptCompileStatus
---@field public NCS_Unknown integer
---@field public NCS_Dirty integer
---@field public NCS_Error integer
---@field public NCS_UpToDate integer
---@field public NCS_BeingCreated integer
---@field public NCS_UpToDateWithWarnings integer
---@field public NCS_ComputeUpToDateWithWarnings integer
---@field public NCS_MAX integer
local ENiagaraScriptCompileStatus = {}