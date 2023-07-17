---@class UOculusMRFunctionLibrary : UBlueprintFunctionLibrary
local UOculusMRFunctionLibrary = {}

---Set the component for the OculusMR camera to track. If this is set to null, the camera will track the player pawn.
---@param Component USceneComponent
---@return boolean
function UOculusMRFunctionLibrary.SetTrackingReferenceComponent(Component) end

---Set the scaling factor for the MRC configuration. This should be a positive value set to the same scaling as the VR player pawn so that the game capture and camera video are aligned.
---@param ScalingFactor number @[opt] 
---@return boolean
function UOculusMRFunctionLibrary.SetMrcScalingFactor(ScalingFactor) end

---Check if MRC is enabled
---@return boolean
function UOculusMRFunctionLibrary.IsMrcEnabled() end

---Check if MRC is enabled and actively capturing
---@return boolean
function UOculusMRFunctionLibrary.IsMrcActive() end

---Get the component that the OculusMR camera is tracking. When this is null, the camera will track the player pawn.
---@return USceneComponent
function UOculusMRFunctionLibrary.GetTrackingReferenceComponent() end

---Get the OculusMR settings object
---@return UOculusMR_Settings
function UOculusMRFunctionLibrary.GetOculusMRSettings() end

---Get the scaling factor for the MRC configuration. Returns 0 if not available.
---@return number
function UOculusMRFunctionLibrary.GetMrcScalingFactor() end

