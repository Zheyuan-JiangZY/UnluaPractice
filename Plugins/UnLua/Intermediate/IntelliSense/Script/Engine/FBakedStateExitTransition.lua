---@class FBakedStateExitTransition
---@field public CanTakeDelegateIndex integer @The node property index for this rule
---@field public CustomResultNodeIndex integer @The blend graph result node index
---@field public TransitionIndex integer @The index into the machine table of transitions
---@field public bDesiredTransitionReturnValue boolean @What the transition rule node needs to return to take this transition (for bidirectional transitions)
---@field public bAutomaticRemainingTimeRule boolean @Automatic Transition Rule based on animation remaining time.
---@field public PoseEvaluatorLinks TArray<integer>
local FBakedStateExitTransition = {}
