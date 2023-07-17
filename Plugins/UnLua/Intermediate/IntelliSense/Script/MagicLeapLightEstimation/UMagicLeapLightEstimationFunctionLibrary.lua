---@class UMagicLeapLightEstimationFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapLightEstimationFunctionLibrary = {}

---Check if a light estimation tracker has already been created.
---@return boolean
function UMagicLeapLightEstimationFunctionLibrary.IsTrackerValid() end

---Gets information about the color temperature state.
---@param ColorTemperatureState FMagicLeapLightEstimationColorTemperatureState @[out] 
---@return boolean
function UMagicLeapLightEstimationFunctionLibrary.GetColorTemperatureState(ColorTemperatureState) end

---Gets information about the ambient light sensor global state.
---@param GlobalAmbientState FMagicLeapLightEstimationAmbientGlobalState @[out] 
---@return boolean
function UMagicLeapLightEstimationFunctionLibrary.GetAmbientGlobalState(GlobalAmbientState) end

---Destroy a light estimation tracker.
function UMagicLeapLightEstimationFunctionLibrary.DestroyTracker() end

---Create a light estimation tracker.
---@return boolean
function UMagicLeapLightEstimationFunctionLibrary.CreateTracker() end

