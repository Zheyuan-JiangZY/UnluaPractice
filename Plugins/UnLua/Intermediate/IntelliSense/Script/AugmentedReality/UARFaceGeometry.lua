---@class UARFaceGeometry : UARTrackedGeometry
---@field public LookAtTarget FVector @The target the eyes are looking at
---@field public bIsTracked boolean @Whether the face is currently being tracked by the AR system
---@field private BlendShapes TMap<EARFaceBlendShape, number>
---@field private LeftEyeTransform FTransform @The transform for the left eye
---@field private RightEyeTransform FTransform @The transform for the right eye
local UARFaceGeometry = {}

---@param Eye EAREye
---@return FTransform
function UARFaceGeometry:GetWorldSpaceEyeTransform(Eye) end

---@param Eye EAREye
---@return FTransform
function UARFaceGeometry:GetLocalSpaceEyeTransform(Eye) end

---@param BlendShape EARFaceBlendShape
---@return number
function UARFaceGeometry:GetBlendShapeValue(BlendShape) end

---@return TMap_EARFaceBlendShape__number_
function UARFaceGeometry:GetBlendShapes() end

