---@class UAnimNotifyState : UObject
---@field public NotifyColor FColor @Color of Notify in editor
local UAnimNotifyState = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param FrameDeltaTime number
---@return boolean
function UAnimNotifyState:Received_NotifyTick(MeshComp, Animation, FrameDeltaTime) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@return boolean
function UAnimNotifyState:Received_NotifyEnd(MeshComp, Animation) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration number
---@return boolean
function UAnimNotifyState:Received_NotifyBegin(MeshComp, Animation, TotalDuration) end

---Implementable event to get a custom name for the notify
---@return string
function UAnimNotifyState:GetNotifyName() end

