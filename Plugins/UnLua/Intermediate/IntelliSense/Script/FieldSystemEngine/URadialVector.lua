---Set a radial vector value, the direction being the vector from the sample position to the field one. The output is equal to magnitude * direction
---@class URadialVector : UFieldNodeVector
---@field public Magnitude number @Magnitude of the radial vector field
---@field public Position FVector @Center position of the radial vector field
local URadialVector = {}

---Set a radial vector value. The direction is the normalized vector from the field position to the sample one. The output is equal to this direction * magnitude.
---@param Magnitude number
---@param Position FVector
---@return URadialVector
function URadialVector:SetRadialVector(Magnitude, Position) end

