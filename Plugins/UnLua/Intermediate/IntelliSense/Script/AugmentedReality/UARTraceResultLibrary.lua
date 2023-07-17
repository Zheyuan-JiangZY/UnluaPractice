---@class UARTraceResultLibrary : UBlueprintFunctionLibrary
local UARTraceResultLibrary = {}

---
---@param TraceResult FARTraceResult
---@return UARTrackedGeometry
function UARTraceResultLibrary.GetTrackedGeometry(TraceResult) end

---
---@param TraceResult FARTraceResult
---@return EARLineTraceChannels
function UARTraceResultLibrary.GetTraceChannel(TraceResult) end

---
---@param TraceResult FARTraceResult
---@return FTransform
function UARTraceResultLibrary.GetLocalTransform(TraceResult) end

---
---@param TraceResult FARTraceResult
---@return FTransform
function UARTraceResultLibrary.GetLocalToWorldTransform(TraceResult) end

---
---\see SetAlignmentTransform()
---@param TraceResult FARTraceResult
---@return FTransform
function UARTraceResultLibrary.GetLocalToTrackingTransform(TraceResult) end

---
---@param TraceResult FARTraceResult
---@return number
function UARTraceResultLibrary.GetDistanceFromCamera(TraceResult) end

