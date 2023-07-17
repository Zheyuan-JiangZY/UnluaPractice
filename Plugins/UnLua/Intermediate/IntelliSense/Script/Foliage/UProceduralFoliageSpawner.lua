---@class UProceduralFoliageSpawner : UObject
---@field public RandomSeed integer @The seed used for generating the randomness of the simulation.
---@field public TileSize number @Length of the tile (in cm) along one axis. The total area of the tile will be TileSize*TileSize.
---@field public NumUniqueTiles integer @The number of unique tiles to generate. The final simulation is a procedurally determined combination of the various unique tiles.
---@field public MinimumQuadTreeSize number @Minimum size of the quad tree used during the simulation. Reduce if too many instances are in splittable leaf quads (as warned in the log).
---@field private FoliageTypes TArray<FFoliageTypeObject> @The types of foliage to procedurally spawn.
local UProceduralFoliageSpawner = {}

---@param NumSteps integer @[opt] 
function UProceduralFoliageSpawner:Simulate(NumSteps) end

