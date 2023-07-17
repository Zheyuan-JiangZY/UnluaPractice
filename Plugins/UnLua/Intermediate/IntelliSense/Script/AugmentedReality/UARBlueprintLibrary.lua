---@class UARBlueprintLibrary : UBlueprintFunctionLibrary
local UARBlueprintLibrary = {}

---Given a pinned \c ComponentToUnpin, remove its attachment to the real world.
---@param ComponentToUnpin USceneComponent
function UARBlueprintLibrary.UnpinComponent(ComponentToUnpin) end

---Starts or stops a battery intensive service on device.
---@param bOnOff boolean
---@param CaptureType EARCaptureType
---@return boolean
function UARBlueprintLibrary.ToggleARCapture(bOnOff, CaptureType) end

---Stop a running Augmented Reality session and clear any state.
function UARBlueprintLibrary.StopARSession() end

---Begin a new Augmented Reality session. Subsequently, use the \c GetARSessionStatus() function to figure out the status of the session.
---@param SessionConfig UARSessionConfig
function UARBlueprintLibrary.StartARSession(SessionConfig) end

---Enable or disable Mixed Reality Capture camera.
---@param bOnOff boolean
function UARBlueprintLibrary.SetEnabledXRCamera(bOnOff) end

---Helper function that modifies the alignment transform scale so that virtual content in the world space appears to be "scaled".
---Note that ultimately the scaling effect is achieved through modifying the translation of the camera:
---moving the camera further away from the origin makes objects appear to be smaller, and vice versa.
---@param InWorldScale number
function UARBlueprintLibrary.SetARWorldScale(InWorldScale) end

---For a point P in the AR local space, whose location and rotation are "OriginLocation" and "OriginRotation" in the world space
---modify the alignment transform so that the same point P will be transformed to the origin in the world space.
---@param OriginLocation FVector
---@param OriginRotation FRotator
---@param bIsTransformInWorldSpace boolean @[opt] 
---@param bMaintainUpDirection boolean @[opt] 
function UARBlueprintLibrary.SetARWorldOriginLocationAndRotation(OriginLocation, OriginRotation, bIsTransformInWorldSpace, bMaintainUpDirection) end

---Set a transform that will be applied to the tracking space. This effectively moves any camera
---possessed by the Augmented Reality system such that it is pointing at a different spot
---in Unreal's World Space. This is often done to support AR scenarios that rely on static
---geometry and/or lighting.
---Note: any movable components that are pinned will appear to stay in place, while anything
---not pinned or is not movable (static or stationary) will appear to move.
---\see PinComponent
---\see PinComponentToTraceResult
---@param InAlignmentTransform FTransform
function UARBlueprintLibrary.SetAlignmentTransform(InAlignmentTransform) end

---Save an ARPin to local store
---@param InSaveName string
---@param InPin UARPin
---@return boolean
function UARBlueprintLibrary.SaveARPinToLocalStore(InSaveName, InPin) end

---Change screen size of Mixed Reality Capture camera.
---@param InSize FIntPoint
---@return FIntPoint
function UARBlueprintLibrary.ResizeXRCamera(InSize) end

---Remove a pin such that it no longer updates the associated component.
---@param PinToRemove UARPin
function UARBlueprintLibrary.RemovePin(PinToRemove) end

---Remove an ARPin from the local store
---@param InSaveName string
function UARBlueprintLibrary.RemoveARPinFromLocalStore(InSaveName) end

---Remove all ARPins from the local store
function UARBlueprintLibrary.RemoveAllARPinsFromLocalStore() end

---A convenient version of \c PinComponent() that can be used in conjunction
---with a result of a \c LineTraceTrackedObjects call.
---@param ComponentToPin USceneComponent
---@param TraceResult FARTraceResult
---@param DebugName string @[opt] 
---@return UARPin
function UARBlueprintLibrary.PinComponentToTraceResult(ComponentToPin, TraceResult, DebugName) end

---Associate a component with an ARPin, so that its transform will be updated by the pin.  Any previously associated component will be detached.
---@param ComponentToPin USceneComponent
---@param Pin UARPin
---@return boolean
function UARBlueprintLibrary.PinComponentToARPin(ComponentToPin, Pin) end

---Pin an Unreal Component to a location in tracking spce (i.e. the real world).
---                              a physical location where the component should be pinned.
---                              AR system; any correction to the position of this geometry
---                              will be applied to the pinned component.
---                              pin is being drawn for debugging purposes.
---        location and optionally to the \c TrackedGeometry.
---@param ComponentToPin USceneComponent
---@param PinToWorldTransform FTransform
---@param TrackedGeometry UARTrackedGeometry @[opt] 
---@param DebugName string @[opt] 
---@return UARPin
function UARBlueprintLibrary.PinComponent(ComponentToPin, PinToWorldTransform, TrackedGeometry, DebugName) end

