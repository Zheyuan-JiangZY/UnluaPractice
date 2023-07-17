---@class UParticleModuleLocation : UParticleModuleLocationBase
---@field public StartLocation FRawDistributionVector @The location the particle should be emitted. Relative in local space to the emitter by default. Relative in world space as a WorldOffset module or when the emitter's UseLocalSpace is off. Retrieved using the EmitterTime at the spawn of the particle.
---@field public DistributeOverNPoints number @When set to a non-zero value this will force the particles to only spawn on evenly distributed positions between the two points specified.
---@field public DistributeThreshold number @When DistributeOverNPoints is set to a non-zero value, this specifies the ratio of particles spawned that should use the distribution.  (For example setting this to 1 will cause all the particles to be distributed evenly whereas .75 would cause 1/4 of the particles to be randomly placed).
local UParticleModuleLocation = {}

