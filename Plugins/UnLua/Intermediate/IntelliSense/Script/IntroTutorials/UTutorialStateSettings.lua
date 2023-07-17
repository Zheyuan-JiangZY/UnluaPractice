---Tutorial settings used to track completion state
---@class UTutorialStateSettings : UObject
---@field public TutorialsProgress TArray<FTutorialProgress>
---@field private bDismissedAllTutorials boolean @Record if user has chosen to cancel all tutorials
local UTutorialStateSettings = {}

