---@class UEditorSettings : UObject
---@field public GlobalLocalDDCPath FDirectoryPath @Adjusts the local global DDC caching location.  This affects every project on your computer that uses the UE-LocalDataCachePath environment variable to determine if we're overriding the Local DDC Path, this is the first location ANY project that doesn't override the DDC path will look for a cache texture, shader...etc.
---@field public GlobalSharedDDCPath FDirectoryPath @Adjusts the network or shared global DDC caching location.  This is one of the areas queried after Local fails. This affects every project on your computer that uses the UE-SharedDataCachePath environment variable override.
---@field public LocalDerivedDataCache FDirectoryPath @Directory to be used for caching derived data locally (native textures, compiled shaders, etc...). The editor must be restarted for changes to take effect. This will override the 'Global Local DDC Path'.
---@field public SharedDerivedDataCache FDirectoryPath @Path to a network share that can be used for sharing derived data (native textures, compiled shaders, etc...) with a team. Will not disabled if this directory cannot be accessed. The editor must be restarted for changes to take effect, this will override the 'Global Network DDC Path'
---@field public bEnableS3DDC boolean @Whether to enable the S3 derived data cache backend
---@field public GlobalS3DDCPath FDirectoryPath @Adjusts the local global DDC caching location for AWS/S3 downloaded package bundles. This affects every project on your computer that uses the UE-S3DataCachePath environment variable override.
---@field public bLoadTheMostRecentlyLoadedProjectAtStartup boolean @When checked, the most recently loaded project will be auto-loaded at editor startup if no other project was specified on the command line
---@field public RecentlyOpenedProjectFiles TArray<string> @Game project files that were recently opened in the editor
---@field public CreatedProjectPaths TArray<string> @The paths of projects created with the new project wizard. This is used to populate the "Path" field of the new project dialog.
---@field public bCopyStarterContentPreference boolean
---@field public CompletedSurveys TArray<FGuid> @The id's of the surveys completed
---@field public InProgressSurveys TArray<FGuid> @The id's of the surveys currently in-progress
---@field public AutoScalabilityWorkScaleAmount number
local UEditorSettings = {}

