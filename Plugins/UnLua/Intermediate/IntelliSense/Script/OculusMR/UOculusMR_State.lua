---Object to hold the state of MR capture and capturing camera
---@class UOculusMR_State : UObject
---@field public TrackedCamera FTrackedCamera
---@field public TrackingReferenceComponent USceneComponent @Component at the tracking origin that the camera calibration is applied to
---@field public ScalingFactor number @A multiplier on the camera distance, should be based on the scaling of the player component
---@field public ChangeCameraStateRequested boolean @Flag indicating a change in the tracked camera state for the camera actor to consume
---@field public BindToTrackedCameraIndexRequested boolean @Flag indicating a change in the tracked camera index for the camera actor to consume
local UOculusMR_State = {}

