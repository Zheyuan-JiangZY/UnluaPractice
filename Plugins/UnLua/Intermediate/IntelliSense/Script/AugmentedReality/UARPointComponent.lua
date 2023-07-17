---@class UARPointComponent : UARComponent
---@field protected ReplicatedPayload FARPointUpdatePayload
local UARPointComponent = {}

---@param NewPayload FARPointUpdatePayload
function UARPointComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FARPointUpdatePayload
function UARPointComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FARPointUpdatePayload
function UARPointComponent:ReceiveAdd(Payload) end

