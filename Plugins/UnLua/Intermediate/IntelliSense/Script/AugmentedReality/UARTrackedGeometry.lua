---@class UARTrackedGeometry : UObject
---@field public UniqueId FGuid
---@field protected LocalToTrackingTransform FTransform
---@field protected LocalToAlignedTrackingTransform FTransform
---@field protected TrackingState EARTrackingState
---@field protected UnderlyingMesh UMRMeshComponent @For AR systems that support arbitrary mesh geometry associated with a tracked point
---@field protected ObjectClassification EARObjectClassification @What the scene understanding system thinks this object is
---@field protected SpatialMeshUsageFlags EARSpatialMeshUsageFlags @How the scene understanding system thinks this mesh should be displayed
---@field private LastUpdateFrameNumber integer @The frame number this tracked geometry was last updated on
---@field private DebugName string @A unique name that can be used to identify the anchor for debug purposes
local UARTrackedGeometry = {}

---@return boolean
function UARTrackedGeometry:IsTracked() end

---@param InFlag EARSpatialMeshUsageFlags
---@return boolean
function UARTrackedGeometry:HasSpatialMeshUsageFlag(InFlag) end

---@return UMRMeshComponent
function UARTrackedGeometry:GetUnderlyingMesh() end

---@return EARTrackingState
function UARTrackedGeometry:GetTrackingState() end

---@return EARObjectClassification
function UARTrackedGeometry:GetObjectClassification() end

---@return string
function UARTrackedGeometry:GetName() end

---@return FTransform
function UARTrackedGeometry:GetLocalToWorldTransform() end

---@return FTransform
function UARTrackedGeometry:GetLocalToTrackingTransform() end

---@return number
function UARTrackedGeometry:GetLastUpdateTimestamp() end

---@return integer
function UARTrackedGeometry:GetLastUpdateFrameNumber() end

---@return string
function UARTrackedGeometry:GetDebugName() end

