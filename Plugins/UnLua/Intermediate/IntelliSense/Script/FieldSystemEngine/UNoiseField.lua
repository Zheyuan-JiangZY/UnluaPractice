---Defines a perlin noise scalar value if the sample is within a box
---@class UNoiseField : UFieldNodeFloat
---@field public MinRange number @The initial function value between 0 and 1 will be scaled between MinRange and MaxRange
---@field public MaxRange number @The initial function value between 0 and 1 will be scaled between MinRange and MaxRange
---@field public Transform FTransform @Transform of the box in which the perlin noise will be defined
local UNoiseField = {}

---Defines a perlin noise scalar value if the sample is within a box
---@param MinRange number
---@param MaxRange number
---@param Transform FTransform
---@return UNoiseField
function UNoiseField:SetNoiseField(MinRange, MaxRange, Transform) end

