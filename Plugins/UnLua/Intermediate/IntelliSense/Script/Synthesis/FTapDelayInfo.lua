---@class FTapDelayInfo
---@field public TapLineMode ETapLineMode @Whether the tap line should send directly to a channel, pan, or not produce sound at all.
---@field public DelayLength number @Amount of time before this echo is heard in milliseconds.
---@field public Gain number @How loud this echo should be, in decibels.
---@field public OutputChannel integer @When the Tap Line Mode is set to Send To Channel, designates index of channel from which the echo should play.
---@field public PanInDegrees number @When the Tap Line Mode is set to Panning, designates the angle at which the echo should be panned. -90 is left, 90 is right, and 180/-180 is directly behind the listener.
---@field public TapId integer
local FTapDelayInfo = {}
