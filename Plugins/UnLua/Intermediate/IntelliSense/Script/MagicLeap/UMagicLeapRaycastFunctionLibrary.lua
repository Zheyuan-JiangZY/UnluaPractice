---@class UMagicLeapRaycastFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapRaycastFunctionLibrary = {}

---@param Position FVector
---@param Direction FVector
---@param UpVector FVector
---@param Width integer
---@param Height integer
---@param HorizontalFovDegrees number
---@param CollideWithUnobserved boolean
---@param UserData integer
---@return FMagicLeapRaycastQueryParams
function UMagicLeapRaycastFunctionLibrary.MakeRaycastQueryParams(Position, Direction, UpVector, Width, Height, HorizontalFovDegrees, CollideWithUnobserved, UserData) end

