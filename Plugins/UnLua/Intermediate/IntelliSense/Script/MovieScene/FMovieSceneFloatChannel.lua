---@class FMovieSceneFloatChannel : FMovieSceneChannel
---@field public PreInfinityExtrap integer @Pre-infinity extrapolation state
---@field public PostInfinityExtrap integer @Post-infinity extrapolation state
---@field private Times TArray<FFrameNumber>
---@field private Values TArray<FMovieSceneFloatValue>
---@field private DefaultValue number
---@field private bHasDefaultValue boolean
---@field private KeyHandles FMovieSceneKeyHandleMap @This needs to be a UPROPERTY so it gets saved into editor transactions but transient so it doesn't get saved into assets.
---@field private TickResolution FFrameRate
local FMovieSceneFloatChannel = {}
