---@class FSimulationStageMetaData
---@field public SimulationStageName string @User simulation stage name.
---@field public IterationSource string @The Data Interface that we iterate over for this stage. If None, then use particles.
---@field public bSpawnOnly boolean @Is this stage a spawn-only stage?
---@field public bWritesParticles boolean @Do we write to particles this stage?
---@field public bPartialParticleUpdate boolean @When enabled the simulation stage does not write all variables out, so we are reading / writing to the same buffer.
---@field public OutputDestinations TArray<string> @DataInterfaces that we write to in this stage.
---@field public MinStage integer @Index of the simulation stage where we begin iterating. This is meant to encompass iteration count without having an entry for each iteration.
---@field public MaxStage integer @Index of the simulation stage where we end iterating. This is meant to encompass iteration count without having an entry for each iteration.
local FSimulationStageMetaData = {}
