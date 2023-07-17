---@class UHeadMountedDisplayFunctionLibrary : UBlueprintFunctionLibrary
local UHeadMountedDisplayFunctionLibrary = {}

---Called after calibration to attempt to pull the internal tracker (e.g. HMD tracking) in line with the external tracker
---(e.g. mocap tracker).  This will set the internal tracker's base offset and rotation to match and realign the two systems.
---This can be called every tick, or whenever realignment is desired.  Note that this may cause choppy movement if the two
---systems diverge relative to each other, or a big jump if called infrequently when there has been significant drift
---@param ExternalTrackingTransform FTransform
function UHeadMountedDisplayFunctionLibrary.UpdateExternalTrackingHMDPosition(ExternalTrackingTransform) end

---Hook up a delegate to get an OpenXR action event with action time.
---For a boolean input the the 'value' parameter of the delegate will be 1.0 for a press and 0.0 for a release.  For an analog input the value's range is action and platform specific.
---Use in combination with GetControllerTransformForTime for potentially improved temporal transform precision and velocity data.
---"Left Grip" is an example of a valid ActionName.
---Note: this is likely to be replaced by native support for event times in the core input system at some time in the future.
---@param ActionName string
---@param InDelegate Delegate
function UHeadMountedDisplayFunctionLibrary.SetXRTimedInputActionDelegate(ActionName, InDelegate) end

---@param InDisconnectedDelegate Delegate
function UHeadMountedDisplayFunctionLibrary.SetXRDisconnectDelegate(InDisconnectedDelegate) end

---Sets the World to Meters scale, which changes the scale of the world as perceived by the player
---@param WorldContext UObject
---@param NewScale number @[opt] 
function UHeadMountedDisplayFunctionLibrary.SetWorldToMetersScale(WorldContext, NewScale) end

---Sets current tracking origin type (eye level or floor level).
---@param Origin integer
function UHeadMountedDisplayFunctionLibrary.SetTrackingOrigin(Origin) end

---Change the texture displayed on the social screen
---@param InTexture UTexture
function UHeadMountedDisplayFunctionLibrary.SetSpectatorScreenTexture(InTexture) end

---Setup the layout for ESpectatorScreenMode::TexturePlusEye.
---@param EyeRectMin FVector2D
---@param EyeRectMax FVector2D
---@param TextureRectMin FVector2D
---@param TextureRectMax FVector2D
---@param bDrawEyeFirst boolean @[opt] 
---@param bClearBlack boolean @[opt] 
---@param bUseAlpha boolean @[opt] 
function UHeadMountedDisplayFunctionLibrary.SetSpectatorScreenModeTexturePlusEyeLayout(EyeRectMin, EyeRectMax, TextureRectMin, TextureRectMax, bDrawEyeFirst, bClearBlack, bUseAlpha) end

---Sets the social screen mode.
---@param Mode ESpectatorScreenMode
function UHeadMountedDisplayFunctionLibrary.SetSpectatorScreenMode(Mode) end

---Sets near and far clipping planes (NCP and FCP) for stereo rendering. Similar to 'stereo ncp= fcp' console command, but NCP and FCP set by this
---call won't be saved in .ini file.
---@param Near number
---@param Far number
function UHeadMountedDisplayFunctionLibrary.SetClippingPlanes(Near, Far) end

---Resets orientation by setting roll and pitch to 0, assuming that current yaw is forward direction and assuming
---current position as a 'zero-point' (for positional tracking).
---@param Yaw number @[opt] 
---@param Options integer @[opt] 
function UHeadMountedDisplayFunctionLibrary.ResetOrientationAndPosition(Yaw, Options) end

---Return true if spectator screen mode control is available.
---@return boolean
function UHeadMountedDisplayFunctionLibrary.IsSpectatorScreenModeControllable() end

---Returns true, if HMD is in low persistence mode. 'false' otherwise.
---@return boolean
function UHeadMountedDisplayFunctionLibrary.IsInLowPersistenceMode() end

---Returns whether or not we are currently using the head mounted display.
---@return boolean
function UHeadMountedDisplayFunctionLibrary.IsHeadMountedDisplayEnabled() end

---Returns whether or not the HMD hardware is connected and ready to use.  It may or may not actually be in use.
---@return boolean
function UHeadMountedDisplayFunctionLibrary.IsHeadMountedDisplayConnected() end

---Cross XR-System query that returns whether the specified device is tracked or not.
---@param XRDeviceId FXRDeviceId
---@return boolean
function UHeadMountedDisplayFunctionLibrary.IsDeviceTracking(XRDeviceId) end

---If the HMD supports positional tracking, whether or not we are currently being tracked
---@return boolean
function UHeadMountedDisplayFunctionLibrary.HasValidTrackingPosition() end

