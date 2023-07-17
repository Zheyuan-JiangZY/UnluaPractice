---@class UInterpTrackToggle : UInterpTrack
---@field public ToggleTrack TArray<FToggleTrackKey> @Array of events to fire off.
---@field public bActivateSystemEachUpdate boolean @If true, the track will call ActivateSystem on the emitter each update (the old 'incorrect' behavior). If false (the default), the System will only be activated if it was previously inactive.
---@field public bActivateWithJustAttachedFlag boolean @If true, the track will activate the system w/ the 'Just Attached' flag.
---@field public bFireEventsWhenForwards boolean @If events should be fired when passed playing the sequence forwards.
---@field public bFireEventsWhenBackwards boolean @If events should be fired when passed playing the sequence backwards.
---@field public bFireEventsWhenJumpingForwards boolean @If true, events on this track are fired even when jumping forwads through a sequence - for example, skipping a cinematic.
local UInterpTrackToggle = {}

