---@class UAsyncTask_LoadXRDeviceVisComponent : UBlueprintAsyncActionBase
---@field public OnModelLoaded MulticastDelegate
---@field public OnLoadFailure MulticastDelegate
---@field private SpawnedComponent UPrimitiveComponent
local UAsyncTask_LoadXRDeviceVisComponent = {}

---@param Target AActor
---@param SystemName string
---@param DeviceName string
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
---@param XRDeviceId FXRDeviceId @[out] 
---@param NewComponent UPrimitiveComponent @[out] 
---@return UAsyncTask_LoadXRDeviceVisComponent
function UAsyncTask_LoadXRDeviceVisComponent.AddNamedDeviceVisualizationComponentAsync(Target, SystemName, DeviceName, bManualAttachment, RelativeTransform, XRDeviceId, NewComponent) end

---@param Target AActor
---@param XRDeviceId FXRDeviceId
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
---@param NewComponent UPrimitiveComponent @[out] 
---@return UAsyncTask_LoadXRDeviceVisComponent
function UAsyncTask_LoadXRDeviceVisComponent.AddDeviceVisualizationComponentAsync(Target, XRDeviceId, bManualAttachment, RelativeTransform, NewComponent) end

