---@class UMagicLeapHMDFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapHMDFunctionLibrary = {}

---Set the actor whose location is used as the depth for timewarp stabilization.
---@param InStabilizationDepthActor AActor
---@param bSetFocusActor boolean @[opt] 
function UMagicLeapHMDFunctionLibrary.SetStabilizationDepthActor(InStabilizationDepthActor, bSetFocusActor) end

---Set the actor whose location is used as the focus point. The focus distance is the distance from the HMD to the focus point.
---@param InFocusActor AActor
---@param bSetStabilizationActor boolean @[opt] 
function UMagicLeapHMDFunctionLibrary.SetFocusActor(InFocusActor, bSetStabilizationActor) end

---@param InBaseRotation FRotator
function UMagicLeapHMDFunctionLibrary.SetBaseRotation(InBaseRotation) end

---@param InBasePosition FVector
function UMagicLeapHMDFunctionLibrary.SetBasePosition(InBasePosition) end

---@param InBaseOrientation FQuat
function UMagicLeapHMDFunctionLibrary.SetBaseOrientation(InBaseOrientation) end

---Notifies lifecycle that the app is ready to run (dismisses the loading logo).
---application to remain in the loading state.
---@return boolean
function UMagicLeapHMDFunctionLibrary.SetAppReady() end

---Returns true if this code is executing on the ML HMD, false otherwise (e.g. it's executing on PC)
---@return boolean
function UMagicLeapHMDFunctionLibrary.IsRunningOnMagicLeapHMD() end

---@return integer
function UMagicLeapHMDFunctionLibrary.GetPlatformAPILevel() end

---@return integer
function UMagicLeapHMDFunctionLibrary.GetMLSDKVersionRevision() end

---@return integer
function UMagicLeapHMDFunctionLibrary.GetMLSDKVersionMinor() end

---@return integer
function UMagicLeapHMDFunctionLibrary.GetMLSDKVersionMajor() end

---@return string
function UMagicLeapHMDFunctionLibrary.GetMLSDKVersion() end

---@return integer
function UMagicLeapHMDFunctionLibrary.GetMinimumAPILevel() end

---@param State FMagicLeapHeadTrackingState @[out] 
---@return boolean
function UMagicLeapHMDFunctionLibrary.GetHeadTrackingState(State) end

---Get map events.
---A developer must be aware of certain events that can occur under degenerative conditions
---in order to cleanly handle it. The most important event to be aware of is when a map changes.
---In the case that a new map session begins, or recovery fails, all formerly cached transform
---and world reconstruction data (raycast, planes, mesh) is invalidated and must be updated.
---@param MapEvents TSet_EMagicLeapHeadTrackingMapEvent_ @[out] 
---@return boolean
function UMagicLeapHMDFunctionLibrary.GetHeadTrackingMapEvents(MapEvents) end

---@param PerformanceInfo FMagicLeapGraphicsClientPerformanceInfo @[out] 
---@return boolean
function UMagicLeapHMDFunctionLibrary.GetGraphicsClientPerformanceInfo(PerformanceInfo) end

