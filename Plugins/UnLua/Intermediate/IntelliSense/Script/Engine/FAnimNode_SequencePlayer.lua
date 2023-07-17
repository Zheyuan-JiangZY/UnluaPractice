---Sequence player node
---@class FAnimNode_SequencePlayer : FAnimNode_AssetPlayerBase
---@field public Sequence UAnimSequenceBase @The animation sequence asset to play
---@field public PlayRateBasis number @The Basis in which the PlayRate is expressed in. This is used to rescale PlayRate inputs. For example a Basis of 100 means that the PlayRate input will be divided by 100.
---@field public PlayRate number @The play rate multiplier. Can be negative, which will cause the animation to play in reverse.
---@field public PlayRateScaleBiasClamp FInputScaleBiasClamp @Additional scaling, offsetting and clamping of PlayRate input. Performed after PlayRateBasis.
---@field public StartPosition number @The start up position, it only applies when reinitialized if you loop, it will still start from 0.f after finishing the round
---@field public bLoopAnimation boolean @Should the animation continue looping when it reaches the end?
local FAnimNode_SequencePlayer = {}
