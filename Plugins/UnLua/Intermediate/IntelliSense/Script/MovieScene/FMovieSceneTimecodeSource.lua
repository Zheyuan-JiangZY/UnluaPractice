---@class FMovieSceneTimecodeSource
---@field public Timecode FTimecode @The global timecode at which this target is based (ie. the timecode at the beginning of the movie scene section when it was recorded)
---@field public DeltaFrame FFrameNumber @The delta from the original placement of this target
local FMovieSceneTimecodeSource = {}
