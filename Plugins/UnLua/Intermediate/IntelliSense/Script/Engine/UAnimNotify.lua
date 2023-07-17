---@class UAnimNotify : UObject
---@field public NotifyColor FColor @Color of Notify in editor
local UAnimNotify = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@return boolean
function UAnimNotify:Received_Notify(MeshComp, Animation) end

---Implementable event to get a custom name for the notify
---@return string
function UAnimNotify:GetNotifyName() end

