---@class UWheeledVehicleMovementComponent4W : UWheeledVehicleMovementComponent
---@field public EngineSetup FVehicleEngineData @Engine
---@field public DifferentialSetup FVehicleDifferential4WData @Differential
---@field public AckermannAccuracy number @Accuracy of Ackermann steer calculation (range: 0..1)
---@field public TransmissionSetup FVehicleTransmissionData @Transmission data
---@field public SteeringCurve FRuntimeFloatCurve @Maximum steering versus forward speed (km/h)
local UWheeledVehicleMovementComponent4W = {}

