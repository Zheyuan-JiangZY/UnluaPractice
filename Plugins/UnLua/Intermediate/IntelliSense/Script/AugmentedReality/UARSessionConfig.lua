---An Unreal Data Asset that defines what features are used in the AR session.
---@class UARSessionConfig : UDataAsset
---@field public bGenerateMeshDataFromTrackedGeometry boolean @Boolean to determine whether the AR system should generate mesh data that can be used for rendering, collision, NavMesh, and more. This feature is used by OpenXR, Windows Mixed Reality, and Magic Leap.
---@field public bGenerateCollisionForMeshData boolean @Boolean to determine whether the AR system should generate collision data from the mesh data.
---@field public bGenerateNavMeshForMeshData boolean @Boolean to determine whether the AR system should generate collision data from the mesh data.
---@field public bUseMeshDataForOcclusion boolean @Boolean to determine whether the AR system should render the mesh data as occlusion meshes.
---@field public bRenderMeshDataInWireframe boolean @Boolean to determine whether the AR system should render the mesh data as wireframe.  It is reccomended to simply set the DefaultMeshMaterial to whatever is desired, including a wireframe material and ignore this setting (there is no good reason for this to exist as a special case).
---@field public bTrackSceneObjects boolean @Boolean to determine whether the AR system should track scene objects: @@see EARObjectClassification::SceneObject.
---@field public bUsePersonSegmentationForOcclusion boolean @Boolean to determine whether to use the person segmentation results for occluding virtual content. This feature is used by ARKit.
---@field public bUseSceneDepthForOcclusion boolean @Boolean to determine whether to use the scene depth information for occluding virtual content. This feature is used by ARCore and ARKit.
---@field public bUseAutomaticImageScaleEstimation boolean @Boolean to determine whether to automatically estimate and set the scale of a detected, or tracked, image. This feature is used by ARKit.
---@field public bUseStandardOnboardingUX boolean @Boolean to determine whether to use the standard onboarding UX, if the system supports it. This feature is used by ARKit.
---@field protected WorldAlignment EARWorldAlignment @
---@field protected SessionType EARSessionType @
---@field protected bHorizontalPlaneDetection boolean @Boolean to determine whether flat, horizontal surfaces are detected. This feature is used by ARCore and ARKit.
---@field protected bVerticalPlaneDetection boolean @Boolean to determine whether flat, vertical surfaces are detected. This feature is used by ARCore and ARKit.
---@field protected bEnableAutoFocus boolean @Boolean to determine whether the camera should autofocus. Autofocus can cause subtle shifts in position for small objects at further camera distance. This feature is used by ARCore and ARKit.
---@field protected LightEstimationMode EARLightEstimationMode @
---@field protected FrameSyncMode EARFrameSyncMode @
---@field protected bEnableAutomaticCameraOverlay boolean @Boolean to determine whether the AR camera feed should be drawn as an overlay. Defaults to true. This feature is used by ARCore and ARKit.
---@field protected bEnableAutomaticCameraTracking boolean @Boolean to determine whether the virtual camera should track the device movement. Defaults to true. This feature is used by ARCore and ARKit.
---@field protected bResetCameraTracking boolean @Boolean to determine whether the AR system should reset camera tracking, such as its origin and transforms, when a new AR session starts. Defaults to true. This feature is used by ARKit.
---@field protected bResetTrackedObjects boolean @Boolean to determine whether the AR system should remove any tracked objects when a new AR session starts. Defaults to true. This feature is used by ARKit.
---@field protected CandidateImages TArray<UARCandidateImage> @The list of candidate images to detect within the AR camera view. This feature is used by ARKit.
---@field protected MaxNumSimultaneousImagesTracked integer @The maximum number of images to track at the same time. Defaults to 1. This feature is used by ARKit.
---@field protected EnvironmentCaptureProbeType EAREnvironmentCaptureProbeType @
---@field protected WorldMapData TArray<integer> @A previously saved world that will be loaded when the session starts. This feature is used by ARKit.
---@field protected CandidateObjects TArray<UARCandidateObject> @The list of candidate objects to search for in the scene. This feature is used by ARKit.
---@field protected DesiredVideoFormat FARVideoFormat @The desired video format (or the default, if not supported) that this session should use if the camera is enabled. Use GetSupportedVideoFormats to get a list of device-supported formats.
---@field protected bUseOptimalVideoFormat boolean @Boolean to determine whether to automatically pick the video format that best matches the device screen size
---@field protected FaceTrackingDirection EARFaceTrackingDirection @
---@field protected FaceTrackingUpdate EARFaceTrackingUpdate @
---@field protected MaxNumberOfTrackedFaces integer @The maximum number of faces to track simultaneously. This feature is used by ARKit.
---@field protected SerializedARCandidateImageDatabase TArray<integer> @Data array for storing the cooked image database. This feature is used by ARCore.
---@field protected EnabledSessionTrackingFeature EARSessionTrackingFeature @
---@field protected SceneReconstructionMethod EARSceneReconstruction @
---@field protected PlaneComponentClass TSubclassOf<UARPlaneComponent> @
---@field protected PointComponentClass TSubclassOf<UARPointComponent> @
---@field protected FaceComponentClass TSubclassOf<UARFaceComponent> @
---@field protected ImageComponentClass TSubclassOf<UARImageComponent> @
---@field protected QRCodeComponentClass TSubclassOf<UARQRCodeComponent> @
---@field protected PoseComponentClass TSubclassOf<UARPoseComponent> @
---@field protected EnvironmentProbeComponentClass TSubclassOf<UAREnvironmentProbeComponent> @
---@field protected ObjectComponentClass TSubclassOf<UARObjectComponent> @
---@field protected MeshComponentClass TSubclassOf<UARMeshComponent> @
---@field protected GeoAnchorComponentClass TSubclassOf<UARGeoAnchorComponent> @
---@field protected DefaultMeshMaterial UMaterialInterface @The default mesh material used by the generated mesh component.
---@field protected DefaultWireframeMeshMaterial UMaterialInterface @The default mesh material used by the wireframe setting of the generated mesh component.  Note: It is recommended to ignore this wireframe feature and use a wireframe material for the DefaultMeshMaterial instead.
local UARSessionConfig = {}

