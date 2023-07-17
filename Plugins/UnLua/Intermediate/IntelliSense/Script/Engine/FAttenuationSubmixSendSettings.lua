---@class FAttenuationSubmixSendSettings
---@field public Submix USoundSubmixBase @Submix to send audio to based on distance.
---@field public SubmixSendMethod ESubmixSendMethod @What method to use to use for submix sends.
---@field public SubmixSendLevelMin number @The amount to send to the Submix when the sound is located at a distance equal to value specified in the submix send distance min.
---@field public SubmixSendLevelMax number @The amount to send to the Submix when the sound is located at a distance equal to value specified in the reverb max send distance.
---@field public SubmixSendDistanceMin number @The min distance to send to the Submix.
---@field public SubmixSendDistanceMax number @The max distance to send to the Submix.
---@field public ManualSubmixSendLevel number @The manual Submix send level to use. Doesn't change as a function of distance.
---@field public CustomSubmixSendCurve FRuntimeFloatCurve @The custom Submix send curve to use for distance-based send level.
local FAttenuationSubmixSendSettings = {}
