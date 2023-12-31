---Implements the Editor's user settings.
---@class UProjectPackagingSettings : UObject
---@field public Build EProjectPackagingBuild @Specifies whether to build the game executable during packaging.
---@field public BuildConfiguration integer @The build configuration for which the project is packaged.
---@field public BuildTarget string @Name of the target to build
---@field public StagingDirectory FDirectoryPath @The directory to which the packaged project will be copied.
---@field public FullRebuild boolean @If enabled, a full rebuild will be enforced each time the project is being packaged. If disabled, only modified files will be built, which can improve iteration time. Unless you iterate on packaging, we recommend full rebuilds when packaging.
---@field public ForDistribution boolean @If enabled, a distribution build will be created and the shipping configuration will be used If disabled, a development build will be created Distribution builds are for publishing to the App Store
---@field public IncludeDebugFiles boolean @If enabled, debug files will be included in the packaged game
---@field public BlueprintNativizationMethod EProjectPackagingBlueprintNativizationMethod @If enabled, then the project's Blueprint assets (including structs and enums) will be intermediately converted into C++ and used in the packaged project (in place of the .uasset files).
---@field public NativizeBlueprintAssets TArray<FFilePath> @List of Blueprints to include for nativization when using the exclusive method.
---@field public bIncludeNativizedAssetsInProjectGeneration boolean @If enabled, the nativized assets code plugin will be added to the Visual Studio solution if it exists when regenerating the game project. Intended primarily to assist with debugging the target platform after cooking with nativization turned on.
---@field public bExcludeMonolithicEngineHeadersInNativizedCode boolean @Whether or not to exclude monolithic engine headers (e.g. Engine.h) in the generated code when nativizing Blueprint assets. This may improve C++ compiler performance if your game code does not depend on monolithic engine headers to build.
---@field public UsePakFile boolean @If enabled, all content will be put into a one or more .pak files instead of many individual files (default = enabled).
---@field public bUseIoStore boolean @If enabled, all packages will be put into one or more container files.
---@field public bMakeBinaryConfig boolean @If enabled, staging will make a binary config fie for faster loading.
---@field public bGenerateChunks boolean @If enabled, will generate pak file chunks.  Assets can be assigned to chunks in the editor or via a delegate (See ShooterGameDelegates.cpp). Can be used for streaming installs (PS4 Playgo, XboxOne Streaming Install, etc)
---@field public bGenerateNoChunks boolean @If enabled, no platform will generate chunks, regardless of settings in platform-specific ini files.
---@field public bChunkHardReferencesOnly boolean @Normally during chunk generation all dependencies of a package in a chunk will be pulled into that package's chunk. If this is enabled then only hard dependencies are pulled in. Soft dependencies stay in their original chunk.
---@field public bForceOneChunkPerFile boolean @If true, individual files are only allowed to be in a single chunk and it will assign it to the lowest number requested If false, it may end up in multiple chunks if requested by the cooker
---@field public MaxChunkSize integer @If > 0 this sets a maximum size per chunk. Chunks larger than this size will be split into multiple pak files such as pakchunk0_s1 This can be set in platform specific game.ini files
---@field public bBuildHttpChunkInstallData boolean @If enabled, will generate data for HTTP Chunk Installer. This data can be hosted on webserver to be installed at runtime. Requires "Generate Chunks" enabled.
---@field public HttpChunkInstallDataDirectory FDirectoryPath @When "Build HTTP Chunk Install Data" is enabled this is the directory where the data will be build to.
---@field public bCompressed boolean @Create compressed cooked packages (decreased deployment size)
---@field public PakFileCompressionFormats string @A comma separated list of formats to use for .pak file compression. If more than one is specified, the list is in order of priority, with fallbacks to other formats in case of errors or unavailability of the format (plugin not enabled, etc). Commonly PakFileCompressionFormats=Oodle or PakFileCompressionFormats=None
---@field public bForceUseProjectCompressionFormatIgnoreHardwareOverride boolean @Force use of PakFileCompressionFormats (do not use override HardwareCompressionFormat from DDPI)
---@field public PakFileAdditionalCompressionOptions string @A generic setting for allowing a project to control compression settings during .pak file compression. For instance PakFileAdditionalCompressionOptions=-compressionblocksize=1MB -asynccompression
---@field public PakFileCompressionMethod string @For compressors with multiple methods, select one.  eg. for Oodle you may use one of {Kraken,Mermaid,Selkie,Leviathan}
---@field public PakFileCompressionLevel_DebugDevelopment integer @* For compressors with variable levels, select the encoder effort level, which makes packages smaller but takes more time to encode.
---@field public PakFileCompressionLevel_TestShipping integer
---@field public PakFileCompressionLevel_Distribution integer
---@field public HttpChunkInstallDataVersion string @Version name for HTTP Chunk Install Data.
---@field public IncludePrerequisites boolean @Specifies whether to include an installer for prerequisites of packaged games, such as redistributable operating system components, on platforms that support it.
---@field public IncludeAppLocalPrerequisites boolean @Specifies whether to include prerequisites alongside the game executable.
---@field public bShareMaterialShaderCode boolean @By default shader code gets saved inline inside material assets, enabling this option will store only shader code once as individual files This will reduce overall package size but might increase loading time
---@field public bDeterministicShaderCodeOrder boolean @With this option off, the shader code will be stored in the library essentially in a random order, squarely the same in which the assets were loaded by the cooker. Enabling this will sort the shaders by their hash, which makes the shader library more similar between the builds which can help patching, but can adversely affect loading times.
---@field public bSharedMaterialNativeLibraries boolean @By default shader shader code gets saved into individual platform agnostic files, enabling this option will use the platform-specific library format if and only if one is available This will reduce overall package size but might increase loading time
---@field public ApplocalPrerequisitesDirectory FDirectoryPath @A directory containing additional prerequisite packages that should be staged in the executable directory. Can be relative to $(EngineDir) or $(ProjectDir)
---@field public IncludeCrashReporter boolean @Specifies whether to include the crash reporter in the packaged project. This is included by default for Blueprint based projects, but can optionally be disabled.
---@field public InternationalizationPreset EProjectPackagingInternationalizationPresets @Predefined sets of culture whose internationalization data should be packaged.
---@field public CulturesToStage TArray<string> @Cultures whose data should be cooked, staged, and packaged.
---@field public LocalizationTargetsToChunk TArray<string> @List of localization targets that should be chunked during cooking (if using chunks)
---@field public LocalizationTargetCatchAllChunkId integer @The chunk ID that should be used as the catch-all chunk for any non-asset localized strings
---@field public bCookAll boolean @Cook all things in the project content directory
---@field public bCookMapsOnly boolean @Cook only maps (this only affects the cookall flag)
---@field public bSkipEditorContent boolean @Don't include content in any editor folders when cooking.  This can cause issues with missing content in cooked games if the content is being used.
---@field public bSkipMovies boolean @Don't include movies by default when staging/packaging Specific movies can be specified below, and this can be in a platform ini
---@field public UFSMovies TArray<string> @If SkipMovies is true, these specific movies will still be added to the .pak file (if using a .pak file; otherwise they're copied as individual files) This should be the name with no extension
---@field public NonUFSMovies TArray<string> @If SkipMovies is true, these specific movies will be copied when packaging your project, but are not supposed to be part of the .pak file This should be the name with no extension
---@field public CompressedChunkWildcard TArray<string> @If set, only these specific pak files will be compressed. This should take the form of "*pakchunk0*" This can be set in a platform-specific ini file
---@field public IniKeyBlacklist TArray<string> @List of ini file keys to strip when packaging
---@field public IniSectionBlacklist TArray<string> @List of ini file sections to strip when packaging
---@field public MapsToCook TArray<FFilePath> @List of maps to include when no other map list is specified on commandline
---@field public DirectoriesToAlwaysCook TArray<FDirectoryPath> @Directories containing .uasset files that should always be cooked regardless of whether they're referenced by anything in your project These paths are stored either as a full package path (e.g. /Game/Folder, /Engine/Folder, /PluginName/Folder) or as a relative package path from /Game
---@field public DirectoriesToNeverCook TArray<FDirectoryPath> @Directories containing .uasset files that should never be cooked even if they are referenced by your project These paths are stored either as a full package path (e.g. /Game/Folder, /Engine/Folder, /PluginName/Folder) or as a relative package path from /Game
---@field public TestDirectoriesToNotSearch TArray<FDirectoryPath> @Directories containing .uasset files that are for editor testing purposes and should not be included in enumerations of all packages in a root directory, because they will cause errors on load These paths are stored either as a full package path (e.g. /Game/Folder, /Engine/Folder, /PluginName/Folder) or as a relative package path from /Game
---@field public DirectoriesToAlwaysStageAsUFS TArray<FDirectoryPath> @Directories containing files that should always be added to the .pak file (if using a .pak file; otherwise they're copied as individual files) This is used to stage additional files that you manually load via the UFS (Unreal File System) file IO API Note: These paths are relative to your project Content directory
---@field public DirectoriesToAlwaysStageAsNonUFS TArray<FDirectoryPath> @Directories containing files that should always be copied when packaging your project, but are not supposed to be part of the .pak file This is used to stage additional files that you manually load without using the UFS (Unreal File System) file IO API, eg, third-party libraries that perform their own internal file IO Note: These paths are relative to your project Content directory
---@field public DirectoriesToAlwaysStageAsUFSServer TArray<FDirectoryPath> @Directories containing files that should always be added to the .pak file for a dedicated server (if using a .pak file; otherwise they're copied as individual files) This is used to stage additional files that you manually load via the UFS (Unreal File System) file IO API Note: These paths are relative to your project Content directory
---@field public DirectoriesToAlwaysStageAsNonUFSServer TArray<FDirectoryPath> @Directories containing files that should always be copied when packaging your project for a dedicated server, but are not supposed to be part of the .pak file This is used to stage additional files that you manually load without using the UFS (Unreal File System) file IO API, eg, third-party libraries that perform their own internal file IO Note: These paths are relative to your project Content directory
local UProjectPackagingSettings = {}

