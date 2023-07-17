---Structure containing information about one hit of an overlap test
---@class FOverlapResult
---@field public Actor TWeakObjectPtr<AActor> @Actor that the check hit.
---@field public Component TWeakObjectPtr<UPrimitiveComponent> @PrimitiveComponent that the check hit.
---@field public bBlockingHit boolean @Indicates if this hit was requesting a block - if false, was requesting a touch instead
local FOverlapResult = {}
