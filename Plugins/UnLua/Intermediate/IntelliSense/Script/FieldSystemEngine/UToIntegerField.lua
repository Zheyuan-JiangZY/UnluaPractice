---Convert a scalar field to a integer one
---@class UToIntegerField : UFieldNodeInt
---@field public FloatField UFieldNodeFloat @Scalar field to be converted to an an integer one
local UToIntegerField = {}

---Convert a float field to a integer one
---@param FloatField UFieldNodeFloat
---@return UToIntegerField
function UToIntegerField:SetToIntegerField(FloatField) end

