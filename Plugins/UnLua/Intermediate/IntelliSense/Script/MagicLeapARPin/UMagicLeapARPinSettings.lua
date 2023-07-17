---Implements the settings for the Magic Leap AR Pin.
---@class UMagicLeapARPinSettings : UObject
---@field public UpdateCheckFrequency number @Time (in seconds) to check for updates in ARPins (Lumin-only). Set 0 to check every frame.
---@field public OnUpdatedEventTriggerDelta FMagicLeapARPinState @What should be the delta of the ARPin state properties to trigger an OnUpdated event for that pin. A pin will be considered "updated" if at least one of it's state property deltas are above the specified thresholds.
local UMagicLeapARPinSettings = {}

