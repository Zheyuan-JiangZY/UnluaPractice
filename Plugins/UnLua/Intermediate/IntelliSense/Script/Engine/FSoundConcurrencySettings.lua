---@class FSoundConcurrencySettings
---@field public MaxCount integer @The max number of allowable concurrent active voices for voices playing in this concurrency group.
---@field public bLimitToOwner boolean @Whether or not to limit the concurrency to per sound owner (i.e. the actor that plays the sound). If the sound doesn't have an owner, it falls back to global concurrency.
---@field public ResolutionRule integer @Which concurrency resolution policy to use if max voice count is reached.
---@field public RetriggerTime number @Amount of time to wait (in seconds) between different sounds which play with this concurrency. Sounds rejected from this will ignore virtualization settings.
---@field private VolumeScale number @Ducking factor to apply per older voice instance (generation), which compounds based on scaling mode and (optionally) revives them as they stop according to the provided attack/release times. AppliedVolumeScale = Math.Pow(DuckingScale, VoiceGeneration)
---@field public VolumeScaleMode EConcurrencyVolumeScaleMode @Volume Scale mode designating how to scale voice volume based on number of member sounds active in group.
---@field public VolumeScaleAttackTime number @Time taken to apply duck using volume scalar.
---@field public bVolumeScaleCanRelease boolean @Whether or not volume scaling can recover volume ducking behavior when concurrency group sounds stop (default scale mode only).
---@field public VolumeScaleReleaseTime number @Time taken to recover volume scalar duck.
---@field public VoiceStealReleaseTime number @Time taken to fade out if voice is evicted or culled due to another voice in the group starting.
local FSoundConcurrencySettings = {}
