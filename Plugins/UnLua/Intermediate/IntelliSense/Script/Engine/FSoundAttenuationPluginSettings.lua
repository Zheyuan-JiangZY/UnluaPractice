---@class FSoundAttenuationPluginSettings
---@field public SpatializationPluginSettingsArray TArray<USpatializationPluginSourceSettingsBase> @Settings to use with spatialization audio plugin. These are defined by the plugin creator. Not all audio plugins utilize this feature. This is an array so multiple plugins can have settings.
---@field public OcclusionPluginSettingsArray TArray<UOcclusionPluginSourceSettingsBase> @Settings to use with occlusion audio plugin. These are defined by the plugin creator. Not all audio plugins utilize this feature. This  is an array so multiple plugins can have settings.
---@field public ReverbPluginSettingsArray TArray<UReverbPluginSourceSettingsBase> @Settings to use with reverb audio plugin. These are defined by the plugin creator. Not all audio plugins utilize this feature. This  is an array so multiple plugins can have settings.
local FSoundAttenuationPluginSettings = {}
