---@class FMagicLeapGraphicsClientPerformanceInfo
---@field public FrameStartCPUCompAcquireCPUTimeMs number @The average frame start CPU to composition acquisition of the frame, in milliseconds.
---@field public FrameStartCPUFrameEndGPUTimeMs number @The average frame start CPU to frame end GPU, in milliseconds.
---@field public FrameStartCPUFrameStartCPUTimeMs number @The average frame cadence, CPU start to CPU start, in milliseconds.
---@field public FrameDurationCPUTimeMs number @The average frame CPU duration, in milliseconds.
---@field public FrameDurationGPUTimeMs number @The average frame GPU duration, in milliseconds.
---@field public FrameInternalDurationCPUTimeMs number @The average CPU duration for internal operations per frame, in milliseconds.
---@field public FrameInternalDurationGPUTimeMs number @The average GPU duration for internal operations per frame, in milliseconds.
local FMagicLeapGraphicsClientPerformanceInfo = {}
