---@class UAISenseConfig : UObject
---@field protected DebugColor FColor
---@field protected MaxAge number @specifies age limit after stimuli generated by this sense become forgotten. 0 means "never"
---@field protected bStartsEnabled boolean @determines whether given sense starts in an enabled state
local UAISenseConfig = {}

