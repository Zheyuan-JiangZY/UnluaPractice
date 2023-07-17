---Asset used to store moto synth preset data.
---@class UMotoSynthPreset : UObject
---@field public EnginePreviewRPMCurve FRuntimeFloatCurve @Engine preview RPM curve
---@field public Settings FMotoSynthRuntimeSettings
local UMotoSynthPreset = {}

function UMotoSynthPreset:StopEnginePreview() end

function UMotoSynthPreset:StartEnginePreview() end

---Dumps memory usage of the preset (i.e. of the source assets)
function UMotoSynthPreset:DumpRuntimeMemoryUsage() end

