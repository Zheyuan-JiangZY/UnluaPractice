---An invisible volume used to manually define/create an HLOD cluster.
---@class AHierarchicalLODVolume : AVolume
---@field public bIncludeOverlappingActors boolean @When set this volume will incorporate actors which bounds overlap with the volume, otherwise only actors which are completely inside of the volume are incorporated
local AHierarchicalLODVolume = {}

