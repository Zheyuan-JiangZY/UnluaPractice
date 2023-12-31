---@class FBakedAnimationState
---@field public StateName string @The name of this state
---@field public Transitions TArray<FBakedStateExitTransition> @Set of legal transitions out of this state; already in priority order
---@field public StateRootNodeIndex integer @The root node index (into the AnimNodeProperties array of the UAnimBlueprintGeneratedClass)
---@field public StartNotify integer
---@field public EndNotify integer
---@field public FullyBlendedNotify integer
---@field public bIsAConduit boolean
---@field public EntryRuleNodeIndex integer
---@field public PlayerNodeIndices TArray<integer> @Indices into the property array for player nodes in the state
---@field public LayerNodeIndices TArray<integer> @Indices into the property array for layer nodes in the state
---@field public bAlwaysResetOnEntry boolean @Whether or not this state will ALWAYS reset it's state on reentry, regardless of remaining weight
local FBakedAnimationState = {}
