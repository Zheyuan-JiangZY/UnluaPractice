---Struct used for storing one per-instance named parameter for this AudioComponent.
---Certain nodes in the SoundCue may reference parameters by name so they can be adjusted per-instance.
---@class FAudioComponentParam
---@field public ParamName string @Name of the parameter
---@field public FloatParam number @Value of the parameter when used as a float
---@field public BoolParam boolean @Value of the parameter when used as a boolean
---@field public IntParam integer @Value of the parameter when used as an integer
---@field public SoundWaveParam USoundWave @Value of the parameter when used as a sound wave
local FAudioComponentParam = {}
