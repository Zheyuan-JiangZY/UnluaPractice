---@class UAITask_MoveTo : UAITask
---@field protected OnRequestFailed MulticastDelegate
---@field protected OnMoveFinished MulticastDelegate
---@field protected MoveRequest FAIMoveRequest @parameters of move request
local UAITask_MoveTo = {}

---@param Controller AAIController
---@param GoalLocation FVector
---@param GoalActor AActor @[opt] 
---@param AcceptanceRadius number @[opt] 
---@param StopOnOverlap integer @[opt] 
---@param AcceptPartialPath integer @[opt] 
---@param bUsePathfinding boolean @[opt] 
---@param bLockAILogic boolean @[opt] 
---@param bUseContinuosGoalTracking boolean @[opt] 
---@param ProjectGoalOnNavigation integer @[opt] 
---@return UAITask_MoveTo
function UAITask_MoveTo.AIMoveTo(Controller, GoalLocation, GoalActor, AcceptanceRadius, StopOnOverlap, AcceptPartialPath, bUsePathfinding, bLockAILogic, bUseContinuosGoalTracking, ProjectGoalOnNavigation) end

