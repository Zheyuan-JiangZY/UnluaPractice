---Sound Submix class meant for applying an effect to the downmixed sum of multiple audio sources.
---@class USoundSubmix : USoundSubmixWithParentBase
---@field public bMuteWhenBackgrounded boolean @Mute this submix when the application is muted or in the background. Used to prevent submix effect tails from continuing when tabbing out of application or if application is muted.
---@field public SubmixEffectChain TArray<USoundEffectSubmixPreset>
---@field public AmbisonicsPluginSettings USoundfieldEncodingSettingsBase @Optional settings used by plugins which support ambisonics file playback.
---@field public EnvelopeFollowerAttackTime integer @The attack time in milliseconds for the envelope follower. Delegate callbacks can be registered to get the envelope value of sounds played with this submix.
---@field public EnvelopeFollowerReleaseTime integer @The release time in milliseconds for the envelope follower. Delegate callbacks can be registered to get the envelope value of sounds played with this submix.
---@field public GainMode EGainParamMode @Whether to treat submix gain levels as linear or decibel values.
---@field public OutputVolume number @The output volume of the submix. Applied after submix effects and analysis are performed.
---@field public WetLevel number @The wet level of the submix. Applied after submix effects and analysis are performed.
---@field public DryLevel number @The dry level of the submix. Applied before submix effects and analysis are performed.
---@field public OutputVolumeDB number @The output volume of the submix (in dB).
---@field public WetLevelDB number @The wet level of the submix  (in dB). Applied after submix effects and analysis are performed.
---@field public DryLevelDB number @The dry level of the submix  (in dB)s. Applied before submix effects and analysis are performed.
---@field public OutputVolumeModulation FSoundModulationDestinationSettings @Modulation to apply to the submix Output Volume (in dB)
---@field public WetLevelModulation FSoundModulationDestinationSettings @Modulation to apply to the submix Wet Level (in dB)
---@field public DryLevelModulation FSoundModulationDestinationSettings @Modulation to apply to the submix Dry Level (in dB)
---@field public OnSubmixRecordedFileDone MulticastDelegate @Blueprint delegate for when a recorded file is finished exporting.
local USoundSubmix = {}

---Start spectrum analysis of the audio output.
---@param WorldContextObject UObject
function USoundSubmix:StopSpectralAnalysis(WorldContextObject) end

---Finish recording the audio from this submix and export it as a wav file or a USoundWave.
---@param WorldContextObject UObject
---@param ExportType EAudioRecordingExportType
---@param Name string
---@param Path string
---@param ExistingSoundWaveToOverwrite USoundWave @[opt] 
function USoundSubmix:StopRecordingOutput(WorldContextObject, ExportType, Name, Path, ExistingSoundWaveToOverwrite) end

---Start envelope following the submix output. Register with OnSubmixEnvelope to receive envelope follower data in BP.
---@param WorldContextObject UObject
function USoundSubmix:StopEnvelopeFollowing(WorldContextObject) end

---Start spectrum analysis of the audio output.
---@param WorldContextObject UObject
---@param FFTSize EFFTSize @[opt] 
---@param InterpolationMethod EFFTPeakInterpolationMethod @[opt] 
---@param WindowType EFFTWindowType @[opt] 
---@param HopSize number @[opt] 
---@param SpectrumType EAudioSpectrumType @[opt] 
function USoundSubmix:StartSpectralAnalysis(WorldContextObject, FFTSize, InterpolationMethod, WindowType, HopSize, SpectrumType) end

---Start recording the audio from this submix.
---@param WorldContextObject UObject
---@param ExpectedDuration number
function USoundSubmix:StartRecordingOutput(WorldContextObject, ExpectedDuration) end

---Start envelope following the submix output. Register with OnSubmixEnvelope to receive envelope follower data in BP.
---@param WorldContextObject UObject
function USoundSubmix:StartEnvelopeFollowing(WorldContextObject) end

---Sets the output volume of the submix. This dynamic volume acts as a multiplier on the OutputVolume property of this submix.
---@param WorldContextObject UObject
---@param InOutputVolume number
function USoundSubmix:SetSubmixOutputVolume(WorldContextObject, InOutputVolume) end

---Remove a spectral analysis delegate.
---@param WorldContextObject UObject
---@param OnSubmixSpectralAnalysisBP Delegate
function USoundSubmix:RemoveSpectralAnalysisDelegate(WorldContextObject, OnSubmixSpectralAnalysisBP) end

---Adds a spectral analysis delegate to receive notifications when this submix has spectrum analysis enabled.
---@param WorldContextObject UObject
---@param InBandSettings TArray_FSoundSubmixSpectralAnalysisBandSettings_
---@param OnSubmixSpectralAnalysisBP Delegate
---@param UpdateRate number @[opt] 
---@param DecibelNoiseFloor number @[opt] 
---@param bDoNormalize boolean @[opt] 
---@param bDoAutoRange boolean @[opt] 
---@param AutoRangeAttackTime number @[opt] 
---@param AutoRangeReleaseTime number @[opt] 
function USoundSubmix:AddSpectralAnalysisDelegate(WorldContextObject, InBandSettings, OnSubmixSpectralAnalysisBP, UpdateRate, DecibelNoiseFloor, bDoNormalize, bDoAutoRange, AutoRangeAttackTime, AutoRangeReleaseTime) end

---Adds an envelope follower delegate to the submix when envelope following is enabled on this submix.
---@param WorldContextObject UObject
---@param OnSubmixEnvelopeBP Delegate
function USoundSubmix:AddEnvelopeFollowerDelegate(WorldContextObject, OnSubmixEnvelopeBP) end

