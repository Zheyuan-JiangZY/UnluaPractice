---@class UWheeledVehicleMovementComponent : UPawnMovementComponent
---@field public bDeprecatedSpringOffsetMode boolean @Supports the old (before 4.14) way of applying spring forces. We used to offset from the vehicle center of mass instead of the spring location center of mass. You should only use this for existing content that hasn't been re-tuned
---@field public bReverseAsBrake boolean @If true, the brake and reverse controls will behave in a more arcade fashion where holding reverse also functions as brake. For a more realistic approach turn this off
---@field public bUseRVOAvoidance boolean @If set, component will use RVO avoidance
---@field protected bRawHandbrakeInput boolean @True if the player is holding the handbrake
---@field protected bRawGearUpInput boolean @True if the player is holding gear up
---@field protected bRawGearDownInput boolean @True if the player is holding gear down
---@field protected bWasAvoidanceUpdated boolean @Was avoidance updated in this frame?
---@field public Mass number @Mass to set the vehicle chassis to. It's much easier to tweak vehicle settings when the mass doesn't change due to tweaks with the physics asset. [kg]
---@field public WheelSetups TArray<FWheelSetup> @Wheels to create
---@field public DragCoefficient number @DragCoefficient of the vehicle chassis.
---@field public ChassisWidth number @Chassis width used for drag force computation (cm)
---@field public ChassisHeight number @Chassis height used for drag force computation (cm)
---@field public DragArea number @Drag area in cm^2
---@field public EstimatedMaxEngineSpeed number @Estimated mad speed for engine
---@field public MaxEngineRPM number @Max RPM for engine
---@field public DebugDragMagnitude number @Debug drag magnitude last applied
---@field public InertiaTensorScale FVector @Scales the vehicle's inertia in each direction (forward, right, up)
---@field public MinNormalizedTireLoad number @Clamp normalized tire load to this value
---@field public MinNormalizedTireLoadFiltered number @Clamp normalized tire load to this value
---@field public MaxNormalizedTireLoad number @Clamp normalized tire load to this value
---@field public MaxNormalizedTireLoadFiltered number @Clamp normalized tire load to this value
---@field public ThresholdLongitudinalSpeed number @PhysX sub-steps     More sub-steps provides better stability but with greater computational cost.     Typically, vehicles require more sub-steps at very low forward speeds.     The threshold longitudinal speed has a default value of 5 metres per second.
---@field public LowForwardSpeedSubStepCount integer @The sub-step count below the threshold longitudinal speed has a default of 3.
---@field public HighForwardSpeedSubStepCount integer @The sub-step count above the threshold longitudinal speed has a default of 1.
---@field public Wheels TArray<UVehicleWheel> @Our instanced wheels
---@field public RVOAvoidanceRadius number @Vehicle Radius to use for RVO avoidance (usually half of vehicle width)
---@field public RVOAvoidanceHeight number @Vehicle Height to use for RVO avoidance (usually vehicle height)
---@field public AvoidanceConsiderationRadius number @Area Radius to consider for RVO avoidance
---@field public RVOSteeringStep number @Value by which to alter steering per frame based on calculated avoidance
---@field public RVOThrottleStep number @Value by which to alter throttle per frame based on calculated avoidance
---@field public AvoidanceUID integer @No default value, for now it's assumed to be valid if GetAvoidanceManager() returns non-NULL.
---@field public AvoidanceGroup FNavAvoidanceMask @Moving actor's group mask
---@field public GroupsToAvoid FNavAvoidanceMask @Will avoid other agents if they are in one of specified groups
---@field public GroupsToIgnore FNavAvoidanceMask @Will NOT avoid other agents if they are in one of specified groups, higher priority than GroupsToAvoid
---@field public AvoidanceWeight number @De facto default value 0.5 (due to that being the default in the avoidance registration function), indicates RVO behavior.
---@field public PendingLaunchVelocity FVector @Temporarily holds launch velocity when pawn is to be launched so it happens at end of movement.
---@field protected ReplicatedState FReplicatedVehicleState @replicated state of vehicle
---@field protected RawSteeringInput number @What the player has the steering set to. Range -1...1
---@field protected RawThrottleInput number @What the player has the accelerator set to. Range -1...1
---@field protected RawBrakeInput number @What the player has the brake set to. Range -1...1
---@field protected SteeringInput number @Steering output to physics system. Range -1...1
---@field protected ThrottleInput number @Accelerator output to physics system. Range 0...1
---@field protected BrakeInput number @Brake output to physics system. Range 0...1
---@field protected HandbrakeInput number @Handbrake output to physics system. Range 0...1
---@field protected IdleBrakeInput number @How much to press the brake when the player has release throttle
---@field protected StopThreshold number @Auto-brake when absolute vehicle forward speed is less than this (cm/s)
---@field protected WrongDirectionThreshold number @Auto-brake when vehicle forward speed is opposite of player input by at least this much (cm/s)
---@field protected ThrottleInputRate FVehicleInputRate @Rate at which input throttle can rise and fall
---@field protected BrakeInputRate FVehicleInputRate @Rate at which input brake can rise and fall
---@field protected HandbrakeInputRate FVehicleInputRate @Rate at which input handbrake can rise and fall
---@field protected SteeringInputRate FVehicleInputRate @Rate at which input steering can rise and fall
---@field private OverrideController AController
local UWheeledVehicleMovementComponent = {}

