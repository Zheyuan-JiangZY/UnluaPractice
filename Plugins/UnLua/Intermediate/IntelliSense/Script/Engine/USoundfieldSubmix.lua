---Sound Submix class meant for use with soundfield formats, such as Ambisonics.
---@class USoundfieldSubmix : USoundSubmixWithParentBase
---@field public SoundfieldEncodingFormat string @Currently used format.
---@field public EncodingSettings USoundfieldEncodingSettingsBase @TODO: Make this editable only if SoundfieldEncodingFormat is non-default,  and filter classes based on ISoundfieldFactory::GetCustomSettingsClass().
---@field public SoundfieldEffectChain TArray<USoundfieldEffectBase> @TODO: make this editable only if SoundfieldEncodingFormat is non-default and filter classes based on USoundfieldProcessorBase::SupportsFormat.
---@field public EncodingSettingsClass TSubclassOf<USoundfieldEncodingSettingsBase>
local USoundfieldSubmix = {}

