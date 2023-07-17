---Stereo gaze data that contains information for each eye individually.
---This may not be available with all devices.
---@class FEyeTrackerStereoGazeData
---@field public LeftEyeOrigin FVector @Origin of the left eye's gaze ray.
---@field public LeftEyeDirection FVector @Forward direction of the left eye's gaze ray.
---@field public RightEyeOrigin FVector @Origin of the right eye's gaze ray.
---@field public RightEyeDirection FVector @Forward direction of the right eye's gaze ray.
---@field public FixationPoint FVector @Location that the eyes converge. This is the 3d point where the tracked viewer is looking.
---@field public ConfidenceValue number @Value [0..1] that represents confidence in the gaze ray data above. Stable, reliably tracked eyes will be at or near 1. Fast-moving or unreliably tracked eyes will be at or near 0.
local FEyeTrackerStereoGazeData = {}
