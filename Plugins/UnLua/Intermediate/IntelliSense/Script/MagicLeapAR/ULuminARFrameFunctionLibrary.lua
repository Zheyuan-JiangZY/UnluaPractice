---A function library that provides static/Blueprint functions associated with most recent LuminAR tracking frame.
---@class ULuminARFrameFunctionLibrary : UBlueprintFunctionLibrary
local ULuminARFrameFunctionLibrary = {}

---Traces a ray from the user's device in the direction of the given location in the camera
---view. Intersections with detected scene geometry are returned, sorted by distance from the
---device; the nearest intersection is returned first.
---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@param TraceChannels TSet_ELuminARLineTraceChannel_
---@param OutHitResults TArray_FARTraceResult_ @[out] 
---@return boolean
function ULuminARFrameFunctionLibrary.LuminARLineTrace(WorldContextObject, ScreenPosition, TraceChannels, OutHitResults) end

---Returns the current ARCore session status.
---@return ELuminARTrackingState
function ULuminARFrameFunctionLibrary.GetTrackingState() end

