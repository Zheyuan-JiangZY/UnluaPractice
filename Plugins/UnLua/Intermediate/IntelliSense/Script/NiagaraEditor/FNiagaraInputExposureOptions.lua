---@class FNiagaraInputExposureOptions
---@field public bExposed boolean @If this input is exposed to it's caller.
---@field public bRequired boolean @If this input is required to be bound.
---@field public bCanAutoBind boolean @If this input can auto-bind to system parameters and emitter attributes. Will never auto bind to custom parameters.
---@field public bHidden boolean @If this input should be hidden in the advanced pin section of it's caller.
local FNiagaraInputExposureOptions = {}
