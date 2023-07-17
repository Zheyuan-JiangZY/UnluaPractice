---@class FCompilerNativizationOptions
---@field public PlatformName string
---@field public ServerOnlyPlatform boolean
---@field public ClientOnlyPlatform boolean
---@field public bExcludeMonolithicHeaders boolean
---@field public ExcludedModules TArray<string>
---@field public ExcludedAssets TSet<FSoftObjectPath> @Individually excluded assets
---@field public ExcludedFolderPaths TArray<string> @Excluded folders. It excludes only BPGCs, enums and structures are still converted.
local FCompilerNativizationOptions = {}
