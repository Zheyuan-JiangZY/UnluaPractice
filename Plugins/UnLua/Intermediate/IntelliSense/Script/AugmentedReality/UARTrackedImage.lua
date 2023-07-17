---@class UARTrackedImage : UARTrackedGeometry
---@field protected DetectedImage UARCandidateImage @The candidate image that was detected in the scene
---@field protected EstimatedSize FVector2D @The estimated image size that was detected in the scene
local UARTrackedImage = {}

---* Get the estimate size of the detected image, where X is the estimated width, and Y is the estimated height.
---*
---* Note that ARCore can return a valid estimate size of the detected image when the tracking state of the UARTrackedImage
---* is tracking. The size should reflect the actual size of the image target, which could be different than the input physical
---* size of the candidate image.
---*
---* ARKit will return the physical size of the ARCandidate image.
---@return FVector2D
function UARTrackedImage:GetEstimateSize() end

---
---@return UARCandidateImage
function UARTrackedImage:GetDetectedImage() end

