---Blueprint async task to convert Geo location.
---@class UGetGeoLocationAsyncTaskBlueprintProxy : UARBaseAsyncTaskBlueprintProxy
---@field public OnSuccess MulticastDelegate
---@field public OnFailed MulticastDelegate
local UGetGeoLocationAsyncTaskBlueprintProxy = {}

---@param Longitude number
---@param Latitude number
---@param Altitude number
---@param Error string
function UGetGeoLocationAsyncTaskBlueprintProxy:GetGeoLocationDelegate__DelegateSignature(Longitude, Latitude, Altitude, Error) end

---Convert a position in UE4 world space into a Geo location.
---@param WorldContextObject UObject
---@param WorldPosition FVector
---@return UGetGeoLocationAsyncTaskBlueprintProxy
function UGetGeoLocationAsyncTaskBlueprintProxy.GetGeoLocationAtWorldPosition(WorldContextObject, WorldPosition) end

