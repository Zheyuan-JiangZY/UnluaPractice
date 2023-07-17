---@class UInterpTrackInstToggle : UInterpTrackInst
---@field public Action integer
---@field public LastUpdatePosition number @Position we were in last time we evaluated. During UpdateTrack, toggles between this time and the current time will be processed.
---@field public bSavedActiveState boolean @Cached 'active' state for the toggleable actor before we possessed it; restored when Matinee exits
local UInterpTrackInstToggle = {}

