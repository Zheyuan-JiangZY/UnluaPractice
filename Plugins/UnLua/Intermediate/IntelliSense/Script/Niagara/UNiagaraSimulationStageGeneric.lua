---@class UNiagaraSimulationStageGeneric : UNiagaraSimulationStageBase
---@field public IterationSource ENiagaraIterationSource @Determine which elements this script is iterating over. You are not allowed to
---@field public Iterations integer @The number of times we run this simulation stage before moving to the next stage.
---@field public bSpawnOnly boolean @When enabled the stage will only run on the first tick after the emitter is reset, only valid for data interface iteration stages
---@field public bDisablePartialParticleUpdate boolean @Disables the ability to read / write from the same particle buffer, i.e. only update position and no other attributes.  By default this should not be changed and is a debugging tool.
---@field public DataInterface FNiagaraVariableDataInterfaceBinding @Source data interface to use for the simulation stage. The data interface needs to be a subclass of UNiagaraDataInterfaceRWBase, for example the Grid2D and Grid3D data interfaces.
local UNiagaraSimulationStageGeneric = {}

