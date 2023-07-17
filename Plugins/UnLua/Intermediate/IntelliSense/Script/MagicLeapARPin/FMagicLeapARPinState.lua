---Current state of a MagicLeapARPin
---@class FMagicLeapARPinState
---@field public Confidence number @A confidence value [0,1] representing the confidence in the error levels given below (within the valid radius).
---@field public ValidRadius number @The radius (in centimeters) in which the confidence value is valid.
---@field public RotationError number @Rotational error (in degrees).
---@field public TranslationError number @Translation error (in centimeters).
---@field public PinType EMagicLeapARPinType
local FMagicLeapARPinState = {}
