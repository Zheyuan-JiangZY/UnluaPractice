---A result of an intersection found during a hit-test.
---@class FARTraceResult
---@field private DistanceFromCamera number @Distance (in Unreal Units) between the camera and the point where the line trace contacted tracked geometry.
---@field private TraceChannel EARLineTraceChannels @The trace channel that generated this trace result. (used for filtering)
---@field private LocalTransform FTransform @The transformation matrix that defines the intersection's rotation, translation and scale in AR system's local space.
---@field private TrackedGeometry UARTrackedGeometry @A pointer to the geometry data that was intersected by this trace, if any.
local FARTraceResult = {}
