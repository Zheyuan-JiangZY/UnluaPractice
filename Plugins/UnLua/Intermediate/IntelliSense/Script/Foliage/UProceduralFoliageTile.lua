---Procedurally determines where to spawn foliage meshes within a discrete area.
---Generally, a procedural foliage simulation as a whole is composed of multiple tiles.
---Tiles are able to overlap one another as well to create a seamless appearance.
---Note that the tile is not responsible for actually spawning any instances, it only determines where they should be placed.
---Following a simulation, call ExtractDesiredInstances for information about where each instance should spawn.
---Note also that, barring any core changes to the ordering of TSet, foliage generation is deterministic
---(i.e. given the same inputs, the result of the simulation will always be the same).
---@class UProceduralFoliageTile : UObject
---@field private FoliageSpawner UProceduralFoliageSpawner
---@field private InstancesArray TArray<FProceduralFoliageInstance>
local UProceduralFoliageTile = {}

