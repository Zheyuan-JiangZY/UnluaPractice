---@class UARPlaneComponent : UARComponent
---@field protected ReplicatedPayload FARPlaneUpdatePayload
local UARPlaneComponent = {}

---@param NewDebugMode EPlaneComponentDebugMode
function UARPlaneComponent.SetPlaneComponentDebugMode(NewDebugMode) end

---@param InColors TMap_EARObjectClassification__FLinearColor_
function UARPlaneComponent.SetObjectClassificationDebugColors(InColors) end

---@param NewPayload FARPlaneUpdatePayload
function UARPlaneComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FARPlaneUpdatePayload
function UARPlaneComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FARPlaneUpdatePayload
function UARPlaneComponent:ReceiveAdd(Payload) end

---@return TMap_EARObjectClassification__FLinearColor_
function UARPlaneComponent.GetObjectClassificationDebugColors() end

