---Creates raycast requests and delegates their result.
---@class UMagicLeapRaycastComponent : UActorComponent
local UMagicLeapRaycastComponent = {}

---Requests a raycast with the given query parameters.
---@param RequestParams FMagicLeapRaycastQueryParams
---@param ResultDelegate Delegate
---@return boolean
function UMagicLeapRaycastComponent:RequestRaycast(RequestParams, ResultDelegate) end

---Delegate used to convey the result of a raycast.
---@param HitResult FMagicLeapRaycastHitResult
function UMagicLeapRaycastComponent:RaycastResultDelegate__DelegateSignature(HitResult) end

