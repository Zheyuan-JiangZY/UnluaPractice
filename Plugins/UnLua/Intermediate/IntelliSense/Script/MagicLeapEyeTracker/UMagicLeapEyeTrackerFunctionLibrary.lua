---@class UMagicLeapEyeTrackerFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapEyeTrackerFunctionLibrary = {}

---@param BlinkState FMagicLeapEyeBlinkState @[out] 
---@return boolean
function UMagicLeapEyeTrackerFunctionLibrary.GetEyeBlinkState(BlinkState) end

---@return EMagicLeapEyeTrackingCalibrationStatus
function UMagicLeapEyeTrackerFunctionLibrary.GetCalibrationStatus() end

