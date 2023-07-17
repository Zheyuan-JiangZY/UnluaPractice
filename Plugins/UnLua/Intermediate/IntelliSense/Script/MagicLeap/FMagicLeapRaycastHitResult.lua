---Result of a raycast.
---@class FMagicLeapRaycastHitResult
---@field public HitState EMagicLeapRaycastResultState @The raycast result. If this field is either RequestFailed or NoCollision,         most of the fields in this structure are invalid.
---@field public HitPoint FVector @Where in the world the collision happened. This field is only valid if the state         is either HitUnobserved or HitObserved.
---@field public Normal FVector @Normal to the surface where the ray collided. This field is only valid if the state         is either HitUnobserved or HitObserved
---@field public Confidence number @Confidence of the raycast result.         Confidence is a non-negative value from 0 to 1 where closer to 1 indicates a higher quality.         It will be an indication of how much error there is in the averaging.         For example, a flat plane will have a high confidence, while if the surface was very noisy the confidence         would be very low. This field is only valid if the state is either HitUnobserved or HitObserved.
---@field public UserData integer @The data set in the RaycastQueryParams. This can be used for query identification.
local FMagicLeapRaycastHitResult = {}
