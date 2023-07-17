---
---@class FAnimNode_BlendSpacePlayer : FAnimNode_AssetPlayerBase
---@field public X number @The X coordinate to sample in the blendspace
---@field public Y number @The Y coordinate to sample in the blendspace
---@field public Z number @The Z coordinate to sample in the blendspace
---@field public PlayRate number @The play rate multiplier. Can be negative, which will cause the animation to play in reverse.
---@field public bLoop boolean @Should the animation continue looping when it reaches the end?
---@field public bResetPlayTimeWhenBlendSpaceChanges boolean @Whether we should reset the current play time when the blend space changes
---@field public StartPosition number @The start up position in [0, 1], it only applies when reinitialized if you loop, it will still start from 0.f after finishing the round
---@field public BlendSpace UBlendSpaceBase @The blendspace asset to play
---@field protected PreviousBlendSpace UBlendSpaceBase
local FAnimNode_BlendSpacePlayer = {}
