---@class ULayer : UObject
---@field public LayerName string @The display name of the layer
---@field public bIsVisible boolean @Whether actors associated with the layer are visible in the viewport
---@field public ActorStats TArray<FLayerActorStats> @Basic stats regarding the number of Actors and their types currently assigned to the Layer
local ULayer = {}

