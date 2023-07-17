---URig : that has rigging data for skeleton
---        - used for retargeting
---        - support to share different animations
---@class URig : UObject
---@field private TransformBases TArray<FTransformBase> @Skeleton bone tree - each contains name and parent index*
---@field private Nodes TArray<FNode> @Skeleton bone tree - each contains name and parent index*
local URig = {}

