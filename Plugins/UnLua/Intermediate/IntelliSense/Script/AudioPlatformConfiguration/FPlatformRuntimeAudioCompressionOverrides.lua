---@class FPlatformRuntimeAudioCompressionOverrides
---@field public bOverrideCompressionTimes boolean @Set this to true to override Sound Groups and use the Duration Threshold value to determine whether a sound should be fully decompressed during initial loading.
---@field public DurationThreshold number @When Override Compression Times is set to true, any sound under this threshold (in seconds) will be fully decompressed on load. Otherwise the first chunk of this sound is cached at load and the rest is decompressed in real time.
---@field public MaxNumRandomBranches integer @On this platform, any random nodes on Sound Cues will automatically only preload this number of branches and dispose of any others on load. This can drastically cut down on memory usage.
---@field public SoundCueQualityIndex integer @On this platform, use the specified quality at this index to override the quality used for SoundCues on this platform
local FPlatformRuntimeAudioCompressionOverrides = {}
