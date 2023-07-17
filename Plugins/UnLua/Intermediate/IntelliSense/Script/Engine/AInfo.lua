---Info is the base class of an Actor that isn't meant to have a physical representation in the world, used primarily
---for "manager" type classes that hold settings data about the world, but might need to be an Actor for replication purposes.
---@class AInfo : AActor
---@field private SpriteComponent UBillboardComponent @Billboard Component displayed in editor
local AInfo = {}

