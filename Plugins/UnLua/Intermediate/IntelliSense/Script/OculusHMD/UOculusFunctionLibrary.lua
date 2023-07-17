---@class UOculusFunctionLibrary : UBlueprintFunctionLibrary
local UOculusFunctionLibrary = {}

---Sets the HMD recenter behavior to a mode that specifies HMD recentering behavior when a
---controller recenter is performed. If the recenterMode specified is 1, the HMD will recenter
---on controller recenter; if it's 0, only the controller will recenter. Returns false if not
---supported.
---@param recenterMode boolean
function UOculusFunctionLibrary.SetReorientHMDOnControllerRecenter(recenterMode) end

---Scales the HMD position that gets added to the virtual camera position.
---@param PosScale3D FVector
function UOculusFunctionLibrary.SetPositionScale3D(PosScale3D) end

---Forces the runtime to render guardian at all times or not
---@param GuardianVisible boolean
function UOculusFunctionLibrary.SetGuardianVisibility(GuardianVisible) end

---Set the requested multiresolution level for the next frame, and whether FFR's level is now dynamic or not.
---@param level EFixedFoveatedRenderingLevel
---@param isDynamic boolean
function UOculusFunctionLibrary.SetFixedFoveatedRenderingLevel(level, isDynamic) end

---Sets the requested display frequency
---@param RequestedFrequency number
function UOculusFunctionLibrary.SetDisplayFrequency(RequestedFrequency) end

---Returns if the device is currently tracked by the runtime or not.
---@param CPULevel integer
---@param GPULevel integer
function UOculusFunctionLibrary.SetCPUAndGPULevels(CPULevel, GPULevel) end

---Set the Color Scale/Offset
---@param ColorScale FLinearColor
---@param ColorOffset FLinearColor
---@param bApplyToAllLayers boolean @[opt] 
function UOculusFunctionLibrary.SetColorScaleAndOffset(ColorScale, ColorOffset, bApplyToAllLayers) end

---Sets the target HMD to do color space correction to a specific color space
---@param ColorSpace EColorSpace
function UOculusFunctionLibrary.SetClientColorDesc(ColorSpace) end

---Sets 'base rotation' - the rotation that will be subtracted from
---the actual HMD orientation.
---The position offset might be added to current HMD position,
---effectively moving the virtual camera by the specified offset. The addition
---occurs after the HMD orientation and position are applied.
---@param BaseRot FRotator
---@param PosOffset FVector
---@param Options integer
function UOculusFunctionLibrary.SetBaseRotationAndPositionOffset(BaseRot, PosOffset, Options) end

---Sets 'base rotation' - the rotation that will be subtracted from
---the actual HMD orientation.
---Sets base position offset (in meters). The base position offset is the distance from the physical (0, 0, 0) position
---to current HMD position (bringing the (0, 0, 0) point to the current HMD position)
---Note, this vector is set by ResetPosition call; use this method with care.
---The axis of the vector are the same as in Unreal: X - forward, Y - right, Z - up.
---@param Rotation FRotator
---@param BaseOffsetInMeters FVector
---@param Options integer
function UOculusFunctionLibrary.SetBaseRotationAndBaseOffsetInMeters(Rotation, BaseOffsetInMeters, Options) end

---Returns true if the Guardian Outer Boundary is being displayed
---@return boolean
function UOculusFunctionLibrary.IsGuardianDisplayed() end

---Returns true if the Guardian has been set up by the user, false if the user is in "seated" mode and has not set up a play space.
---@return boolean
function UOculusFunctionLibrary.IsGuardianConfigured() end

---Returns if the device is currently tracked by the runtime or not.
---@param DeviceType ETrackedDeviceType
---@return boolean
function UOculusFunctionLibrary.IsDeviceTracked(DeviceType) end

---Returns true, if the system overlay is present.
---@return boolean
function UOculusFunctionLibrary.HasSystemOverlayPresent() end

---Returns true, if the app has input focus.
---@return boolean
function UOculusFunctionLibrary.HasInputFocus() end

---Returns current user profile.
---@param Profile FHmdUserProfile @[out] 
---@return boolean
function UOculusFunctionLibrary.GetUserProfile(Profile) end

---Returns true if system headset is in 3dof mode
---@return boolean
function UOculusFunctionLibrary.GetSystemHmd3DofModeEnabled() end

---Reports raw sensor data. If HMD doesn't support any of the parameters then it will be set to zero.
---@param AngularAcceleration FVector @[out] 
---@param LinearAcceleration FVector @[out] 
---@param AngularVelocity FVector @[out] 
---@param LinearVelocity FVector @[out] 
---@param TimeInSeconds number @[out] 
---@param DeviceType ETrackedDeviceType @[opt] 
function UOculusFunctionLibrary.GetRawSensorData(AngularAcceleration, LinearAcceleration, AngularVelocity, LinearVelocity, TimeInSeconds, DeviceType) end