---
---@return boolean
function UARSessionConfig:ShouldResetTrackedObjects() end

---
---@return boolean
function UARSessionConfig:ShouldResetCameraTracking() end

---
---@return boolean
function UARSessionConfig:ShouldRenderCameraOverlay() end

---
---@return boolean
function UARSessionConfig:ShouldEnableCameraTracking() end

---
---@return boolean
function UARSessionConfig:ShouldEnableAutoFocus() end

---
---@param WorldMapData TArray_integer_
function UARSessionConfig:SetWorldMapData(WorldMapData) end

---
---@param InSessionTrackingFeature EARSessionTrackingFeature
function UARSessionConfig:SetSessionTrackingFeatureToEnable(InSessionTrackingFeature) end

---
---@param InSceneReconstructionMethod EARSceneReconstruction
function UARSessionConfig:SetSceneReconstructionMethod(InSceneReconstructionMethod) end

---
---@param bNewValue boolean
function UARSessionConfig:SetResetTrackedObjects(bNewValue) end

---
---@param bNewValue boolean
function UARSessionConfig:SetResetCameraTracking(bNewValue) end

---
---@param InUpdate EARFaceTrackingUpdate
function UARSessionConfig:SetFaceTrackingUpdate(InUpdate) end

---
---@param InDirection EARFaceTrackingDirection
function UARSessionConfig:SetFaceTrackingDirection(InDirection) end

---
---@param bNewValue boolean
function UARSessionConfig:SetEnableAutoFocus(bNewValue) end

---
---@param NewFormat FARVideoFormat
function UARSessionConfig:SetDesiredVideoFormat(NewFormat) end

---
---@param InCandidateObjects TArray_UARCandidateObject_
function UARSessionConfig:SetCandidateObjectList(InCandidateObjects) end

---
---@return TArray_integer_
function UARSessionConfig:GetWorldMapData() end

---
---@return EARWorldAlignment
function UARSessionConfig:GetWorldAlignment() end

---
---@return EARSessionType
function UARSessionConfig:GetSessionType() end

---
---@return EARSceneReconstruction
function UARSessionConfig:GetSceneReconstructionMethod() end

---
---@return EARPlaneDetectionMode
function UARSessionConfig:GetPlaneDetectionMode() end

---
---@return integer
function UARSessionConfig:GetMaxNumSimultaneousImagesTracked() end

---
---@return EARLightEstimationMode
function UARSessionConfig:GetLightEstimationMode() end

---
---@return EARFrameSyncMode
function UARSessionConfig:GetFrameSyncMode() end

---
---@return EARFaceTrackingUpdate
function UARSessionConfig:GetFaceTrackingUpdate() end

---
---@return EARFaceTrackingDirection
function UARSessionConfig:GetFaceTrackingDirection() end

---
---@return EAREnvironmentCaptureProbeType
function UARSessionConfig:GetEnvironmentCaptureProbeType() end

---
---@return EARSessionTrackingFeature
function UARSessionConfig:GetEnabledSessionTrackingFeature() end

---
---@return FARVideoFormat
function UARSessionConfig:GetDesiredVideoFormat() end

---
---@return TArray_UARCandidateObject_
function UARSessionConfig:GetCandidateObjectList() end

---
---@return TArray_UARCandidateImage_
function UARSessionConfig:GetCandidateImageList() end

---
---@param CandidateObject UARCandidateObject
function UARSessionConfig:AddCandidateObject(CandidateObject) end

---Add a new CandidateImage to the ARSessionConfig.
---@param NewCandidateImage UARCandidateImage
function UARSessionConfig:AddCandidateImage(NewCandidateImage) end

