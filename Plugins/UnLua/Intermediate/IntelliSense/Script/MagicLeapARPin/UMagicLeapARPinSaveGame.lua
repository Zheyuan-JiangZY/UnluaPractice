---Base class to save game data associated with a given pin. Inherit from this class and set it to be the PinDataClass in the MagicLeapARPinComponent to save and restore related data.
---@class UMagicLeapARPinSaveGame : USaveGame
---@field public PinnedID FGuid
---@field public ComponentWorldTransform FTransform
---@field public PinTransform FTransform
---@field public bShouldPinActor boolean
local UMagicLeapARPinSaveGame = {}