---Returns the flags for the device, so scripts can modify their behaviour appropriately
---@return integer
function UHeadMountedDisplayFunctionLibrary.GetXRSystemFlags() end

---Returns the World to Meters scale, which corresponds to the scale of the world as perceived by the player
---@param WorldContext UObject
---@return number
function UHeadMountedDisplayFunctionLibrary.GetWorldToMetersScale(WorldContext) end

---Returns current state of VR focus.
---@param bUseFocus boolean @[out] 
---@param bHasFocus boolean @[out] 
function UHeadMountedDisplayFunctionLibrary.GetVRFocusState(bUseFocus, bHasFocus) end

---Returns name of tracking system specific version string.
---@return string
function UHeadMountedDisplayFunctionLibrary.GetVersionString() end

---Returns a transform that can be used to convert points from tracking space to world space.
---Does NOT include the set WorldToMeters scale, as that is added in by the backing XR system to their tracking space poses.
---@param WorldContext UObject
---@return FTransform
function UHeadMountedDisplayFunctionLibrary.GetTrackingToWorldTransform(WorldContext) end

---If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking.
---This allows an in-game representation of the legal positional tracking range.  All values will be zeroed if the sensor is not available or the HMD does not support it.
---@param Origin FVector @[out] 
---@param Rotation FRotator @[out] 
---@param LeftFOV number @[out] 
---@param RightFOV number @[out] 
---@param TopFOV number @[out] 
---@param BottomFOV number @[out] 
---@param Distance number @[out] 
---@param NearPlane number @[out] 
---@param FarPlane number @[out] 
---@param IsActive boolean @[out] 
---@param Index integer @[opt] 
function UHeadMountedDisplayFunctionLibrary.GetTrackingSensorParameters(Origin, Rotation, LeftFOV, RightFOV, TopFOV, BottomFOV, Distance, NearPlane, FarPlane, IsActive, Index) end

---Returns current tracking origin type (eye level or floor level).
---@return integer
function UHeadMountedDisplayFunctionLibrary.GetTrackingOrigin() end

---@return number
function UHeadMountedDisplayFunctionLibrary.GetScreenPercentage() end

---If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking.
---This allows an in-game representation of the legal positional tracking range.  All values will be zeroed if the sensor is not available or the HMD does not support it.
---@param CameraOrigin FVector @[out] 
---@param CameraRotation FRotator @[out] 
---@param HFOV number @[out] 
---@param VFOV number @[out] 
---@param CameraDistance number @[out] 
---@param NearPlane number @[out] 
---@param FarPlane number @[out] 
function UHeadMountedDisplayFunctionLibrary.GetPositionalTrackingCameraParameters(CameraOrigin, CameraRotation, HFOV, VFOV, CameraDistance, NearPlane, FarPlane) end

---Get the bounds of the area where the user can freely move while remaining tracked centered around the specified origin
---@param Origin integer @[opt] 
---@return FVector2D
function UHeadMountedDisplayFunctionLibrary.GetPlayAreaBounds(Origin) end

---Returns the current VR pixel density. Pixel density sets the VR render
---target texture size as a factor of recommended texture size. The recommended
---texture size is the size that will result in no under sampling in most
---distorted area of the view when computing the final image to be displayed
---on the device by the runtime compositor.
---@return number
function UHeadMountedDisplayFunctionLibrary.GetPixelDensity() end

---Grabs the current orientation and position for the HMD.  If positional tracking is not available, DevicePosition will be a zero vector
---@param DeviceRotation FRotator @[out] 
---@param DevicePosition FVector @[out] 
function UHeadMountedDisplayFunctionLibrary.GetOrientationAndPosition(DeviceRotation, DevicePosition) end

---If the HMD has multiple positional tracking sensors, return a total number of them currently connected.
---@return integer
function UHeadMountedDisplayFunctionLibrary.GetNumOfTrackingSensors() end

---Cross XR-System query that returns critical information about the motion controller (position, orientation, hand/finger position)
---@param WorldContext UObject
---@param Hand EControllerHand
---@param MotionControllerData FXRMotionControllerData @[out] 
function UHeadMountedDisplayFunctionLibrary.GetMotionControllerData(WorldContext, Hand, MotionControllerData) end

---Returns the worn state of the device.
---@return integer
function UHeadMountedDisplayFunctionLibrary.GetHMDWornState() end

---Returns the name of the device, so scripts can modify their behaviour appropriately
---@return string
function UHeadMountedDisplayFunctionLibrary.GetHMDDeviceName() end

---Cross XR-System query that returns critical information about the HMD display (position, orientation, device name)
---@param WorldContext UObject
---@param HMDData FXRHMDData @[out] 
function UHeadMountedDisplayFunctionLibrary.GetHMDData(WorldContext, HMDData) end

