---Editor-wide tutorial settings
---@class UEditorTutorialSettings : UObject
---@field public bDisableAllTutorialAlerts boolean @Disable the pulsing alert that indicates a new tutorial is available.
---@field public Categories TArray<FTutorialCategory> @Categories for tutorials
---@field public StartupTutorial FSoftClassPath @Tutorial to start on Editor startup
---@field public TutorialContexts TArray<FTutorialContext> @Tutorials used in various contexts - e.g. the various asset editors
local UEditorTutorialSettings = {}

