---@class FMovieSceneSectionParameters
---@field public StartFrameOffset FFrameNumber @Number of frames (in display rate) to skip at the beginning of the sub-sequence.
---@field public bCanLoop boolean @Whether this section supports looping the sub-sequence.
---@field public EndFrameOffset FFrameNumber @Number of frames (in display rate) to skip at the beginning of the sub-sequence.
---@field public FirstLoopStartFrameOffset FFrameNumber @Number of frames (in display rate) to offset the first loop of the sub-sequence.
---@field public TimeScale number @Playback time scaling factor.
---@field public HierarchicalBias integer @Hierachical bias. Higher bias will take precedence.
local FMovieSceneSectionParameters = {}
