---@class UARGeoAnchor : UARTrackedGeometry
local UARGeoAnchor = {}

---@return number
function UARGeoAnchor:GetLongitude() end

---@return number
function UARGeoAnchor:GetLatitude() end

---@return EARAltitudeSource
function UARGeoAnchor:GetAltitudeSource() end

---@return number
function UARGeoAnchor:GetAltitudeMeters() end

