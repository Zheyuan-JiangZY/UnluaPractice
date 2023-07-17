---Set a uniform vector value independently of the sample position.The output is equal to magnitude * direction
---@class UUniformVector : UFieldNodeVector
---@field public Magnitude number @Magnitude of the uniform vector field
---@field public Direction FVector @Normalized direction of the uniform vector field
local UUniformVector = {}

---Set a uniform vector value independently of the sample position.The output is equal to magnitude * direction
---@param Magnitude number
---@param Direction FVector
---@return UUniformVector
function UUniformVector:SetUniformVector(Magnitude, Direction) end

