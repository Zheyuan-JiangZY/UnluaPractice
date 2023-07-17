---@class UARObjectComponent : UARComponent
---@field protected ReplicatedPayload FARObjectUpdatePayload
local UARObjectComponent = {}

---@param NewPayload FARObjectUpdatePayload
function UARObjectComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FARObjectUpdatePayload
function UARObjectComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FARObjectUpdatePayload
function UARObjectComponent:ReceiveAdd(Payload) end

