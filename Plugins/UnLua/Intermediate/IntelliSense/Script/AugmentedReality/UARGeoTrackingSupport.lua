---Interface class for Geo tracking related features.
---@class UARGeoTrackingSupport : UObject
local UARGeoTrackingSupport = {}

---
---@return UARGeoTrackingSupport
function UARGeoTrackingSupport.GetGeoTrackingSupport() end

---
---@return EARGeoTrackingStateReason
function UARGeoTrackingSupport:GetGeoTrackingStateReason() end

---
---@return EARGeoTrackingState
function UARGeoTrackingSupport:GetGeoTrackingState() end

---
---@return EARGeoTrackingAccuracy
function UARGeoTrackingSupport:GetGeoTrackingAccuracy() end

---
---@param Longitude number
---@param Latitude number
---@param AltitudeMeters number
---@param OptionalAnchorName string
---@return boolean
function UARGeoTrackingSupport:AddGeoAnchorAtLocationWithAltitude(Longitude, Latitude, AltitudeMeters, OptionalAnchorName) end

---
---@param Longitude number
---@param Latitude number
---@param OptionalAnchorName string
---@return boolean
function UARGeoTrackingSupport:AddGeoAnchorAtLocation(Longitude, Latitude, OptionalAnchorName) end

