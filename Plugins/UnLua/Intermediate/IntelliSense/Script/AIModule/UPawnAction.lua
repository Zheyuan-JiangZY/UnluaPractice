---Things to remember:
---* Actions are created paused
---@class UPawnAction : UObject
---@field private ChildAction UPawnAction @Current child node executing on top of this Action
---@field private ParentAction UPawnAction
---@field private OwnerComponent UPawnActionsComponent @Extra reference to the component this action is being governed by
---@field private Instigator UObject @indicates an object that caused this action. Used for mass removal of actions     by specific object
---@field protected BrainComp UBrainComponent @
---@field protected bAllowNewSameClassInstance boolean @if this is FALSE and we're trying to push a new instance of a given class,     but the top of the stack is already an instance of that class ignore the attempted push
---@field protected bReplaceActiveSameClassInstance boolean @if this is TRUE, when we try to push a new instance of an action who has the     same class as the action on the top of the stack, pop the one on the stack, and push the new one     NOTE: This trumps bAllowNewClassInstance (e.g. if this is true and bAllowNewClassInstance     is false the active instance will still be replaced)
---@field protected bShouldPauseMovement boolean @this is a temporary solution to allow having movement action running in background while there's     another action on top doing its thing     @@note should go away once AI resource locking comes on-line
---@field protected bAlwaysNotifyOnFinished boolean @if set, action will call OnFinished notify even when ending as FailedToStart
local UPawnAction = {}

---Blueprint interface
---@return integer
function UPawnAction:GetActionPriority() end

---@param WithResult integer
function UPawnAction:Finish(WithResult) end

---@param WorldContextObject UObject
---@param ActionClass TSubclassOf_UPawnAction_
---@return UPawnAction
function UPawnAction.CreateActionInstance(WorldContextObject, ActionClass) end

