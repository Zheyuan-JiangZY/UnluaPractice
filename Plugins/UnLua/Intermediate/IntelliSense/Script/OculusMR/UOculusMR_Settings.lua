---@class UOculusMR_Settings : UObject
---@field public ClippingReference EOculusMR_ClippingReference @Specify the distance to the camera which divide the background and foreground in MxR casting. Set it to CR_TrackingReference to use the distance to the Tracking Reference, which works better in the stationary experience. Set it to CR_Head would use the distance to the HMD, which works better in the room scale experience.
---@field public bUseTrackedCameraResolution boolean @The casting viewports would use the same resolution of the camera which used in the calibration process.
---@field public WidthPerView integer @When bUseTrackedCameraResolution is false, the width of each casting viewport
---@field public HeightPerView integer @When bUseTrackedCameraResolution is false, the height of each casting viewport
---@field public CastingLatency number @When CompositionMethod is External Composition, the latency of the casting output which could be adjusted to match the camera latency in the external composition application
---@field public BackdropColor FColor @When CompositionMethod is External Composition, the color of the backdrop in the foreground view
---@field public HandPoseStateLatency number @When CompositionMethod is Direct Composition, you could adjust this latency to delay the virtual hand movement by a small amount of time to match the camera latency
---@field public ChromaKeyColor FColor @[Green-screen removal] Chroma Key Color. Apply when CompositionMethod is DirectComposition
---@field public ChromaKeySimilarity number @[Green-screen removal] Chroma Key Similarity. Apply when CompositionMethod is DirectComposition
---@field public ChromaKeySmoothRange number @[Green-screen removal] Chroma Key Smooth Range. Apply when CompositionMethod is DirectComposition
---@field public ChromaKeySpillRange number @[Green-screen removal] Chroma Key Spill Range. Apply when CompositionMethod is DirectComposition
---@field public ExternalCompositionPostProcessEffects EOculusMR_PostProcessEffects @Set the amount of post process effects in the MR view for external composition
---@field private bIsCasting boolean @Turns MRC on and off (does not get saved to or loaded from ini)
---@field private CompositionMethod EOculusMR_CompositionMethod @ExternalComposition: The casting window includes the background and foreground view DirectComposition: The game scene would be composited with the camera frame directly
---@field private CapturingCamera EOculusMR_CameraDeviceEnum @When CompositionMethod is DirectComposition, the physical camera device which provide the frame
local UOculusMR_Settings = {}

---Turns MRC on and off
---@param val boolean
function UOculusMR_Settings:SetIsCasting(val) end

---ExternalComposition: The casting window includes the background and foreground view
---DirectComposition: The game scene would be composited with the camera frame directly
---@param val EOculusMR_CompositionMethod
function UOculusMR_Settings:SetCompositionMethod(val) end

---When CompositionMethod is DirectComposition, the physical camera device which provide the frame
---@param val EOculusMR_CameraDeviceEnum
function UOculusMR_Settings:SetCapturingCamera(val) end

---Save settings to the config file
function UOculusMR_Settings:SaveToIni() end

---Load settings from the config file
function UOculusMR_Settings:LoadFromIni() end

---Is MRC on and off
---@return boolean
function UOculusMR_Settings:GetIsCasting() end

---ExternalComposition: The casting window includes the background and foreground view
---DirectComposition: The game scene would be composited with the camera frame directly
---@return EOculusMR_CompositionMethod
function UOculusMR_Settings:GetCompositionMethod() end

---When CompositionMethod is DirectComposition, the physical camera device which provide the frame
---@return EOculusMR_CameraDeviceEnum
function UOculusMR_Settings:GetCapturingCamera() end

---@return integer
function UOculusMR_Settings:GetBindToTrackedCameraIndex() end

---Bind the casting camera to the calibrated external camera.
---(Requires a calibrated external camera)
---@param InTrackedCameraIndex integer
function UOculusMR_Settings:BindToTrackedCameraIndexIfAvailable(InTrackedCameraIndex) end

