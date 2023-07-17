---Move Directly Toward task node.
---Moves the AI pawn toward the specified Actor or Location (Vector) blackboard entry in a straight line, without regard to any navigation system. If you need the AI to navigate, use the "Move To" node instead.
---@class UBTTask_MoveDirectlyToward : UBTTask_MoveTo
---@field public bDisablePathUpdateOnGoalLocationChange boolean
---@field public bProjectVectorGoalToNavigation boolean
---@field private bUpdatedDeprecatedProperties boolean
local UBTTask_MoveDirectlyToward = {}

