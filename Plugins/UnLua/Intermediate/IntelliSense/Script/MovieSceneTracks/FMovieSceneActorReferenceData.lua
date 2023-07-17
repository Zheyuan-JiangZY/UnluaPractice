---A curve of events
---@class FMovieSceneActorReferenceData : FMovieSceneChannel
---@field private KeyTimes TArray<FFrameNumber> @Sorted array of key times
---@field private DefaultValue FMovieSceneActorReferenceKey @Default value used when there are no keys
---@field private KeyValues TArray<FMovieSceneActorReferenceKey> @Array of values that correspond to each key time
local FMovieSceneActorReferenceData = {}
