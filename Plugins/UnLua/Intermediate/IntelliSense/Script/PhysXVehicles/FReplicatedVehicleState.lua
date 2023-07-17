---@class FReplicatedVehicleState
---@field public SteeringInput number @input replication: steering
---@field public ThrottleInput number @input replication: throttle
---@field public BrakeInput number @input replication: brake
---@field public HandbrakeInput number @input replication: handbrake
---@field public CurrentGear integer @state replication: current gear
local FReplicatedVehicleState = {}
