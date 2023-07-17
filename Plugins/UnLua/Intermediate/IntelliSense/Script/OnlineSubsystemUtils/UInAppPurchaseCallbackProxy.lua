---@class UInAppPurchaseCallbackProxy : UObject
---@field public OnSuccess MulticastDelegate @Called when there is a successful In-App Purchase transaction
---@field public OnFailure MulticastDelegate @Called when there is an unsuccessful In-App Purchase transaction
local UInAppPurchaseCallbackProxy = {}

---Kicks off a transaction for the provided product identifier
---@param PlayerController APlayerController
---@param ProductRequest FInAppPurchaseProductRequest
---@return UInAppPurchaseCallbackProxy
function UInAppPurchaseCallbackProxy.CreateProxyObjectForInAppPurchase(PlayerController, ProductRequest) end

