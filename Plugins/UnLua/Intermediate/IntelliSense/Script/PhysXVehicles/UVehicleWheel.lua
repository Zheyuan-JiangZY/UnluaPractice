---@class UVehicleWheel : UObject
---@field public CollisionMesh UStaticMesh @Static mesh with collision setup for wheel, will be used to create wheel shape (if empty, sphere will be added as wheel shape, check bDontCreateShape flag)
---@field public bDontCreateShape boolean @If set, shape won't be created, but mapped from chassis mesh
---@field public bAutoAdjustCollisionSize boolean @If true, ShapeRadius and ShapeWidth will be used to automatically scale collision taken from CollisionMesh to match wheel size. If false, size of CollisionMesh won't be changed. Use if you want to scale wheels manually.
---@field public Offset FVector @If BoneName is specified, offset the wheel from the bone's location. Otherwise this offsets the wheel from the vehicle's origin.
---@field public ShapeRadius number @Radius of the wheel
---@field public ShapeWidth number @Width of the wheel
---@field public Mass number @Mass of this wheel
---@field public DampingRate number @Damping rate for this wheel (Kgm^2/s)
---@field public SteerAngle number @steer angle in degrees for this wheel
---@field public bAffectedByHandbrake boolean @Whether handbrake should affect this wheel
---@field public TireType UTireType @Deprecated
---@field public TireConfig UTireConfig @Tire type for the wheel. Determines friction
---@field public LatStiffMaxLoad number @Max normalized tire load at which the tire can deliver no more lateral stiffness no matter how much extra load is applied to the tire.
---@field public LatStiffValue number @How much lateral stiffness to have given lateral slip
---@field public LongStiffValue number @How much longitudinal stiffness to have given longitudinal slip
---@field public SuspensionForceOffset number @Vertical offset from where suspension forces are applied (along Z-axis)
---@field public SuspensionMaxRaise number @How far the wheel can go above the resting position
---@field public SuspensionMaxDrop number @How far the wheel can drop below the resting position
---@field public SuspensionNaturalFrequency number @Oscillation frequency of suspension. Standard cars have values between 5 and 10
---@field public SuspensionDampingRatio number @The rate at which energy is dissipated from the spring. Standard cars have values between 0.8 and 1.2. values < 1 are more sluggish, values > 1 or more twitchy
---@field public SweepType integer @Whether wheel suspension considers simple, complex, or both
---@field public MaxBrakeTorque number @max brake torque for this wheel (Nm)
---@field public MaxHandBrakeTorque number @Max handbrake brake torque for this wheel (Nm). A handbrake should have a stronger brake torque than the brake. This will be ignored for wheels that are not affected by the handbrake.
---@field public VehicleSim UWheeledVehicleMovementComponent @The vehicle that owns us
---@field public WheelIndex integer @Our index in the vehicle's (and setup's) wheels array
---@field public DebugLongSlip number @Longitudinal slip experienced by the wheel
---@field public DebugLatSlip number @Lateral slip experienced by the wheel
---@field public DebugNormalizedTireLoad number @How much force the tire experiences at rest divided by how much force it is experiencing now
---@field public DebugWheelTorque number @Wheel torque
---@field public DebugLongForce number @Longitudinal force the wheel is applying to the chassis
---@field public DebugLatForce number @Lateral force the wheel is applying to the chassis
---@field public Location FVector @Worldspace location of this wheel
---@field public OldLocation FVector @Worldspace location of this wheel last frame
---@field public Velocity FVector @Current velocity of the wheel center (change in location over time)
local UVehicleWheel = {}

---@return boolean
function UVehicleWheel:IsInAir() end

---@return number
function UVehicleWheel:GetSuspensionOffset() end

---@return number
function UVehicleWheel:GetSteerAngle() end

---@return number
function UVehicleWheel:GetRotationAngle() end

