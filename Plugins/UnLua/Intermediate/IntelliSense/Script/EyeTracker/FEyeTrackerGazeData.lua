---Represents a unified gaze ray that incorporates both eyes.
---@class FEyeTrackerGazeData
---@field public GazeOrigin FVector @Origin of the unified gaze ray.
---@field public GazeDirection FVector @Forward direction of the unified gaze ray.
---@field public FixationPoint FVector @Location that the eyes converge. This is the 3d point where the tracked viewer is looking.
---@field public ConfidenceValue number @Value [0..1] that represents confidence in the gaze ray data above. Stable, reliably tracked eyes will be at or near 1. Fast-moving or unreliably tracked eyes will be at or near 0.
local FEyeTrackerGazeData = {}
