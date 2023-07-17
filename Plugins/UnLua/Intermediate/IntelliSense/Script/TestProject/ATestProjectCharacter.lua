---@class ATestProjectCharacter : ACharacter
---@field private CameraBoom USpringArmComponent @Camera boom positioning the camera behind the character
---@field private FollowCamera UCameraComponent @Follow camera
---@field public BaseTurnRate number @Base turn rate, in deg/sec. Other scaling may affect final turn rate.
---@field public BaseLookUpRate number @Base look up/down rate, in deg/sec. Other scaling may affect final rate.
local ATestProjectCharacter = {}

