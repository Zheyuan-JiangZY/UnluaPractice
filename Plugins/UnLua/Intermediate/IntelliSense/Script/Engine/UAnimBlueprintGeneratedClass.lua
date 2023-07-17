---@class UAnimBlueprintGeneratedClass : UBlueprintGeneratedClass
---@field public BakedStateMachines TArray<FBakedAnimationStateMachine> @List of state machines present in this blueprint class
---@field public TargetSkeleton USkeleton @Target skeleton for this blueprint class
---@field public AnimNotifies TArray<FAnimNotifyEvent> @A list of anim notifies that state machines (or anything else) may reference
---@field public OrderedSavedPoseIndicesMap TMap<string, FCachedPoseIndices> @Indices for each of the saved pose nodes that require updating, in the order they need to get updates, per layer
---@field public SyncGroupNames TArray<string> @Array of sync group names in the order that they are requested during compile
---@field public EvaluateGraphExposedInputs TArray<FExposedValueHandler> @The default handler for graph-exposed inputs
---@field public GraphAssetPlayerInformation TMap<string, FGraphAssetPlayerInformation> @Indices for any Asset Player found within a specific (named) Anim Layer Graph, or implemented Anim Interface Graph
---@field public GraphBlendOptions TMap<string, FAnimGraphBlendOptions> @Per layer graph blending options
---@field private PropertyAccessLibrary FPropertyAccessLibrary @The library holding the property access data
local UAnimBlueprintGeneratedClass = {}

