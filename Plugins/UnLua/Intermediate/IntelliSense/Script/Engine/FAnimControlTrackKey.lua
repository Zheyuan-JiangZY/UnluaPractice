---Structure used for holding information for one animation played on the Anim Control track.
---@class FAnimControlTrackKey
---@field public StartTime number @Position in the Matinee sequence to start playing this animation.
---@field public AnimSeq UAnimSequence @Animation Sequence to play
---@field public AnimStartOffset number @Time to start playing AnimSequence at.
---@field public AnimEndOffset number @Time to end playing the AnimSequence at.
---@field public AnimPlayRate number @Playback speed of this animation.
---@field public bLooping boolean @Should this animation loop.
---@field public bReverse boolean @Whether to play the animation in reverse or not.
local FAnimControlTrackKey = {}
