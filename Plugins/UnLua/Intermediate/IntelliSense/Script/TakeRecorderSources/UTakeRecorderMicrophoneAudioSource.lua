---A recording source that records microphone audio
---@class UTakeRecorderMicrophoneAudioSource : UTakeRecorderMicrophoneAudioSourceSettings
---@field public AudioGain number @Gain in decibels to apply to recorded audio
---@field public bSplitAudioChannelsIntoSeparateTracks boolean @Whether or not to split mic channels into separate audio tracks. If not true, a max of 2 input channels is supported.
---@field public bReplaceRecordedAudio boolean @Replace existing recorded audio with any newly recorded audio
local UTakeRecorderMicrophoneAudioSource = {}

