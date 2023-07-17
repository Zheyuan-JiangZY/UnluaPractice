---Blueprint function library for autocasting from a base camera shake to a matinee camera shake.
---This prevents breaking Blueprints now that APlayerCameraManager::StartCameraShake returns the base class.
---@class UMatineeCameraShakeFunctionLibrary : UBlueprintFunctionLibrary
local UMatineeCameraShakeFunctionLibrary = {}

---@param CameraShake UCameraShakeBase
---@return UMatineeCameraShake
function UMatineeCameraShakeFunctionLibrary.Conv_MatineeCameraShake(CameraShake) end

