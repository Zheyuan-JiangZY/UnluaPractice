---Evaluates a point in an anim sequence, using a specific time input rather than advancing time internally.
---Typically the playback position of the animation for this node will represent something other than time, like jump height.
---This node will not trigger any notifies present in the associated sequence.
---@class FAnimNode_SequenceEvaluator : FAnimNode_AssetPlayerBase
---@field public Sequence UAnimSequenceBase @The animation sequence asset to evaluate
---@field public ExplicitTime number @The time at which to evaluate the associated sequence
---@field public bShouldLoop boolean @This only works if bTeleportToExplicitTime is false OR this node is set to use SyncGroup
---@field public bTeleportToExplicitTime boolean @If true, teleport to explicit time, does NOT advance time (does not trigger notifies, does not extract Root Motion, etc.)       If false, will advance time (will trigger notifies, extract root motion if applicable, etc.)       Note: using a sync group forces advancing time regardless of what this option is set to.
---@field public ReinitializationBehavior integer @What to do when SequenceEvaluator is reinitialized
---@field public StartPosition number @The start up position, it only applies when ReinitializationBehavior == StartPosition. Only used when bTeleportToExplicitTime is false.
local FAnimNode_SequenceEvaluator = {}