---Set the flag that will be used to select auto-gears
---@param bUseAuto boolean
function UWheeledVehicleMovementComponent:SetUseAutoGears(bUseAuto) end

---Set the user input for the vehicle throttle
---@param Throttle number
function UWheeledVehicleMovementComponent:SetThrottleInput(Throttle) end

---Set the user input for gear (-1 reverse, 0 neutral, 1+ forward)
---@param GearNum integer
---@param bImmediate boolean
function UWheeledVehicleMovementComponent:SetTargetGear(GearNum, bImmediate) end

---Set the user input for the vehicle steering
---@param Steering number
function UWheeledVehicleMovementComponent:SetSteeringInput(Steering) end

---Set the user input for handbrake
---@param bNewHandbrake boolean
function UWheeledVehicleMovementComponent:SetHandbrakeInput(bNewHandbrake) end

---@param GroupMask FNavAvoidanceMask
function UWheeledVehicleMovementComponent:SetGroupsToIgnoreMask(GroupMask) end

---@param GroupFlags integer
function UWheeledVehicleMovementComponent:SetGroupsToIgnore(GroupFlags) end

---@param GroupMask FNavAvoidanceMask
function UWheeledVehicleMovementComponent:SetGroupsToAvoidMask(GroupMask) end

---@param GroupFlags integer
function UWheeledVehicleMovementComponent:SetGroupsToAvoid(GroupFlags) end

---Set the user input for gear up
---@param bNewGearUp boolean
function UWheeledVehicleMovementComponent:SetGearUp(bNewGearUp) end

---Set the user input for gear down
---@param bNewGearDown boolean
function UWheeledVehicleMovementComponent:SetGearDown(bNewGearDown) end

---Set the user input for the vehicle Brake
---@param Brake number
function UWheeledVehicleMovementComponent:SetBrakeInput(Brake) end

---@param GroupMask FNavAvoidanceMask
function UWheeledVehicleMovementComponent:SetAvoidanceGroupMask(GroupMask) end

---@param GroupFlags integer
function UWheeledVehicleMovementComponent:SetAvoidanceGroup(GroupFlags) end

---Change avoidance state and register with RVO manager if necessary
---@param bEnable boolean
function UWheeledVehicleMovementComponent:SetAvoidanceEnabled(bEnable) end

---Pass current state to server
---@param InSteeringInput number
---@param InThrottleInput number
---@param InBrakeInput number
---@param InHandbrakeInput number
---@param CurrentGear integer
function UWheeledVehicleMovementComponent:ServerUpdateState(InSteeringInput, InThrottleInput, InBrakeInput, InHandbrakeInput, CurrentGear) end

---Are gears being changed automatically?
---@return boolean
function UWheeledVehicleMovementComponent:GetUseAutoGears() end

---Get target gear
---@return integer
function UWheeledVehicleMovementComponent:GetTargetGear() end

---How fast the vehicle is moving forward
---@return number
function UWheeledVehicleMovementComponent:GetForwardSpeed() end

---Get current engine's rotation speed
---@return number
function UWheeledVehicleMovementComponent:GetEngineRotationSpeed() end

---Get current engine's max rotation speed
---@return number
function UWheeledVehicleMovementComponent:GetEngineMaxRotationSpeed() end

---Get current gear
---@return integer
function UWheeledVehicleMovementComponent:GetCurrentGear() end

