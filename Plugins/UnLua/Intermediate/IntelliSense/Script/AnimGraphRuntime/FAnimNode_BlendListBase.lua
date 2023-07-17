---Blend list node; has many children
---@class FAnimNode_BlendListBase : FAnimNode_Base
---@field public BlendPose TArray<FPoseLink>
---@field public BlendTime TArray<number>
---@field public TransitionType EBlendListTransitionType
---@field public BlendType EAlphaBlendOption
---@field protected bResetChildOnActivation boolean @This reinitializes child pose when re-activated. For example, when active child changes
---@field public CustomBlendCurve UCurveFloat
---@field public BlendProfile UBlendProfile
local FAnimNode_BlendListBase = {}
