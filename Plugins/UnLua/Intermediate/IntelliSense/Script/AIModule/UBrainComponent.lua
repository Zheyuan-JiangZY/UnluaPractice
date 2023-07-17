---@class UBrainComponent : UActorComponent
---@field protected BlackboardComp UBlackboardComponent @blackboard component
---@field protected AIOwner AAIController
local UBrainComponent = {}

---Stops currently running brain logic.
---@param Reason string
function UBrainComponent:StopLogic(Reason) end

---Starts brain logic. If brain is already running, will not do anything.
function UBrainComponent:StartLogic() end

---Restarts currently running or previously ran brain logic.
function UBrainComponent:RestartLogic() end

---@return boolean
function UBrainComponent:IsRunning() end

---@return boolean
function UBrainComponent:IsPaused() end

