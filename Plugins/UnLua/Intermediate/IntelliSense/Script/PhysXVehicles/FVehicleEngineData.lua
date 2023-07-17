---@class FVehicleEngineData
---@field public TorqueCurve FRuntimeFloatCurve @Torque (Nm) at a given RPM
---@field public MaxRPM number @Maximum revolutions per minute of the engine
---@field public MOI number @Moment of inertia of the engine around the axis of rotation (Kgm^2).
---@field public DampingRateFullThrottle number @Damping rate of engine when full throttle is applied (Kgm^2/s)
---@field public DampingRateZeroThrottleClutchEngaged number @Damping rate of engine in at zero throttle when the clutch is engaged (Kgm^2/s)
---@field public DampingRateZeroThrottleClutchDisengaged number @Damping rate of engine in at zero throttle when the clutch is disengaged (in neutral gear) (Kgm^2/s)
local FVehicleEngineData = {}
