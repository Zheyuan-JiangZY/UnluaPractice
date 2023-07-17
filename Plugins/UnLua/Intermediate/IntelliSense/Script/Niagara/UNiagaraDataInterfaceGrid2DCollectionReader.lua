---#todo(dmp): base class has all the RW attributes, even though we only care about the attributes that query the grid.  Cleaning this up would be great
---@class UNiagaraDataInterfaceGrid2DCollectionReader : UNiagaraDataInterfaceGrid2D
---@field public EmitterName string @Name of the emitter to read from
---@field public DIName string @Name of the Grid2DCollection Data Interface on the emitter
local UNiagaraDataInterfaceGrid2DCollectionReader = {}

