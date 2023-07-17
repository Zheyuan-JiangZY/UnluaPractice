---The MLImageTrackerComponent will keep track of whether the image that it has been provided is currently
---visible to the headset camera.
---@class UMagicLeapImageTrackerComponent : USceneComponent
---@field public TargetImageTexture UTexture2D @The texture that will be tracked by this image tracker instance.
---@field public Name string @The name of the target. This name has to be unique across all instances of the ImageTrackerComponent class. If empty, the name of the component will be used.
---@field public LongerDimension number @LongerDimension refers to the size of the longer dimension (width or height) of the physical image target in Unreal units.
---@field public bIsStationary boolean @Set this to true to improve detection for stationary targets.
---@field public bUseUnreliablePose boolean @If false, the pose will not be updated when tracking is unreliable.
---@field public AxisOrientation EMagicLeapImageTargetOrientation
---@field public OnSetImageTargetSucceeded MulticastDelegate @Activated when the target image is successfully set.
---@field public OnSetImageTargetFailed MulticastDelegate @Activated when the target image fails to be set.
---@field public OnImageTargetFound MulticastDelegate @Activated when the target image becomes visible to the camera
---@field public OnImageTargetLost MulticastDelegate @Activated the target image becomes invisible to the camera
---@field public OnImageTargetUnreliableTracking MulticastDelegate @Activated when the target image is tracked with low confidence. The Image Tracker system will still provide a 6 DOF pose. But this pose might be inaccurate and might have jitter. When the tracking is unreliable one of the folling two events will happen quickly : Either the tracking will recover to Tracked or tracking will be lost and the status will change to NotTracked.
local UMagicLeapImageTrackerComponent = {}

---Attempts to change the currently tracked target.  Initiates an asynchronous call on a worker thread.
---When the task completes, the instigating blueprint will be notified by either a FSetImageTargetSucceeded
---or FSetImageTargetFailed event.
---@param ImageTarget UTexture2D
---@return boolean
function UMagicLeapImageTrackerComponent:SetTargetAsync(ImageTarget) end

---Attempts to remove the currently tracked target.  Initiates an asynchronous call on a worker thread.
---@return boolean
function UMagicLeapImageTrackerComponent:RemoveTargetAsync() end

