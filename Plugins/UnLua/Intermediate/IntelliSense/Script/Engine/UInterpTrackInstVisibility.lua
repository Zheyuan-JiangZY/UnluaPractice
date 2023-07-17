---@class UInterpTrackInstVisibility : UInterpTrackInst
---@field public Action integer
---@field public LastUpdatePosition number @Position we were in last time we evaluated. During UpdateTrack, events between this time and the current time will be processed.
local UInterpTrackInstVisibility = {}