---Pause a running Augmented Reality session without clearing existing state.
function UARBlueprintLibrary.PauseARSession() end

---Load all ARPins from local save
---Note: Multiple loads of a saved pin may result in duplicate pins OR overwritten pins.  It is reccomended to only load once.
---@return TMap_string__UARPin_
function UARBlueprintLibrary.LoadARPinsFromLocalStore() end

---Perform a line trace against any real-world geometry as tracked by the AR system.
---@param Start FVector
---@param End FVector
---@param bTestFeaturePoints boolean @[opt] 
---@param bTestGroundPlane boolean @[opt] 
---@param bTestPlaneExtents boolean @[opt] 
---@param bTestPlaneBoundaryPolygon boolean @[opt] 
---@return TArray_FARTraceResult_
function UARBlueprintLibrary.LineTraceTrackedObjects3D(Start, End, bTestFeaturePoints, bTestGroundPlane, bTestPlaneExtents, bTestPlaneBoundaryPolygon) end

---Perform a line trace against any real-world geometry as tracked by the AR system.
---@param ScreenCoord FVector2D
---@param bTestFeaturePoints boolean @[opt] 
---@param bTestGroundPlane boolean @[opt] 
---@param bTestPlaneExtents boolean @[opt] 
---@param bTestPlaneBoundaryPolygon boolean @[opt] 
---@return TArray_FARTraceResult_
function UARBlueprintLibrary.LineTraceTrackedObjects(ScreenCoord, bTestFeaturePoints, bTestGroundPlane, bTestPlaneExtents, bTestPlaneBoundaryPolygon) end

---Test whether this type of session is supported by the current Augmented Reality platform.
---e.g. is your device capable of doing positional tracking or orientation only?
---@param SessionType EARSessionType
---@return boolean
function UARBlueprintLibrary.IsSessionTypeSupported(SessionType) end

---
---@param SessionType EARSessionType
---@param SessionTrackingFeature EARSessionTrackingFeature
---@return boolean
function UARBlueprintLibrary.IsSessionTrackingFeatureSupported(SessionType, SessionTrackingFeature) end

---
---@param SessionType EARSessionType
---@param SceneReconstructionMethod EARSceneReconstruction
---@return boolean
function UARBlueprintLibrary.IsSceneReconstructionSupported(SessionType, SceneReconstructionMethod) end

---Checks if the current device can support AR
---@return boolean
function UARBlueprintLibrary.IsARSupported() end

---Is ARPin Local Store Supported
---@return boolean
function UARBlueprintLibrary.IsARPinLocalStoreSupported() end

---Is ARPin Local Store Ready
---@return boolean
function UARBlueprintLibrary.IsARPinLocalStoreReady() end

---
---@return EARWorldMappingState
function UARBlueprintLibrary.GetWorldMappingStatus() end

---
---@return EARTrackingQualityReason
function UARBlueprintLibrary.GetTrackingQualityReason() end

---
---@return EARTrackingQuality
function UARBlueprintLibrary.GetTrackingQuality() end

---
---@param SessionType EARSessionType
---@return TArray_FARVideoFormat_
function UARBlueprintLibrary.GetSupportedVideoFormats(SessionType) end

---
---@return UARSessionConfig
function UARBlueprintLibrary.GetSessionConfig() end

---
---@return TArray_FVector_
function UARBlueprintLibrary.GetPointCloud() end

---@return UARTexture
function UARBlueprintLibrary.GetPersonSegmentationImage() end

---@return UARTexture
function UARBlueprintLibrary.GetPersonSegmentationDepthImage() end

---Try to determine the classification of the object at a world space location
---@param InWorldLocation FVector
---@param OutClassification EARObjectClassification @[out] 
---@param OutClassificationLocation FVector @[out] 
---@param MaxLocationDiff number @[opt] 
---@return boolean
function UARBlueprintLibrary.GetObjectClassificationAtLocation(InWorldLocation, OutClassification, OutClassificationLocation, MaxLocationDiff) end

---
---@return integer
function UARBlueprintLibrary.GetNumberOfTrackedFacesSupported() end

---An AugmentedReality session can be configured to provide light estimates.
---The specific approach to light estimation can be configured by the \c UARSessionConfig
---specified during \c StartARSession(). This function assumes that you will cast
---the returned \c UARLightEstimate to a derived type corresponding to your
---session config.
---@return UARLightEstimate
function UARBlueprintLibrary.GetCurrentLightEstimate() end

---
---@param OutCameraIntrinsics FARCameraIntrinsics @[out] 
---@return boolean
function UARBlueprintLibrary.GetCameraIntrinsics(OutCameraIntrinsics) end

---@return UARTextureCameraImage
function UARBlueprintLibrary.GetCameraImage() end

---@return UARTextureCameraDepth
function UARBlueprintLibrary.GetCameraDepth() end

---
---@return number
function UARBlueprintLibrary.GetARWorldScale() end

