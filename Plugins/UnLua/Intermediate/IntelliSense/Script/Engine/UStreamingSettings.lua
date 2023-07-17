---Streaming settings.
---@class UStreamingSettings : UDeveloperSettings
---@field protected AsyncLoadingThreadEnabled boolean @Enables separate thread for package streaming. Requires restart to take effect.
---@field protected WarnIfTimeLimitExceeded boolean @Enables log warning if time limit for time-sliced package streaming has been exceeded.
---@field protected TimeLimitExceededMultiplier number @Multiplier for time limit exceeded warning time threshold.
---@field protected TimeLimitExceededMinTime number @Minimum time the time limit exceeded warning will be triggered by.
---@field protected MinBulkDataSizeForAsyncLoading integer @Minimum time the time limit exceeded warning will be triggered by.
---@field protected UseBackgroundLevelStreaming boolean @Whether to allow background level streaming.
---@field protected AsyncLoadingUseFullTimeLimit boolean @Whether to use the entire time limit even if blocked on I/O.
---@field protected AsyncLoadingTimeLimit number @Maximum amount of time to spend doing asynchronous loading (ms per frame).
---@field protected PriorityAsyncLoadingExtraTime number @Additional time to spend asynchronous loading during a high priority load.
---@field protected LevelStreamingActorsUpdateTimeLimit number @Maximum allowed time to spend for actor registration steps during level streaming (ms per frame).
---@field protected PriorityLevelStreamingActorsUpdateExtraTime number @Additional time to spend on actor registration steps during a high priority load.
---@field protected LevelStreamingComponentsRegistrationGranularity integer @Batching granularity used to register actor components during level streaming.
---@field protected LevelStreamingUnregisterComponentsTimeLimit number @Maximum allowed time to spend while unregistering components during level streaming (ms per frame).
---@field protected LevelStreamingComponentsUnregistrationGranularity integer @Batching granularity used to unregister actor components during level streaming.
---@field protected FlushStreamingOnExit boolean @If enabled, streaming will be flushed when exiting application, otherwise it will be cancelled.
---@field protected EventDrivenLoaderEnabled boolean @Enables the event driven loader in cooked builds (default). Disabling EDL will result in using deprecated loading path.
local UStreamingSettings = {}

