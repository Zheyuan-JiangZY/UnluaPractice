---A submix dynamics processor
---@class FSubmixEffectMultibandCompressorSettings
---@field public DynamicsProcessorType ESubmixEffectDynamicsProcessorType @Controls how each band will react to audio above its threshold
---@field public PeakMode ESubmixEffectDynamicsPeakMode @Controls how quickly the bands will react to a signal above its threshold
---@field public LookAheadMsec number @The amount of time to look ahead of the current audio. Allows for transients to be included in dynamics processing.
---@field public bLinkChannels boolean @Whether or not to average all channels of audio before inputing into the dynamics processor
---@field public bAnalogMode boolean @Toggles treating the attack and release envelopes as analog-style vs digital-style. Analog will respond a bit more naturally/slower.
---@field public bFourPole boolean @Turning off FourPole mode will use cheaper, shallower 2-pole crossovers
---@field public Bands TArray<FDynamicsBandSettings> @Each band is a full dynamics processor, affecting at a unique frequency range
local FSubmixEffectMultibandCompressorSettings = {}
