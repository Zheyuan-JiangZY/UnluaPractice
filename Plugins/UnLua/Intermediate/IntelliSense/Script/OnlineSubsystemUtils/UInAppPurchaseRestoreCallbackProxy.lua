---@class UInAppPurchaseRestoreCallbackProxy : UObject
---@field public OnSuccess MulticastDelegate @Called when there is a successful In-App Purchase transaction
---@field public OnFailure MulticastDelegate @Called when there is an unsuccessful In-App Purchase transaction
local UInAppPurchaseRestoreCallbackProxy = {}

---Kicks off a transaction for the provided product identifier
---@param ConsumableProductFlags TArray_FInAppPurchaseProductRequest_
---@param PlayerController APlayerController
---@return UInAppPurchaseRestoreCallbackProxy
function UInAppPurchaseRestoreCallbackProxy.CreateProxyObjectForInAppPurchaseRestore(ConsumableProductFlags, PlayerController) end

