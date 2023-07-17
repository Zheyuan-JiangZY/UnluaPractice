---Data Interface allowing a counter that starts at zero when created and increases every time it is sampled. Note that for now this is a signed integer, meaning that it can go negative when it loops past INT_MAX.
---@class UNiagaraDataInterfaceSimpleCounter : UNiagaraDataInterface
local UNiagaraDataInterfaceSimpleCounter = {}

