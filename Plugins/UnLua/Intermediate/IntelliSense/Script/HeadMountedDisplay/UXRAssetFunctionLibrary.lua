---UXRAssetFunctionLibrary
---@class UXRAssetFunctionLibrary : UBlueprintFunctionLibrary
local UXRAssetFunctionLibrary = {}

---Spawns a render component for the specified XR device.
---NOTE: The associated XR system backend has to provide a model for this to
---      work - if one is not available for the specific device, then this
---      will fail and return an invalid (null) object.
---@param Target AActor
---@param SystemName string
---@param DeviceName string
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
---@param XRDeviceId FXRDeviceId @[out] 
---@return UPrimitiveComponent
function UXRAssetFunctionLibrary.AddNamedDeviceVisualizationComponentBlocking(Target, SystemName, DeviceName, bManualAttachment, RelativeTransform, XRDeviceId) end

---Spawns a render component for the specified XR device.
---NOTE: The associated XR system backend has to provide a model for this to
---      work - if one is not available for the specific device, then this
---      will fail and return an invalid (null) object.
---@param Target AActor
---@param XRDeviceId FXRDeviceId
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
---@return UPrimitiveComponent
function UXRAssetFunctionLibrary.AddDeviceVisualizationComponentBlocking(Target, XRDeviceId, bManualAttachment, RelativeTransform) end

