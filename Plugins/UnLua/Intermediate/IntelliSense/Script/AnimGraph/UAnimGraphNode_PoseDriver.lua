---@class UAnimGraphNode_PoseDriver : UAnimGraphNode_PoseHandler
---@field public Node FAnimNode_PoseDriver
---@field public AxisLength number @Length of axis in world units used for debug drawing
---@field public ConeSubdivision integer @Number of subdivisions / lines used when debug drawing a cone
---@field public bDrawDebugCones boolean @If checked the cones will be drawn in 3d for debugging
---@field public LastPreviewComponent USkeletalMeshComponent @Used to refer back to preview instance in anim tools
local UAnimGraphNode_PoseDriver = {}

