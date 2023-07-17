---Base class for all track instances. Can also be used for master tracks where AnimatedObject will be nullptr
---@class UMovieSceneTrackInstance : UObject
---@field private AnimatedObject UObject
---@field private bIsMasterTrackInstance boolean
---@field private Linker UMovieSceneEntitySystemLinker
---@field private Inputs TArray<FMovieSceneTrackInstanceInput>
local UMovieSceneTrackInstance = {}

