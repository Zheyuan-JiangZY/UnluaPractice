---A tracked environment texture probe that gives you a cube map for reflections
---@class UAREnvironmentCaptureProbe : UARTrackedGeometry
---@field protected Extent FVector @The size of area this probe covers
---@field protected EnvironmentCaptureTexture UAREnvironmentCaptureProbeTexture @The cube map of the reflected environment
local UAREnvironmentCaptureProbe = {}

---
---@return FVector
function UAREnvironmentCaptureProbe:GetExtent() end

---
---@return UAREnvironmentCaptureProbeTexture
function UAREnvironmentCaptureProbe:GetEnvironmentCaptureTexture() end

