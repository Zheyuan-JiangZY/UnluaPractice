---@class UCrowdFollowingComponent : UPathFollowingComponent
---@field public CrowdAgentMoveDirection FVector
---@field protected CharacterMovement UCharacterMovementComponent
local UCrowdFollowingComponent = {}

---master switch for crowd steering & avoidance
---@param bSuspend boolean
function UCrowdFollowingComponent:SuspendCrowdSteering(bSuspend) end

