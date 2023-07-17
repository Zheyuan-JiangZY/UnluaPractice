---Implements the Editor's user settings.
---@class UAutomationTestSettings : UObject
---@field public EngineTestModules TArray<string> @Modules to load that have engine tests
---@field public EditorTestModules TArray<string> @Modules to load that have editor tests
---@field public AutomationTestmap FSoftObjectPath @The automation test map to be used for several of the automation tests.
---@field public EditorPerformanceTestMaps TArray<FEditorMapPerformanceTestDefinition> @The map to be used for the editor performance capture tool.
---@field public AssetsToOpen TArray<FSoftObjectPath> @Asset to test for open in automation process
---@field public MapsToPIETest TArray<string> @Maps to PIE during the PIE test
---@field public BuildPromotionTest FBuildPromotionTestSettings @Editor build promotion test settings
---@field public MaterialEditorPromotionTest FMaterialEditorPromotionSettings @Material editor promotion test settings
---@field public ParticleEditorPromotionTest FParticleEditorPromotionSettings @Particle editor promotion test settings
---@field public BlueprintEditorPromotionTest FBlueprintEditorPromotionSettings @Blueprint editor promotion test settings
---@field public TestLevelFolders TArray<string> @Folders containing levels to exclude from automated tests
---@field public ExternalTools TArray<FExternalToolDefinition> @External executables and scripts to run as part of automation.
---@field public ImportExportTestDefinitions TArray<FEditorImportExportTestDefinition> @Asset import / Export test settings
---@field public LaunchOnSettings TArray<FLaunchOnTestSettings> @The map and device type to be used for the editor Launch On With Map Iterations test.
---@field public DefaultScreenshotResolution FIntPoint @The default resolution to take all automation screenshots at.
---@field public PIETestDuration number @PIE test duration in seconds. Only applied if you do PIETest
local UAutomationTestSettings = {}

