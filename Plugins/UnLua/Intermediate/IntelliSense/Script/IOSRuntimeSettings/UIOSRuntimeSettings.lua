---Implements the settings for the iOS target platform.
---@class UIOSRuntimeSettings : UObject
---@field public bEnableGameCenterSupport boolean @Should Game Center support (iOS Online Subsystem) be enabled?
---@field public bEnableCloudKitSupport boolean @Should Cloud Kit support (iOS Online Subsystem) be enabled?
---@field public IOSCloudKitSyncStrategy EIOSCloudKitSyncStrategy @iCloud Read stategy
---@field public bEnableRemoteNotificationsSupport boolean @Should push/remote notifications support (iOS Online Subsystem) be enabled?
---@field public bEnableBackgroundFetch boolean @Should background fetch support be enabled?
---@field public bSupportsMetal boolean @Whether or not to compile iOS Metal shaders for the Mobile renderer (requires iOS 8+ and an A7 processor).
---@field public bSupportsMetalMRT boolean @Whether or not to compile iOS Metal shaders for the desktop renderer (requires iOS 10+ and an A10 processor)
---@field public bCookPVRTCTextures boolean @Whether or not to add support for PVRTC textures
---@field public bCookASTCTextures boolean @Whether or not to add support for ASTC textures
---@field public bBuildAsFramework boolean @Whether to build the iOS project as a framework.
---@field public WindowsMetalToolchainOverride FIOSBuildResourceDirectory
---@field public bGeneratedSYMFile boolean @Enable generation of dSYM file
---@field public bGeneratedSYMBundle boolean @Enable generation of dSYM bundle
---@field public bGenerateCrashReportSymbols boolean @Enable generation of a .udebugsymbols file, which allows offline, platform-independent symbolication for the Malloc Profiler or external crash reporting tools. Requires a dSYM file or bundle.
---@field public bGenerateXCArchive boolean @Enable generation of xcode archive package
---@field public bShipForBitcode boolean @Enable bitcode compiling?
---@field public bEnableAdvertisingIdentifier boolean @Enable Advertising Identified
---@field public AdditionalLinkerFlags string @Any additional linker flags to pass to the linker in non-shipping builds
---@field public AdditionalShippingLinkerFlags string @Any additional linker flags to pass to the linker in shipping builds
---@field public RemoteServerName string @The name or ip address of the remote mac which will be used to build IOS
---@field public bUseRSync boolean @Enable the use of RSync for remote builds on a mac
---@field public RSyncUsername string @The mac users name which matches the SSH Private Key, for remote builds using RSync.
---@field public RemoteServerOverrideBuildPath string @Optional path on the remote mac where the build files will be copied. If blank, ~/UE4/Builds will be used.
---@field public CwRsyncInstallPath FIOSBuildResourceDirectory @The install directory of cwrsync.
---@field public SSHPrivateKeyLocation string @The existing location of an SSH Key found by UE4.
---@field public SSHPrivateKeyOverridePath FIOSBuildResourceFilePath @The path of the ssh permissions key to be used when connecting to the remote server.
---@field public bRunAsCurrentUser boolean @Should the app be compatible with Multi-User feature on tvOS ?　If checked, the game will will shutdown with the typical exit flow.
---@field public bGameSupportsMultipleActiveControllers boolean @If checked, the game will be able to handle multiple gamepads at the same time (the Siri Remote is a gamepad)
---@field public bAllowRemoteRotation boolean @If checked, the Siri Remote can be rotated to landscape view
---@field public bUseRemoteAbsoluteDpadValues boolean @If checked, the center of the trackpad is 0,0 (center) for the virtual joystick. If unchecked, the location the user taps becomes 0,0
---@field public bAllowControllers boolean @If checked, Bluetooth connected controllers will send input
---@field public bControllersBlockDeviceFeedback boolean @Block force feedback on the device when controllers are attached.
---@field public bDisableMotionData boolean @Disables usage of device motion data. If application does not use motion data disabling it will improve battery life
---@field public bSupportsPortraitOrientation boolean @Supports default portrait orientation. Landscape will not be supported.
---@field public bSupportsUpsideDownOrientation boolean @Supports upside down portrait orientation. Landscape will not be supported.
---@field public bSupportsLandscapeLeftOrientation boolean @Supports left landscape orientation. Portrait will not be supported.
---@field public bSupportsLandscapeRightOrientation boolean @Supports right landscape orientation. Portrait will not be supported.
---@field public bSupportsITunesFileSharing boolean @Whether files created by the app will be accessible from the iTunes File Sharing feature
---@field public bSupportsFilesApp boolean @Whether files created by the app will be accessible from within the device's Files app (requires iTunes File Sharing)
---@field public PreferredLandscapeOrientation EIOSLandscapeOrientation @The Preferred Orientation will be used as the initial orientation at launch when both Landscape Left and Landscape Right orientations are to be supported.
---@field public BundleDisplayName string @Specifies the the display name for the application. This will be displayed under the icon on the device.
---@field public BundleName string @Specifies the the name of the application bundle. This is the short name for the application bundle.
---@field public BundleIdentifier string @Specifies the bundle identifier for the application.
---@field public VersionInfo string @Specifies the version for the application.
---@field public FrameRateLock EPowerUsageFrameRateLock @Set the maximum frame rate to save on power consumption
---@field public bEnableDynamicMaxFPS boolean @Whether or not to allow taking the MaxRefreshRate from the device instead of a constant (60fps) in IOSPlatformFramePacer
---@field public MinimumiOSVersion EIOSVersion @Minimum iOS version this game supports
---@field public bSupportsIPad boolean @Whether or not to add support for iPad devices
---@field public bSupportsIPhone boolean @Whether or not to add support for iPhone devices
---@field public AdditionalPlistData string @Any additional plist key/value data utilizing \n for a new line
---@field public bCustomLaunchscreenStoryboard boolean @Choose whether to use a custom LaunchScreen.Storyboard as a Launchscreen. To use this option, create a storyboard in Xcode and copy it named LaunchScreen.storyboard in Build/IOS/Resources/Interface under your Project folder. This will be compiled and copied to the bundle app and the Launch screen image above will not be included in the app. When using assets in your custom LaunchScreen.storyboard, add them in Build/IOS/Resources/Interface/Assets and they will be included.
---@field public bEnableFacebookSupport boolean @Whether the app supports Facebook
---@field public FacebookAppID string @Facebook App ID obtained from Facebook's Developer Centre
---@field public MobileProvision string @Mobile provision to utilize when signing
---@field public SigningCertificate string @Signing certificate to utilize when signing
---@field public bAutomaticSigning boolean @Whether to use automatic signing through Xcode
---@field public IOSTeamID string @The team ID of the apple developer account to be used to autmatically sign IOS builds
---@field public bDisableHTTPS boolean @Whether the app supports HTTPS
---@field public MaxShaderLanguageVersion integer @The maximum supported Metal shader langauge version. This defines what features may be used and OS versions supported.
---@field public UseFastIntrinsics boolean @Whether to use the Metal shading language's "fast" intrinsics. Fast intrinsics assume that no NaN or INF value will be provided as input, so are more efficient. However, they will produce undefined results if NaN/INF is present in the argument/s.
---@field public ForceFloats boolean @Whether to force Metal shaders to use 32bit floating point precision even when the shader uses half floats. Half floats are much more efficient when they are availble but have less accuracy over large ranges, as such some projects may need to use 32bit floats to ensure correct rendering.
---@field public EnableMathOptimisations boolean @Whether to use of Metal shader-compiler's -ffast-math optimisations. Fast-Math performs algebraic-equivalent & reassociative optimisations not permitted by the floating point arithmetic standard (IEEE-754). These can improve shader performance at some cost to precision and can lead to NaN/INF propagation as they rely on shader inputs or variables not containing NaN/INF values. By default fast-math is enabled for performance.
---@field public IndirectArgumentTier integer @Whether to compile shaders using a tier Indirect Argument Buffers.
---@field public bUseIntegratedKeyboard boolean @Whether or not the keyboard should be usable on it's own without a UITextField
---@field public AudioSampleRate integer @Sample rate to run the audio mixer with.
---@field public AudioCallbackBufferFrameSize integer @The amount of audio to compute each callback block. Lower values decrease latency but may increase CPU cost.
---@field public AudioNumBuffersToEnqueue integer @The number of buffers to keep enqueued. More buffers increases latency, but can compensate for variable compute availability in audio callbacks on some platforms.
---@field public AudioMaxChannels integer @The max number of channels (voices) to limit for this platform. The max channels used will be the minimum of this value and the global audio quality settings. A value of 0 will not apply a platform channel count max.
---@field public AudioNumSourceWorkers integer @The number of workers to use to compute source audio. Will only use up to the max number of sources. Will evenly divide sources to each source worker.
---@field public SpatializationPlugin string @Which of the currently enabled spatialization plugins to use on Windows.
---@field public ReverbPlugin string @Which of the currently enabled reverb plugins to use on Windows.
---@field public OcclusionPlugin string @Which of the currently enabled occlusion plugins to use on Windows.
---@field public CompressionOverrides FPlatformRuntimeAudioCompressionOverrides @Various overrides for how this platform should handle compression and decompression
---@field public bUseAudioStreamCaching boolean @When this is enabled, Actual compressed data will be separated from the USoundWave, and loaded into a cache.
---@field public CacheSizeKB integer @This determines the max amount of memory that should be used for the cache at any given time. If set low (<= 8 MB), it lowers the size of individual chunks of audio during cook.
---@field public MaxChunkSizeOverrideKB integer @This overrides the default max chunk size used when chunking audio for stream caching (ignored if < 0)
---@field public bResampleForDevice boolean
---@field public SoundCueCookQualityIndex integer @Quality Level to COOK SoundCues at (if set, all other levels will be stripped by the cooker).
---@field public MaxSampleRate number @Mapping of which sample rates are used for each sample rate quality for a specific platform.
---@field public HighSampleRate number
---@field public MedSampleRate number
---@field public LowSampleRate number
---@field public MinSampleRate number
---@field public CompressionQualityModifier number @Scales all compression qualities when cooking to this platform. For example, 0.5 will halve all compression qualities, and 1.0 will leave them unchanged.
---@field public AutoStreamingThreshold number @When set to anything beyond 0, this will ensure any SoundWaves longer than this value, in seconds, to stream directly off of the disk.
---@field public bStreamLandscapeMeshLODs boolean @Whether to enable LOD streaming for landscape visual meshes. Requires Metal support.
local UIOSRuntimeSettings = {}