---
---@param TextureType EARTextureType
---@return UARTexture
function UARBlueprintLibrary.GetARTexture(TextureType) end

---It is intended that you check the status of the Augmented Reality session on every frame and take action accordingly.
---e.g. if the session stopped for an unexpected reason, you might give the user a prompt to re-start the session
---@return FARSessionStatus
function UARBlueprintLibrary.GetARSessionStatus() end

---@return TArray_UARTrackedPose_
function UARBlueprintLibrary.GetAllTrackedPoses() end

---@return TArray_UARTrackedPoint_
function UARBlueprintLibrary.GetAllTrackedPoints() end

---@return TArray_UARPlaneGeometry_
function UARBlueprintLibrary.GetAllTrackedPlanes() end

---@return TArray_UARTrackedImage_
function UARBlueprintLibrary.GetAllTrackedImages() end

---@return TArray_UAREnvironmentCaptureProbe_
function UARBlueprintLibrary.GetAllTrackedEnvironmentCaptureProbes() end

---
---@return TArray_FARPose2D_
function UARBlueprintLibrary.GetAllTracked2DPoses() end

---Get a list of all the \c UARPin objects that the Augmented Reality session is currently using to connect virtual objects to real-world, tracked locations.
---@return TArray_UARPin_
function UARBlueprintLibrary.GetAllPins() end

---
---@param GeometryClass TSubclassOf_UARTrackedGeometry_
---@return TArray_UARTrackedGeometry_
function UARBlueprintLibrary.GetAllGeometriesByClass(GeometryClass) end

---
---@return TArray_UARTrackedGeometry_
function UARBlueprintLibrary.GetAllGeometries() end

---
---@return FTransform
function UARBlueprintLibrary.GetAlignmentTransform() end

---
---@param PointName string
---@return TArray_UARTrackedPoint_
function UARBlueprintLibrary.FindTrackedPointsByName(PointName) end

---Given some real-world geometry being tracked by the Augmented Reality system, draw it on the screen for debugging purposes (rudimentary)
---@param TrackedGeometry UARTrackedGeometry
---@param WorldContextObject UObject
---@param Color FLinearColor @[opt] 
---@param OutlineThickness number @[opt] 
---@param PersistForSeconds number @[opt] 
function UARBlueprintLibrary.DebugDrawTrackedGeometry(TrackedGeometry, WorldContextObject, Color, OutlineThickness, PersistForSeconds) end

---Given a \c UARPin, draw it for debugging purposes.
---@param ARPin UARPin
---@param WorldContextObject UObject
---@param Color FLinearColor @[opt] 
---@param Scale number @[opt] 
---@param PersistForSeconds number @[opt] 
function UARBlueprintLibrary.DebugDrawPin(ARPin, WorldContextObject, Color, Scale, PersistForSeconds) end

---Alignment helpers
---@param StartPoints TArray_FVector_
---@param EndPoints TArray_FVector_
---@param ClosestIntersection FVector @[out] 
function UARBlueprintLibrary.CalculateClosestIntersection(StartPoints, EndPoints, ClosestIntersection) end

---Computes a transform that aligns two coordinate systems. Requires the transform of the same known point in each coordinate system.
---@param TransformInFirstCoordinateSystem FTransform
---@param TransformInSecondCoordinateSystem FTransform
---@param AlignmentTransform FTransform @[out] 
function UARBlueprintLibrary.CalculateAlignmentTransform(TransformInFirstCoordinateSystem, TransformInSecondCoordinateSystem, AlignmentTransform) end

---Manually add a tracked point with name and world transform.
---Note that this is an async operation - the added point won't be available until a few frames later.
---@param WorldTransform FTransform
---@param PointName string
---@param bDeletePointsWithSameName boolean @[opt] 
---@return boolean
function UARBlueprintLibrary.AddTrackedPointWithName(WorldTransform, PointName, bDeletePointsWithSameName) end

---Create an ARCandidateImage object and add it to the ARCandidateImageList of the given \c UARSessionConfig object.
---Note that you need to restart the AR session with the \c UARSessionConfig you are adding to to make the change take effect.
---On ARCore platform, you can leave the PhysicalWidth to 0 if you don't know the physical size of the image or
---the physical size is dynamic. And this function takes time to perform non-trivial image processing (20ms - 30ms),
---and should be run on a background thread.
---               Return nullptr otherwise.
---@param SessionConfig UARSessionConfig
---@param CandidateTexture UTexture2D
---@param FriendlyName string
---@param PhysicalWidth number
---@return UARCandidateImage
function UARBlueprintLibrary.AddRuntimeCandidateImage(SessionConfig, CandidateTexture, FriendlyName, PhysicalWidth) end

---Adds an environment capture probe to the ar world
---@param Location FVector
---@param Extent FVector
---@return boolean
function UARBlueprintLibrary.AddManualEnvironmentCaptureProbe(Location, Extent) end

