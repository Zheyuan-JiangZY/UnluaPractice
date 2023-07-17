---@class UAudioCaptureComponent : USynthComponent
---@field public JitterLatencyFrames integer @Induced latency in audio frames to use to account for jitter between mic capture hardware and audio render hardware.    Increasing this number will increase latency but reduce potential for underruns.
local UAudioCaptureComponent = {}

