---@class UMagicLeapHandTrackingFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapHandTrackingFunctionLibrary = {}

---Sets the minimum gesture confidence to filter out the detected static gesture.
---@param Gesture EMagicLeapHandTrackingGesture
---@param Confidence number
function UMagicLeapHandTrackingFunctionLibrary.SetStaticGestureConfidenceThreshold(Gesture, Confidence) end

---Enables and disables the gestures to be detected by the gesture recognition system.
---@param StaticGesturesToActivate TArray_EMagicLeapHandTrackingGesture_
---@param KeypointsFilterLevel EMagicLeapHandTrackingKeypointFilterLevel @[opt] 
---@param GestureFilterLevel EMagicLeapHandTrackingGestureFilterLevel @[opt] 
---@param bTrackingEnabled boolean @[opt] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.SetConfiguration(StaticGesturesToActivate, KeypointsFilterLevel, GestureFilterLevel, bTrackingEnabled) end

---Whether or not the given hand is holding a control.
---@param Hand EControllerHand
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.IsHoldingControl(Hand) end

---Gets the minimum gesture confidence used to filter out the detected static gesture.
---@param Gesture EMagicLeapHandTrackingGesture
---@return number
function UMagicLeapHandTrackingFunctionLibrary.GetStaticGestureConfidenceThreshold(Gesture) end

---Get the motion source for a hand tracking key point.
---@param Hand EControllerHand
---@param Keypoint EMagicLeapHandTrackingKeypoint
---@param OutMotionSource string @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetMotionSourceForHandKeypoint(Hand, Keypoint, OutMotionSource) end

---Get a LiveLinkSourceHandle for magic leap hand tracking.
---@param SourceHandle FLiveLinkSourceHandle @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetMagicLeapHandTrackingLiveLinkSource(SourceHandle) end

---Transform of Thumb Tip.
---Note that this returns a transform in the Tracking space. To get the transform in Unreal's
---world space, use the MotioController component as a child of the XRPawn with hand set to EControllerHand::Special_5
---for the left hand secondary and EControllerHand::Special_6 for the right hand secondary.
---@param Hand EControllerHand
---@param TransformSpace EMagicLeapGestureTransformSpace
---@param Secondary FTransform @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetHandThumbTip(Hand, TransformSpace, Secondary) end

---Get the hand tracking keypoint for a motion source.
---@param MotionSource string
---@param OutKeyPoint EMagicLeapHandTrackingKeypoint @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetHandKeypointForMotionSource(MotionSource, OutKeyPoint) end

---Transform of the Index Finger Tip.
---@param Hand EControllerHand
---@param TransformSpace EMagicLeapGestureTransformSpace
---@param Pointer FTransform @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetHandIndexFingerTip(Hand, TransformSpace, Pointer) end

---Normalized position of the center of the given hand. This can be used to detect and warn the users that the hand is out of the gesture detection frame.
---@param Hand EControllerHand
---@param HandCenterNormalized FVector @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetHandCenterNormalized(Hand, HandCenterNormalized) end

---Transform of the center of the hand.  Approximately the center of the palm.
---Note that this returns a transform in world space.
---@param Hand EControllerHand
---@param HandCenter FTransform @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetHandCenter(Hand, HandCenter) end

---Get Transform for a point on the hand.
---@param Hand EControllerHand
---@param Keypoint EMagicLeapHandTrackingKeypoint
---@param TransformSpace EMagicLeapGestureTransformSpace
---@param Transform FTransform @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetGestureKeypointTransform(Hand, Keypoint, TransformSpace, Transform) end

---List of keypoints detected on the given hand.
---Note that this returns a transform in the Tracking space. To get the transform in Unreal's
---world space, use the MotioController component as a child of the XRPawn with hand set to the following.
---Special_3 - Left Index Finger Tip
---Special_5 - Left Thumb Tip
---Special_4 - Right Index Finger Tip
---Special_6 - Right Thumb Tip
---@param Hand EControllerHand
---@param Keypoints TArray_FTransform_ @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetGestureKeypoints(Hand, Keypoints) end

---The confidence level of the current gesture being performed by the given hand.
---Value is between [0, 1], 0 is low, 1 is high degree of confidence. For a NoHand, the confidence is always set to 1.
---@param Hand EControllerHand
---@param Confidence number @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetCurrentGestureConfidence(Hand, Confidence) end

---The current gesture being performed by the given hand.
---@param Hand EControllerHand
---@param Gesture EMagicLeapHandTrackingGesture @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetCurrentGesture(Hand, Gesture) end

---Gets the list of static and dynamic gestures currently set to be identified by the gesture recognition system.
---@param ActiveStaticGestures TArray_EMagicLeapHandTrackingGesture_ @[out] 
---@param KeypointsFilterLevel EMagicLeapHandTrackingKeypointFilterLevel @[out] 
---@param GestureFilterLevel EMagicLeapHandTrackingGestureFilterLevel @[out] 
---@param bTrackingEnabled boolean @[out] 
---@return boolean
function UMagicLeapHandTrackingFunctionLibrary.GetConfiguration(ActiveStaticGestures, KeypointsFilterLevel, GestureFilterLevel, bTrackingEnabled) end