---Grabs the current orientation and position for the HMD.  If positional tracking is not available, DevicePosition will be a zero vector
---@param DeviceRotation FRotator @[out] 
---@param DevicePosition FVector @[out] 
---@param NeckPosition FVector @[out] 
---@param bUseOrienationForPlayerCamera boolean @[opt] 
---@param bUsePositionForPlayerCamera boolean @[opt] 
---@param PositionScale FVector
function UOculusFunctionLibrary.GetPose(DeviceRotation, DevicePosition, NeckPosition, bUseOrienationForPlayerCamera, bUsePositionForPlayerCamera, PositionScale) end

---Get the intersection result between a UE4 coordinate and a guardian boundary
---@param Point FVector
---@param BoundaryType EBoundaryType
---@return FGuardianTestResult
function UOculusFunctionLibrary.GetPointGuardianIntersection(Point, BoundaryType) end

---Returns the transform of the play area rectangle, defining its position, rotation and scale to apply to a unit cube to match it with the play area.
---@return FTransform
function UOculusFunctionLibrary.GetPlayAreaTransform() end

---Get the intersection result between a tracked device (HMD or controllers) and a guardian boundary
---@param DeviceType ETrackedDeviceType
---@param BoundaryType EBoundaryType
---@return FGuardianTestResult
function UOculusFunctionLibrary.GetNodeGuardianIntersection(DeviceType, BoundaryType) end

---Returns the color space of the target HMD
---@return EColorSpace
function UOculusFunctionLibrary.GetHmdColorDesc() end

---Returns the list of points in UE world space of the requested Boundary Type
---@param BoundaryType EBoundaryType
---@param UsePawnSpace boolean @[opt] 
---@return TArray_FVector_
function UOculusFunctionLibrary.GetGuardianPoints(BoundaryType, UsePawnSpace) end

---Returns the dimensions in UE world space of the requested Boundary Type
---@param BoundaryType EBoundaryType
---@return FVector
function UOculusFunctionLibrary.GetGuardianDimensions(BoundaryType) end

---Returns the GPU utilization availability and value
---@param IsGPUAvailable boolean @[out] 
---@param GPUUtilization number @[out] 
function UOculusFunctionLibrary.GetGPUUtilization(IsGPUAvailable, GPUUtilization) end

---Returns the GPU frame time on supported mobile platforms (Go for now)
---@return number
function UOculusFunctionLibrary.GetGPUFrameTime() end

---Returns the current multiresolution level
---@return EFixedFoveatedRenderingLevel
function UOculusFunctionLibrary.GetFixedFoveatedRenderingLevel() end

---@return EOculusDeviceType
function UOculusFunctionLibrary.GetDeviceType() end

---@return string
function UOculusFunctionLibrary.GetDeviceName() end

---Returns the current display frequency
---@return number
function UOculusFunctionLibrary.GetCurrentDisplayFrequency() end

---Returns current base rotation and position offset.
---@param OutRot FRotator @[out] 
---@param OutPosOffset FVector @[out] 
function UOculusFunctionLibrary.GetBaseRotationAndPositionOffset(OutRot, OutPosOffset) end

---Returns current base rotation and base offset.
---The base offset is currently used base position offset, previously set by the
---ResetPosition or SetBasePositionOffset calls. It represents a vector that translates the HMD's position
---into (0,0,0) point, in meters.
---The axis of the vector are the same as in Unreal: X - forward, Y - right, Z - up.
---@param OutRotation FRotator @[out] 
---@param OutBaseOffsetInMeters FVector @[out] 
function UOculusFunctionLibrary.GetBaseRotationAndBaseOffsetInMeters(OutRotation, OutBaseOffsetInMeters) end

---Returns the current available frequencies
---@return TArray_number_
function UOculusFunctionLibrary.GetAvailableDisplayFrequencies() end

---Enables/disables positional tracking on devices that support it.
---@param bPositionTracking boolean
function UOculusFunctionLibrary.EnablePositionTracking(bPositionTracking) end

---Enables/disables orientation tracking on devices that support it.
---@param bOrientationTracking boolean
function UOculusFunctionLibrary.EnableOrientationTracking(bOrientationTracking) end

---Removes all the splash screens.
function UOculusFunctionLibrary.ClearLoadingSplashScreens() end

---Adds loading splash screen with parameters
---@param Texture UTexture2D
---@param TranslationInMeters FVector
---@param Rotation FRotator
---@param SizeInMeters FVector2D @[opt] 
---@param DeltaRotation FRotator
---@param bClearBeforeAdd boolean @[opt] 
function UOculusFunctionLibrary.AddLoadingSplashScreen(Texture, TranslationInMeters, Rotation, SizeInMeters, DeltaRotation, bClearBeforeAdd) end

