---Blueprint async task to check Geo tracking availability.
---@class UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy : UARBaseAsyncTaskBlueprintProxy
---@field public OnSuccess MulticastDelegate
---@field public OnFailed MulticastDelegate
local UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy = {}

---@param bIsAvailable boolean
---@param Error string
function UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy:GeoTrackingAvailabilityDelegate__DelegateSignature(bIsAvailable, Error) end

---Check Geo tracking availability at a specific Geo location.
---@param WorldContextObject UObject
---@param Longitude number
---@param Latitude number
---@return UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy
function UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy.CheckGeoTrackingAvailabilityAtLocation(WorldContextObject, Longitude, Latitude) end

---Check Geo tracking availability at the user's current location.
---@param WorldContextObject UObject
---@return UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy
function UCheckGeoTrackingAvailabilityAsyncTaskBlueprintProxy.CheckGeoTrackingAvailability(WorldContextObject) end

