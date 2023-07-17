---@class FSubmixEffectConvolutionReverbSettings
---@field public NormalizationVolumeDb number @Used to account for energy added by convolution with "loud" Impulse Responses.        * This value is not directly editable in the editor because it is copied from the        * associated UAudioImpulseResponse.
---@field public bBypass boolean @If true, input audio is directly routed to output audio with applying any effect.
---@field public bMixInputChannelFormatToImpulseResponseFormat boolean @If true, the submix input audio is downmixed to match the IR asset audio channel        * format. If false, the input audio's channels are matched to the IR assets        * audio channels.
---@field public bMixReverbOutputToOutputChannelFormat boolean @If true, the reverberated audio is upmixed or downmixed to match the submix        * output audio format. If false, the reverberated audio's channels are matched        * to the submixs output audio channels.
---@field public SurroundRearChannelBleedDb number @Amout of audio to be sent to rear channels in quad/surround configurations
---@field public bInvertRearChannelBleedPhase boolean @If true, rear channel bleed sends will have their phase inverted.
---@field public bSurroundRearChannelFlip boolean @If true, send Surround Rear Channel Bleed Amount sends front left to back right and vice versa
local FSubmixEffectConvolutionReverbSettings = {}
