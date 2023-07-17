---@class UARQRCodeComponent : UARComponent
---@field protected ReplicatedPayload FARQRCodeUpdatePayload
local UARQRCodeComponent = {}

---@param NewDebugMode EQRCodeComponentDebugMode
function UARQRCodeComponent.SetQRCodeComponentDebugMode(NewDebugMode) end

---@param NewPayload FARQRCodeUpdatePayload
function UARQRCodeComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FARQRCodeUpdatePayload
function UARQRCodeComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FARQRCodeUpdatePayload
function UARQRCodeComponent:ReceiveAdd(Payload) end

