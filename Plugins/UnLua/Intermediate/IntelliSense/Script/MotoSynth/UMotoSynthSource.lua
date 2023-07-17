---UMotoSynthSource
---UAsset used to represent Imported MotoSynth Sources
---@class UMotoSynthSource : UObject
---@field public SoundWaveSource USoundWave @The source to use for the moto synth source
---@field public bConvertTo8Bit boolean @Whether or not to convert this moto synth source to 8 bit on load to use less memory
---@field public DownSampleFactor number @Amount to scale down the sample rate of the source
---@field public RPMCurve FRuntimeFloatCurve @A curve to define the RPM contour from the min and max estimated RPM Curve values are non-normalized and accurate to time
---@field public RPMSynthVolume number @Sets the volume of the RPM curve synth for testing RPM curve to source
---@field public bEnableFilteringForAnalysis boolean @Whether not to enable a low pass filter frequency before analyzing the audio file
---@field public LowPassFilterFrequency number @Frequency of a low pass filter to apply before running grain table analysis
---@field public HighPassFilterFrequency number @Whether not to enable a low pass filter frequency before analyzing the audio file
---@field public bEnableDynamicsProcessorForAnalysis boolean @Whether not to enable a dynamics processor to the analysis step
---@field public DynamicsProcessorLookahead number
---@field public DynamicsProcessorInputGainDb number
---@field public DynamicsProcessorRatio number
---@field public DynamicsKneeBandwidth number
---@field public DynamicsProcessorThreshold number
---@field public DynamicsProcessorAttackTimeMsec number
---@field public DynamicsProcessorReleaseTimeMsec number
---@field public bEnableNormalizationForAnalysis boolean
---@field public SampleShiftOffset integer
---@field public RPMCycleCalibrationSample integer @A samples to use to calibrate when an engine cycle begins
---@field public RPMFirstCycleSampleEnd integer @The end of the first cycle sample. Cut the source file to start exactly on the cycle start
---@field public RPMEstimationOctaveOffset integer
---@field public bWriteAnalysisInputToFile boolean @Whether not to write the audio used for analysis to a wav file
---@field public AnalysisInputFilePath string @The path to write the audio analysis data (LPF and normalized asset)
---@field protected SourceDataPCM TArray<integer>
---@field protected SourceSampleRate integer @Sample rate of the imported sound wave and the serialized data of the granulator
---@field protected GrainTable TArray<FGrainTableEntry> @Grain table containing information about how to granulate the source data buffer.
local UMotoSynthSource = {}

function UMotoSynthSource:StopToneMatch() end

function UMotoSynthSource:PlayToneMatch() end

function UMotoSynthSource:PerformGrainTableAnalysis() end

