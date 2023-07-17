---The behavior of audio playback is defined within Sound Cues.
---@class USoundCue : USoundBase
---@field public bPrimeOnLoad boolean @Makes this sound cue automatically load any sound waves it can play into the cache when it is loaded.
---@field public FirstNode USoundNode
---@field public VolumeMultiplier number @Base volume multiplier
---@field public PitchMultiplier number @Base pitch multiplier
---@field public AttenuationOverrides FSoundAttenuationSettings @Attenuation settings to use if Override Attenuation is set to true
---@field public AllNodes TArray<USoundNode>
---@field public SoundCueGraph UEdGraph
---@field protected SubtitlePriority number @The priority of the subtitle.  Defaults to 10000.  Higher values will play instead of lower values.
---@field public bOverrideAttenuation boolean @Indicates whether attenuation should use the Attenuation Overrides or the Attenuation Settings asset
---@field public bExcludeFromRandomNodeBranchCulling boolean @Ignore per-platform random node culling for memory purposes
---@field private CookedQualityIndex integer
---@field private bHasPlayWhenSilent boolean @Whether a sound has play when silent enabled (i.e. for a sound cue, if any sound wave player has it enabled).
local USoundCue = {}

