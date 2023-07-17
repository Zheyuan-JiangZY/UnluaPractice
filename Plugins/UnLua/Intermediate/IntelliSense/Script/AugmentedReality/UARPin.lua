---@class UARPin : UObject
---@field private TrackedGeometry UARTrackedGeometry
---@field private PinnedComponent USceneComponent
---@field private LocalToTrackingTransform FTransform
---@field private LocalToAlignedTrackingTransform FTransform
---@field private TrackingState EARTrackingState
---@field private OnARTrackingStateChanged MulticastDelegate
---@field private OnARTransformUpdated MulticastDelegate
local UARPin = {}

---Return the current tracking state of this Pin.
---@return EARTrackingState
function UARPin:GetTrackingState() end

---The TrackedGeometry (if any) that this this pin is being "stuck" into.
---@return UARTrackedGeometry
function UARPin:GetTrackedGeometry() end

---
---@return USceneComponent
function UARPin:GetPinnedComponent() end

---Convenience function. Same as LocalToTrackingTransform, but
---appends the TrackingToWorld Transform.
---@return FTransform
function UARPin:GetLocalToWorldTransform() end

---Maps from a Pin's Local Space to the Tracking Space.
---Mapping the origin from the Pin's Local Space to Tracking Space
---yield the Pin's position in Tracking Space.
---@return FTransform
function UARPin:GetLocalToTrackingTransform() end

---@return string
function UARPin:GetDebugName() end

---@param World UWorld
---@param Color FLinearColor
---@param Scale number
---@param PersistForSeconds number
function UARPin:DebugDraw(World, Color, Scale, PersistForSeconds) end

