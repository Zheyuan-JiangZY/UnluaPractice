---@class UARMeshComponent : UARComponent
---@field protected ReplicatedPayload FARMeshUpdatePayload
local UARMeshComponent = {}

---@param NewPayload FARMeshUpdatePayload
function UARMeshComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FARMeshUpdatePayload
function UARMeshComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FARMeshUpdatePayload
function UARMeshComponent:ReceiveAdd(Payload) end

