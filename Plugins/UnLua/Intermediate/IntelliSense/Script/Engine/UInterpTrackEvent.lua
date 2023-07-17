---@class UInterpTrackEvent : UInterpTrack
---@field public EventTrack TArray<FEventTrackKey> @Array of events to fire off.
---@field public bFireEventsWhenForwards boolean @If events should be fired when passed playing the sequence forwards.
---@field public bFireEventsWhenBackwards boolean @If events should be fired when passed playing the sequence backwards.
---@field public bFireEventsWhenJumpingForwards boolean @If true, events on this track are fired even when jumping forwads through a sequence - for example, skipping a cinematic.
---@field public bUseCustomEventName boolean @If checked each key's event name is the exact name of the custom event function in level script that will be called
local UInterpTrackEvent = {}

