---An audio component that also provides curves to drive animation
---@class UAudioCurveSourceComponent : UAudioComponent
---@field public CurveSourceBindingName string @Get the name that this curve source can be bound to by. Clients of this curve source will use this name to identify this source.
---@field public CurveSyncOffset number @Offset in time applied to audio position when evaluating curves
local UAudioCurveSourceComponent = {}

---Get the value for a specified curve
---@param CurveName string
---@return number
function UAudioCurveSourceComponent:GetCurveValue(CurveName) end

---Evaluate all curves that this source provides
---@param OutValues TArray_FNamedCurveValue_ @[out] 
function UAudioCurveSourceComponent:GetCurves(OutValues) end

---Get the name that this curve source can be bound to by.
---Clients of this curve source will use this name to identify this source.
---@return string
function UAudioCurveSourceComponent:GetBindingName() end

