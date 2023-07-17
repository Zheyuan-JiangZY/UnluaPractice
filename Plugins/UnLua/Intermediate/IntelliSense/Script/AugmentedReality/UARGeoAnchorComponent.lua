---@class UARGeoAnchorComponent : UARComponent
---@field protected ReplicatedPayload FARGeoAnchorUpdatePayload
local UARGeoAnchorComponent = {}

---@param NewDebugMode EGeoAnchorComponentDebugMode
function UARGeoAnchorComponent.SetGeoAnchorComponentDebugMode(NewDebugMode) end

---@param NewPayload FARGeoAnchorUpdatePayload
function UARGeoAnchorComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FARGeoAnchorUpdatePayload
function UARGeoAnchorComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FARGeoAnchorUpdatePayload
function UARGeoAnchorComponent:ReceiveAdd(Payload) end