---Cross XR-System query that returns a specific device's position and orientation in world space.
---@param WorldContext UObject
---@param XRDeviceId FXRDeviceId
---@param bIsTracked boolean @[out] 
---@param Orientation FRotator @[out] 
---@param bHasPositionalTracking boolean @[out] 
---@param Position FVector @[out] 
function UHeadMountedDisplayFunctionLibrary.GetDeviceWorldPose(WorldContext, XRDeviceId, bIsTracked, Orientation, bHasPositionalTracking, Position) end

---Cross XR-System query that returns a specific device's tracked position and orientation (in tracking space).
---@param XRDeviceId FXRDeviceId
---@param bIsTracked boolean @[out] 
---@param Orientation FRotator @[out] 
---@param bHasPositionalTracking boolean @[out] 
---@param Position FVector @[out] 
function UHeadMountedDisplayFunctionLibrary.GetDevicePose(XRDeviceId, bIsTracked, Orientation, bHasPositionalTracking, Position) end

---Get the transform and potentially velocity data at a specified time near the current frame in unreal world space.
---This is intended for use with sub-frame input action timing data from SetXRTimedInputActionDelegate, or future support for timestamps in the core input system.
---The valid time window is platform dependent, but the intention per OpenXR is to fetch transforms for times from, at most, the previous few frames in the past or future.
---The OpenXR spec suggests that 50ms in the past should return an accurate result.  There is no guarantee for the future, but the underlying system is likely to have been
---designed to predict out to about 50ms as well.
---On some platforms this  will always just return a cached position and rotation, ignoring time.  bTimeWasUsed will be false in that case.
---@param WorldContext UObject
---@param ControllerIndex integer
---@param MotionSource string
---@param Time FTimespan
---@param bTimeWasUsed boolean @[out] 
---@param Orientation FRotator @[out] 
---@param Position FVector @[out] 
---@param bProvidedLinearVelocity boolean @[out] 
---@param LinearVelocity FVector @[out] 
---@param bProvidedAngularVelocity boolean @[out] 
---@param AngularVelocityRadPerSec FVector @[out] 
---@return boolean
function UHeadMountedDisplayFunctionLibrary.GetControllerTransformForTime(WorldContext, ControllerIndex, MotionSource, Time, bTimeWasUsed, Orientation, Position, bProvidedLinearVelocity, LinearVelocity, bProvidedAngularVelocity, AngularVelocityRadPerSec) end

---Cross XR-System query that will list all XR devices currently being tracked.
---@param SystemId string @[opt] 
---@param DeviceType EXRTrackedDeviceType @[opt] 
---@return TArray_FXRDeviceId_
function UHeadMountedDisplayFunctionLibrary.EnumerateTrackedDevices(SystemId, DeviceType) end

---Switches between low and full persistence modes.
---@param bEnable boolean
function UHeadMountedDisplayFunctionLibrary.EnableLowPersistenceMode(bEnable) end

---Switches to/from using HMD and stereo rendering.
---@param bEnable boolean
---@return boolean
function UHeadMountedDisplayFunctionLibrary.EnableHMD(bEnable) end

---Disconnect remote AR Device
function UHeadMountedDisplayFunctionLibrary.DisconnectRemoteXRDevice() end

---Connect to a remote device
---@param IpAddress string
---@param BitRate integer
---@return integer
function UHeadMountedDisplayFunctionLibrary.ConnectRemoteXRDevice(IpAddress, BitRate) end

---Specify which gestures to capture.
---@param GestureConfig FXRGestureConfig
---@return boolean
function UHeadMountedDisplayFunctionLibrary.ConfigureGestures(GestureConfig) end

---/ Clear a delegate to get an OpenXR action event with action time.
---@param ActionPath string
function UHeadMountedDisplayFunctionLibrary.ClearXRTimedInputActionDelegate(ActionPath) end

---Called to calibrate the offset transform between an external tracking source and the internal tracking source
---(e.g. mocap tracker to and HMD tracker).  This should be called once per session, or when the physical relationship
---between the external tracker and internal tracker changes (e.g. it was bumped or reattached).  After calibration,
---calling UpdateExternalTrackingPosition will try to correct the internal tracker to the calibrated offset to prevent
---drift between the two systems
---@param ExternalTrackingTransform FTransform
function UHeadMountedDisplayFunctionLibrary.CalibrateExternalTrackingToHMD(ExternalTrackingTransform) end

---Breaks an XR key apart into the interaction profile, handedness, motion source, indentifier and component.
---@param InKey FKey
---@param InteractionProfile string @[out] 
---@param Hand EControllerHand @[out] 
---@param MotionSource string @[out] 
---@param Indentifier string @[out] 
---@param Component string @[out] 
function UHeadMountedDisplayFunctionLibrary.BreakKey(InKey, InteractionProfile, Hand, MotionSource, Indentifier, Component) end

