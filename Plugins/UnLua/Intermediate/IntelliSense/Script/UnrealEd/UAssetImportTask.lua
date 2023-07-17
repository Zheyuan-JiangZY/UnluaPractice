---Contains data for a group of assets to import
---@class UAssetImportTask : UObject
---@field public Filename string @Filename to import
---@field public DestinationPath string @Path where asset will be imported to
---@field public DestinationName string @Optional custom name to import as
---@field public bReplaceExisting boolean @Overwrite existing assets
---@field public bReplaceExistingSettings boolean @Replace existing settings when overwriting existing assets
---@field public bAutomated boolean @Avoid dialogs
---@field public bSave boolean @Save after importing
---@field public Factory UFactory @Optional factory to use
---@field public Options UObject @Import options specific to the type of asset
---@field public ImportedObjectPaths TArray<string> @Paths to objects created or updated after import
---@field public Result TArray<UObject> @Imported objects
local UAssetImportTask = {}

