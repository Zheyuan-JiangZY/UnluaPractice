---@class FMovieSceneStringChannel : FMovieSceneChannel
---@field private Times TArray<FFrameNumber>
---@field private Values TArray<string> @Array of values that correspond to each key time
---@field private DefaultValue string @Default value used when there are no keys
---@field private bHasDefaultValue boolean
local FMovieSceneStringChannel = {}
