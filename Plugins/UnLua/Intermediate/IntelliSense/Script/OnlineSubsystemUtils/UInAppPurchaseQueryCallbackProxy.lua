---@class UInAppPurchaseQueryCallbackProxy : UObject
---@field public OnSuccess MulticastDelegate @Called when there is a successful InAppPurchase query
---@field public OnFailure MulticastDelegate @Called when there is an unsuccessful InAppPurchase query
local UInAppPurchaseQueryCallbackProxy = {}

---Queries a InAppPurchase for an integer value
---@param PlayerController APlayerController
---@param ProductIdentifiers TArray_string_
---@return UInAppPurchaseQueryCallbackProxy
function UInAppPurchaseQueryCallbackProxy.CreateProxyObjectForInAppPurchaseQuery(PlayerController, ProductIdentifiers) end

