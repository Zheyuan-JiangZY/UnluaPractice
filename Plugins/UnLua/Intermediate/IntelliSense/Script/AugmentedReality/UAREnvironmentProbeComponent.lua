---@class UAREnvironmentProbeComponent : UARComponent
---@field protected ReplicatedPayload FAREnvironmentProbeUpdatePayload
local UAREnvironmentProbeComponent = {}

---@param NewPayload FAREnvironmentProbeUpdatePayload
function UAREnvironmentProbeComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FAREnvironmentProbeUpdatePayload
function UAREnvironmentProbeComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FAREnvironmentProbeUpdatePayload
function UAREnvironmentProbeComponent:ReceiveAdd(Payload) end

