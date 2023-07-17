---@class UChaosGameplayEventDispatcher : UChaosEventListenerComponent
---@field private CollisionEventRegistrations TMap<UPrimitiveComponent, FChaosHandlerSet>
---@field private BreakEventRegistrations TMap<UPrimitiveComponent, FBreakEventCallbackWrapper>
local UChaosGameplayEventDispatcher = {}

