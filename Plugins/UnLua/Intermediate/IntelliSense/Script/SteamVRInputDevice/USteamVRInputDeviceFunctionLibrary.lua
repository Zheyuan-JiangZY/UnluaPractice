---* SteamVR Input Extended Functions
---* Functions and properties defined here are safe for developer use
---@class USteamVRInputDeviceFunctionLibrary : UBlueprintFunctionLibrary
local USteamVRInputDeviceFunctionLibrary = {}

---Show the current binding of a given action in the user's HMD
---@param SteamVRAction FSteamVRAction
---@param SteamVRActionSet FSteamVRActionSet
function USteamVRInputDeviceFunctionLibrary.ShowSteamVR_ActionOrigin(SteamVRAction, SteamVRActionSet) end

---Shows all current bindings for the current controller in the user's headset
function USteamVRInputDeviceFunctionLibrary.ShowAllSteamVR_ActionOrigins() end

---Sets the the current value of the global PredictedSecondsFromNow to use in any Get Pose Action Data calls (i.e. Getting controller transform)
---A value of -9999.f will trigger a GetPoseActionDataForNextFrame, otherwise GetPoseActionRelativeToNow will be called with this value
---@param NewValue number
---@return number
function USteamVRInputDeviceFunctionLibrary.SetSteamVR_GlobalPredictedSecondsFromNow(NewValue) end

---Set whether to use skeleton pose or the raw controller pose for the orientation and position of the motion controller
---@param bUseSkeletonPose boolean
function USteamVRInputDeviceFunctionLibrary.SetPoseSource(bUseSkeletonPose) end

---Tell SteamVR Whether or not to retrieve Curls and Splay values per frame
---@param NewLeftHandState boolean
---@param NewRightHandState boolean
function USteamVRInputDeviceFunctionLibrary.SetCurlsAndSplaysState(NewLeftHandState, NewRightHandState) end

---Sets the zero pose for the seated tracker coordinate system to the current position and yaw of the HMD.
---After this call, calls that pass TrackingUniverseSeated as the origin will be relative to this new zero pose.
---NOTE: This function overrides the user's previously saved seated zero pose and should only be called as the result of a user action.
---Users are also able to set their seated zero pose via the SteamVR Dashboard.
---@return boolean
function USteamVRInputDeviceFunctionLibrary.ResetSeatedPosition() end

---Generate haptic feedback in the requested controller
---@param Hand ESteamVRHand
---@param StartSecondsFromNow number
---@param DurationSeconds number @[opt] 
---@param Frequency number @[opt] 
---@param Amplitude number @[opt] 
function USteamVRInputDeviceFunctionLibrary.PlaySteamVR_HapticFeedback(Hand, StartSecondsFromNow, DurationSeconds, Frequency, Amplitude) end

---Returns the user's HMD's current IPD (interpupillary distance) setting in millimetres.
---@return number
function USteamVRInputDeviceFunctionLibrary.GetUserIPD() end

---Returns information about the tracked device associated from the input source.
---@param SteamVRAction FSteamVRAction
---@param InputOriginInfo FSteamVRInputOriginInfo @[out] 
---@return boolean
function USteamVRInputDeviceFunctionLibrary.GetSteamVR_OriginTrackedDeviceInfo(SteamVRAction, InputOriginInfo) end

---Retrieve the localized name of the origin of a given action (e.g. "Left Hand Index Controller Trackpad")
---@param SteamVRAction FSteamVRAction
---@param LocalizedParts TArray_ESteamVRInputStringBits_
---@param OriginLocalizedName string @[out] 
function USteamVRInputDeviceFunctionLibrary.GetSteamVR_OriginLocalizedName(SteamVRAction, LocalizedParts, OriginLocalizedName) end

---Retrieves useful information about the SteamVR input bindings for an action.
---@param SteamVRActionHandle FSteamVRAction
---@return TArray_FSteamVRInputBindingInfo_
function USteamVRInputDeviceFunctionLibrary.GetSteamVR_InputBindingInfo(SteamVRActionHandle) end

---Returns the data for the hand transform at any point in time from current time, given a relative number of seconds
---@param Position FVector @[out] 
---@param Orientation FRotator @[out] 
---@param Hand ESteamVRHand @[opt] 
---@param PredictedSecondsFromNow number @[opt] 
---@return boolean
function USteamVRInputDeviceFunctionLibrary.GetSteamVR_HandPoseRelativeToNow(Position, Orientation, Hand, PredictedSecondsFromNow) end

---Returns the the current value of the global PredictedSecondsFromNow use in any Get Pose Action Data calls (i.e. Getting controller transform)
---A value of -9999.f triggers a GetPoseActionDataForNextFrame, otherwise GetPoseActionRelativeToNow is called with this value
---@return number
function USteamVRInputDeviceFunctionLibrary.GetSteamVR_GlobalPredictedSecondsFromNow() end

