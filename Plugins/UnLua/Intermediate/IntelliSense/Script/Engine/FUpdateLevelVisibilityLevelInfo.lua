---This structure is used to pass arguments to ServerUpdateLevelVisibilty() and ServerUpdateMultipleLevelsVisibility() server RPC functions
---@class FUpdateLevelVisibilityLevelInfo
---@field public PackageName string @The name of the package for the level whose status changed.
---@field public FileName string @The name / path of the asset file for the level whose status changed.
---@field public bIsVisible boolean @The new visibility state for this level.
local FUpdateLevelVisibilityLevelInfo = {}
