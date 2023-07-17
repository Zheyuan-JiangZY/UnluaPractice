---@class USimpleWheeledVehicleMovementComponent : UWheeledVehicleMovementComponent
local USimpleWheeledVehicleMovementComponent = {}

---Set the steer angle (in degrees) to be applied to a specific wheel
---@param SteerAngle number
---@param WheelIndex integer
function USimpleWheeledVehicleMovementComponent:SetSteerAngle(SteerAngle, WheelIndex) end

---Set the drive torque to be applied to a specific wheel
---@param DriveTorque number
---@param WheelIndex integer
function USimpleWheeledVehicleMovementComponent:SetDriveTorque(DriveTorque, WheelIndex) end

---Set the brake torque to be applied to a specific wheel
---@param BrakeTorque number
---@param WheelIndex integer
function USimpleWheeledVehicleMovementComponent:SetBrakeTorque(BrakeTorque, WheelIndex) end

