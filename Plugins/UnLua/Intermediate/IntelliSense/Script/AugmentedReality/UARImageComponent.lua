---@class UARImageComponent : UARComponent
---@field protected ReplicatedPayload FARImageUpdatePayload
local UARImageComponent = {}

---@param NewDebugMode EImageComponentDebugMode
function UARImageComponent.SetImageComponentDebugMode(NewDebugMode) end

---@param NewPayload FARImageUpdatePayload
function UARImageComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FARImageUpdatePayload
function UARImageComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FARImageUpdatePayload
function UARImageComponent:ReceiveAdd(Payload) end

