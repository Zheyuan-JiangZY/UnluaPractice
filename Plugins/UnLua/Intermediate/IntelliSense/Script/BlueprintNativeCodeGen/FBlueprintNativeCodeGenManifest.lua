---FBlueprintNativeCodeGenManifest
---@class FBlueprintNativeCodeGenManifest
---@field private ManifestChunkId integer @To uniquely identify related manifests (split between child cook processes), so the files remain distinct.
---@field private PluginName string
---@field private OutputDir string @Target plugin directory (relative to the project's directory)
---@field private ModuleDependencies TArray<UPackage>
---@field private ConvertedAssets TMap<string, FConvertedAssetRecord>
---@field private UnconvertedDependencies TMap<string, FUnconvertedDependencyRecord>
---@field private NativizationOptions FCompilerNativizationOptions
local FBlueprintNativeCodeGenManifest = {}
