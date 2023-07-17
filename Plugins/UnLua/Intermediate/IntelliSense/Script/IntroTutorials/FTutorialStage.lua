---A single tutorial stage, containing the optional main content & a number of widgets with content attached
---@class FTutorialStage
---@field public Name string @Identifier for this stage
---@field public Content FTutorialContent @Non-widget-bound content to display in this stage
---@field public WidgetContent TArray<FTutorialWidgetContent> @Widget-bound content to display for this stage
---@field public NextButtonText string @Text to display on the next button
---@field public BackButtonText string @Text to display on the back button
---@field public PlatformsToTest TArray<string> @List of platforms to test against. Meaning of test is determined by InvertPlatformTest.
---@field public bInvertPlatformTest boolean @If false, stage will be skipped if running on any platform in PlatformsToTest. If true, the stage will be if not running on any platform in PlatformsToTest.
local FTutorialStage = {}
