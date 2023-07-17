---Implements the settings for the Mac target platform.
---@class UMacTargetSettings : UObject
---@field public TargetedRHIs TArray<string> @The collection of RHI's we want to support on this platform. This is not always the full list of RHI we can support.
---@field public TargetArchitecture EMacTargetArchitecture @The maximum supported Metal shader langauge version. This defines what features may be used and OS versions supported.
---@field public MaxShaderLanguageVersion integer @The maximum supported Metal shader langauge version. This defines what features may be used and OS versions supported.
---@field public UseFastIntrinsics boolean @Whether to use the Metal shading language's "fast" intrinsics. Fast intrinsics assume that no NaN or INF value will be provided as input, so are more efficient. However, they will produce undefined results if NaN/INF is present in the argument/s. By default fast-instrinics are disabled so Metal correctly handles NaN/INF arguments.
---@field public ForceFloats boolean @Whether to force Metal shaders to use 32bit floating point precision even when the shader uses half floats. Half floats are much more efficient when they are availble but have less accuracy over large ranges, as such some projects may need to use 32bit floats to ensure correct rendering.
---@field public EnableMathOptimisations boolean @Whether to use of Metal shader-compiler's -ffast-math optimisations. Fast-Math performs algebraic-equivalent & reassociative optimisations not permitted by the floating point arithmetic standard (IEEE-754). These can improve shader performance at some cost to precision and can lead to NaN/INF propagation as they rely on shader inputs or variables not containing NaN/INF values. By default fast-math is enabled for performance.
---@field public IndirectArgumentTier integer @Whether to compile shaders using a tier Indirect Argument Buffers.
---@field public AudioSampleRate integer @Sample rate to run the audio mixer with.
---@field public AudioCallbackBufferFrameSize integer @The amount of audio to compute each callback block. Lower values decrease latency but may increase CPU cost.
---@field public AudioNumBuffersToEnqueue integer @The number of buffers to keep enqueued. More buffers increases latency, but can compensate for variable compute availability in audio callbacks on some platforms.
---@field public AudioMaxChannels integer @The max number of channels (voices) to limit for this platform. The max channels used will be the minimum of this value and the global audio quality settings. A value of 0 will not apply a platform channel count max.
---@field public AudioNumSourceWorkers integer @The number of workers to use to compute source audio. Will only use up to the max number of sources. Will evenly divide sources to each source worker.
---@field public SpatializationPlugin string @Which of the currently enabled spatialization plugins to use on Windows.
---@field public ReverbPlugin string @Which of the currently enabled reverb plugins to use on Windows.
---@field public OcclusionPlugin string @Which of the currently enabled occlusion plugins to use on Windows.
---@field public SoundCueCookQualityIndex integer @Quality Level to COOK SoundCues at (if set, all other levels will be stripped by the cooker).
local UMacTargetSettings = {}

