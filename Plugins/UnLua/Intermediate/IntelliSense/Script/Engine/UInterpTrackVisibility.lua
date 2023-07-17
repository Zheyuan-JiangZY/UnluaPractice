---@class UInterpTrackVisibility : UInterpTrack
---@field public VisibilityTrack TArray<FVisibilityTrackKey> @Array of events to fire off.
---@field public bFireEventsWhenForwards boolean @If events should be fired when passed playing the sequence forwards.
---@field public bFireEventsWhenBackwards boolean @If events should be fired when passed playing the sequence backwards.
---@field public bFireEventsWhenJumpingForwards boolean @If true, events on this track are fired even when jumping forwads through a sequence - for example, skipping a cinematic.
local UInterpTrackVisibility = {}

