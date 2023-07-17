---@class UARPoseComponent : UARComponent
---@field protected ReplicatedPayload FARPoseUpdatePayload
local UARPoseComponent = {}

---@param NewDebugMode EPoseComponentDebugMode
function UARPoseComponent.SetPoseComponentDebugMode(NewDebugMode) end

---@param NewPayload FARPoseUpdatePayload
function UARPoseComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FARPoseUpdatePayload
function UARPoseComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FARPoseUpdatePayload
function UARPoseComponent:ReceiveAdd(Payload) end

