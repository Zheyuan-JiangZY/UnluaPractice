---Sound Submix class meant for sending audio to an external endpoint, such as controller haptics or an additional audio device.
---@class UEndpointSubmix : USoundSubmixBase
---@field public EndpointType string @Currently used format.
---@field public EndpointSettingsClass TSubclassOf<UAudioEndpointSettingsBase>
---@field public EndpointSettings UAudioEndpointSettingsBase @TODO: Make this editable only if EndpointType is non-default,  and filter classes based on ISoundfieldFactory::GetCustomSettingsClass().
local UEndpointSubmix = {}

