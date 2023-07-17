---@class UInterpTrackInstEvent : UInterpTrackInst
---@field public LastUpdatePosition number @Position we were in last time we evaluated Events. During UpdateTrack, events between this time and the current time will be fired.
local UInterpTrackInstEvent = {}

