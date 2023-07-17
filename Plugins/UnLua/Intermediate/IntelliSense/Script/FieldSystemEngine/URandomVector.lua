---Set a random vector value independently of the sample position. The output is equal to magnitude * random direction
---@class URandomVector : UFieldNodeVector
---@field public Magnitude number @Magnitude of the random vector field
local URandomVector = {}

---Set a random vector value independently of the sample position. The output is equal to magnitude * random direction
---@param Magnitude number
---@return URandomVector
function URandomVector:SetRandomVector(Magnitude) end

