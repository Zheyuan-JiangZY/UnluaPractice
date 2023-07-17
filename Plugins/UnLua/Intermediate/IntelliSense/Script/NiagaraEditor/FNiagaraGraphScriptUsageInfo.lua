---Container for UNiagaraGraph cached data for managing CompileIds and Traversals.
---@class FNiagaraGraphScriptUsageInfo
---@field public BaseId FGuid @A guid which is generated when this usage info is created.  Allows for forced recompiling when the cached ids are invalidated.
---@field public UsageType ENiagaraScriptUsage @The context in which this sub-graph traversal will be used.
---@field public UsageId FGuid @The particular instance of the usage type. Event scripts, for example, have potentially multiple graphs.
---@field public CompileHash FNiagaraCompileHash @The hash that we calculated last traversal.
---@field public CompileHashFromGraph FNiagaraCompileHash @The hash that we calculated last traversal.
---@field public CompileLastObjects TArray<FNiagaraCompileHashVisitorDebugInfo>
---@field public Traversal TArray<UNiagaraNode> @The traversal of output to input nodes for this graph. This is not a recursive traversal, it just includes nodes from this graph.
local FNiagaraGraphScriptUsageInfo = {}
