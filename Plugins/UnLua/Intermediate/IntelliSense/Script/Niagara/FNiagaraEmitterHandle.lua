---Stores emitter information within the context of a System.
---@class FNiagaraEmitterHandle
---@field private Id FGuid @The id of this emitter handle.
---@field private IdName string @HACK!  Data sets used to use the emitter name, but this isn't guaranteed to be unique.  This is a temporary hack to allow the data sets to continue work with using names, but that code needs to be refactored to use the id defined here.
---@field private bIsEnabled boolean @Whether or not this emitter is enabled within the System.  Disabled emitters aren't simulated.
---@field private Name string @The display name for this emitter in the System.
---@field private bIsolated boolean
---@field private Instance UNiagaraEmitter @The copied instance of the emitter this handle references.
local FNiagaraEmitterHandle = {}
