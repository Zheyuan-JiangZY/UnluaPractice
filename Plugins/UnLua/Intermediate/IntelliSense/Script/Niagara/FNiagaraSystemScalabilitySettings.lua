---Scalability settings for Niagara Systems for a particular platform set (unless overridden).
---@class FNiagaraSystemScalabilitySettings
---@field public Platforms FNiagaraPlatformSet @The platforms on which these settings are active (unless overridden).
---@field public bCullByDistance boolean @Controls whether distance culling is enabled.
---@field public bCullMaxInstanceCount boolean @Controls whether we should cull systems based on how many instances with the same Effect Type are active.
---@field public bCullPerSystemMaxInstanceCount boolean @Controls whether we should cull systems based on how many instances of the system are active.
---@field public bCullByMaxTimeWithoutRender boolean @Controls whether visibility culling is enabled.
---@field public bCullByGlobalBudget boolean @Controls whether global budget based culling is enabled.
---@field public MaxDistance number @Effects of this type are culled beyond this distance.
---@field public MaxInstances integer @Effects of this type will be culled when total active instances using this same EffectType exceeds this number. If the effect type has a significance handler, instances are sorted by their significance and only the N most significant will be kept. The rest are culled. If it does not have a significance handler, instance count culling will be applied at spawn time only. New FX that would exceed the counts are not spawned/activated.
---@field public MaxSystemInstances integer @Effects of this type will be culled when total active instances of the same NiagaraSystem exceeds this number. If the effect type has a significance handler, instances are sorted by their significance and only the N most significant will be kept. The rest are culled. If it does not have a significance handler, instance count culling will be applied at spawn time only. New FX that would exceed the counts are not spawned/activated.
---@field public MaxTimeWithoutRender number @Effects will be culled if they go more than this length of time without being rendered.
---@field public MaxGlobalBudgetUsage number @Effects will be culled if the global budget usage exceeds this fraction. A global budget usage of 1.0 means current global FX workload has reached it's max budget. Budgets are set by CVars under FX.Budget...
local FNiagaraSystemScalabilitySettings = {}