---Retrieve the input action sets for this project
---@param SteamVRActionSets TArray_FSteamVRActionSet_ @[out] 
function USteamVRInputDeviceFunctionLibrary.GetSteamVR_ActionSetArray(SteamVRActionSets) end

---Retrieve the input actions for this project
---@param SteamVRActions TArray_FSteamVRAction_ @[out] 
function USteamVRInputDeviceFunctionLibrary.GetSteamVR_ActionArray(SteamVRActions) end

---Retrieve the live skeletal input bone values from SteamVR
---@param LeftHand FSteamVRSkeletonTransform @[out] 
---@param RightHand FSteamVRSkeletonTransform @[out] 
---@param bWithController boolean @[opt] 
function USteamVRInputDeviceFunctionLibrary.GetSkeletalTransform(LeftHand, RightHand, bWithController) end

---Check Whether or not controllers attached to either hand have Skeletal Input support
---@param LeftHandState boolean @[out] 
---@param RightHandState boolean @[out] 
function USteamVRInputDeviceFunctionLibrary.GetSkeletalState(LeftHandState, RightHandState) end

---Retrieve the right hand pose information - position, orientation and velocities
---@param Position FVector @[out] 
---@param Orientation FRotator @[out] 
---@param AngularVelocity FVector @[out] 
---@param Velocity FVector @[out] 
function USteamVRInputDeviceFunctionLibrary.GetRightHandPoseData(Position, Orientation, AngularVelocity, Velocity) end

---Check whether we are using a skeleton pose or the raw controller pose for the orientation and position of the motion controller
---@param bUsingSkeletonPose boolean @[out] 
function USteamVRInputDeviceFunctionLibrary.GetPoseSource(bUsingSkeletonPose) end

---Retrieve the left hand pose information - position, orientation and velocities
---@param Position FVector @[out] 
---@param Orientation FRotator @[out] 
---@param AngularVelocity FVector @[out] 
---@param Velocity FVector @[out] 
function USteamVRInputDeviceFunctionLibrary.GetLeftHandPoseData(Position, Orientation, AngularVelocity, Velocity) end

---Get the finger curl and splay for a give hand in the current frame
---@param Hand EHand
---@param FingerCurls FSteamVRFingerCurls @[out] 
---@param FingerSplays FSteamVRFingerSplays @[out] 
---@param SummaryDataType ESkeletalSummaryDataType @[opt] 
function USteamVRInputDeviceFunctionLibrary.GetFingerCurlsAndSplays(Hand, FingerCurls, FingerSplays, SummaryDataType) end

---Check Whether or not Curls and Splay values are being retrieved per frame from the SteamVR Input System
---@param LeftHandState boolean @[out] 
---@param RightHandState boolean @[out] 
function USteamVRInputDeviceFunctionLibrary.GetCurlsAndSplaysState(LeftHandState, RightHandState) end

---Retrieve skeletal tracking level for all controllers
---@param LeftControllerFidelity EControllerFidelity @[out] 
---@param RightControllerFidelity EControllerFidelity @[out] 
function USteamVRInputDeviceFunctionLibrary.GetControllerFidelity(LeftControllerFidelity, RightControllerFidelity) end

---Find and return information about the tracked device associated from the input source.
---@param ActionName string
---@param bResult boolean @[out] 
---@param InputOriginInfo FSteamVRInputOriginInfo @[out] 
---@param ActionSet string @[opt] 
function USteamVRInputDeviceFunctionLibrary.FindSteamVR_OriginTrackedDeviceInfo(ActionName, bResult, InputOriginInfo, ActionSet) end

---Retrieves useful information about the SteamVR input bindings with a given action name and action set.
---@param ActionName string
---@param ActionSet string @[opt] 
---@return TArray_FSteamVRInputBindingInfo_
function USteamVRInputDeviceFunctionLibrary.FindSteamVR_InputBindingInfo(ActionName, ActionSet) end

---Search and show the current binding of a provided action name and action set in the user's HMD
---@param ActionName string
---@param ActionSet string @[opt] 
---@return boolean
function USteamVRInputDeviceFunctionLibrary.FindSteamVR_ActionOrigin(ActionName, ActionSet) end

---Search for a valid action matching the given action name and action set
---@param ActionName string
---@param bResult boolean @[out] 
---@param FoundAction FSteamVRAction @[out] 
---@param FoundActionSet FSteamVRActionSet @[out] 
---@param ActionSet string @[opt] 
function USteamVRInputDeviceFunctionLibrary.FindSteamVR_Action(ActionName, bResult, FoundAction, FoundActionSet, ActionSet) end

