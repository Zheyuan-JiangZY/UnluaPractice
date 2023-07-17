---@class UARFaceComponent : UARComponent
---@field protected TransformSetting EARFaceTransformMixing @Determines how the transform from tracking data and the component's transform are mixed together.
---@field protected bUpdateVertexNormal boolean @Whether to automatically update the vertex normal when the mesh is updated.
---@field protected bFaceOutOfScreen boolean @Whether the mesh should be rotated so that it's facing out of the screen.
---@field protected ReplicatedPayload FARFaceUpdatePayload
local UARFaceComponent = {}

---@param NewDebugMode EFaceComponentDebugMode
function UARFaceComponent.SetFaceComponentDebugMode(NewDebugMode) end

---@param NewPayload FARFaceUpdatePayload
function UARFaceComponent:ServerUpdatePayload(NewPayload) end

---Event when native representation is updated, called on server and clients.
---@param Payload FARFaceUpdatePayload
function UARFaceComponent:ReceiveUpdate(Payload) end

---Event when native representation is first added, called on server and clients.
---@param Payload FARFaceUpdatePayload
function UARFaceComponent:ReceiveAdd(Payload) end

