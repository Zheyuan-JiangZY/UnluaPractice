---@class UARTrackedObject : UARTrackedGeometry
---@field private DetectedObject UARCandidateObject @The candidate object that was detected in the scene
local UARTrackedObject = {}

---
---@return UARCandidateObject
function UARTrackedObject:GetDetectedObject() end

