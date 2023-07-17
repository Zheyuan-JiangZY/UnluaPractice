---@class FVehicleDifferential4WData
---@field public DifferentialType integer @Type of differential
---@field public FrontRearSplit number @Ratio of torque split between front and rear (>0.5 means more to front, <0.5 means more to rear, works only with 4W type)
---@field public FrontLeftRightSplit number @Ratio of torque split between front-left and front-right (>0.5 means more to front-left, <0.5 means more to front-right, works only with 4W and LimitedSlip_FrontDrive)
---@field public RearLeftRightSplit number @Ratio of torque split between rear-left and rear-right (>0.5 means more to rear-left, <0.5 means more to rear-right, works only with 4W and LimitedSlip_RearDrive)
---@field public CentreBias number @Maximum allowed ratio of average front wheel rotation speed and rear wheel rotation speeds (range: 1..inf, works only with LimitedSlip_4W)
---@field public FrontBias number @Maximum allowed ratio of front-left and front-right wheel rotation speeds (range: 1..inf, works only with LimitedSlip_4W, LimitedSlip_FrontDrive)
---@field public RearBias number @Maximum allowed ratio of rear-left and rear-right wheel rotation speeds (range: 1..inf, works only with LimitedSlip_4W, LimitedSlip_FrontDrive)
local FVehicleDifferential4WData = {}
