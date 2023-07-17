---@class UOculusInputFunctionLibrary : UBlueprintFunctionLibrary
local UOculusInputFunctionLibrary = {}

---Check if the pointer pose is a valid pose
---@param DeviceHand EOculusHandType
---@param ControllerIndex integer @[opt] 
---@return boolean
function UOculusInputFunctionLibrary.IsPointerPoseValid(DeviceHand, ControllerIndex) end

---Check if hand tracking is enabled currently
---@return boolean
function UOculusInputFunctionLibrary.IsHandTrackingEnabled() end

---Initializes physics capsules for collision and physics on the runtime mesh
---@param SkeletonType EOculusHandType
---@param HandComponent USkinnedMeshComponent
---@param WorldToMeters number @[opt] 
---@return TArray_FOculusCapsuleCollider_
function UOculusInputFunctionLibrary.InitializeHandPhysics(SkeletonType, HandComponent, WorldToMeters) end

---Get the tracking confidence of the hand
---@param DeviceHand EOculusHandType
---@param ControllerIndex integer @[opt] 
---@return ETrackingConfidence
function UOculusInputFunctionLibrary.GetTrackingConfidence(DeviceHand, ControllerIndex) end

---Get the pointer pose
---@param DeviceHand EOculusHandType
---@param ControllerIndex integer @[opt] 
---@return FTransform
function UOculusInputFunctionLibrary.GetPointerPose(DeviceHand, ControllerIndex) end

---Creates a new runtime hand skeletal mesh.
---@param HandSkeletalMesh USkeletalMesh
---@param SkeletonType EOculusHandType
---@param MeshType EOculusHandType
---@param WorldToMeters number @[opt] 
---@return boolean
function UOculusInputFunctionLibrary.GetHandSkeletalMesh(HandSkeletalMesh, SkeletonType, MeshType, WorldToMeters) end

---Get the scale of the hand
---@param DeviceHand EOculusHandType
---@param ControllerIndex integer @[opt] 
---@return number
function UOculusInputFunctionLibrary.GetHandScale(DeviceHand, ControllerIndex) end

---Get the user's dominant hand
---@param ControllerIndex integer @[opt] 
---@return EOculusHandType
function UOculusInputFunctionLibrary.GetDominantHand(ControllerIndex) end

---Get the rotation of a specific bone
---@param DeviceHand EOculusHandType
---@param BoneId EBone
---@param ControllerIndex integer @[opt] 
---@return FQuat
function UOculusInputFunctionLibrary.GetBoneRotation(DeviceHand, BoneId, ControllerIndex) end

---Get the bone name from the bone index
---@param BoneId EBone
---@return string
function UOculusInputFunctionLibrary.GetBoneName(BoneId) end

