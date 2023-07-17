---@class UDeviceProfile : UTextureLODSettings
---@field public DeviceType string @The type of this profile, I.e. IOS, Windows, PS4 etc
---@field public BaseProfileName string @The name of the parent profile of this object
---@field public Parent UObject @The parent object of this profile, it is the object matching this DeviceType with the BaseProfileName
---@field public CVars TArray<string> @The collection of CVars which is set from this profile
local UDeviceProfile = {}

