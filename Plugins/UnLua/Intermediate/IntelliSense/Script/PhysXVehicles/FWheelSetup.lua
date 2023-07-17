---Vehicle-specific wheel setup
---@class FWheelSetup
---@field public WheelClass TSubclassOf<UVehicleWheel> @The wheel class to use
---@field public BoneName string @Bone name on mesh to create wheel at
---@field public AdditionalOffset FVector @Additional offset to give the wheels for this axle.
---@field public bDisableSteering boolean @Disables steering regardless of the wheel data
local FWheelSetup = {}
