---@class UPawnActionsComponent : UActorComponent
---@field protected ControlledPawn APawn
---@field protected ActionStacks TArray<FPawnActionStack>
---@field protected ActionEvents TArray<FPawnActionEvent>
---@field protected CurrentAction UPawnAction
local UPawnActionsComponent = {}

---@param NewAction UPawnAction
---@param Priority integer
---@param Instigator UObject @[opt] 
---@return boolean
function UPawnActionsComponent:K2_PushAction(NewAction, Priority, Instigator) end

---blueprint interface
---@param Pawn APawn
---@param Action UPawnAction
---@param Priority integer @[opt] 
---@return boolean
function UPawnActionsComponent.K2_PerformAction(Pawn, Action, Priority) end

---Aborts given action instance
---@param ActionToAbort UPawnAction
---@return integer
function UPawnActionsComponent:K2_ForceAbortAction(ActionToAbort) end

---Aborts given action instance
---@param ActionToAbort UPawnAction
---@return integer
function UPawnActionsComponent:K2_AbortAction(ActionToAbort) end

