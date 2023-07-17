---Implements the settings for the Android runtime platform.
---@class UAndroidRuntimeSettings : UObject
---@field public PackageName string @The official name of the product (same as the name you use on the Play Store web site). Note: Must have at least 2 sections separated by a period and be unique!
---@field public StoreVersion integer @The version number used to indicate newer versions in the Store
---@field public StoreVersionOffsetArmV7 integer @Offset to add to store version for APKs generated for armv7
---@field public StoreVersionOffsetArm64 integer @Offset to add to store version for APKs generated for arm64
---@field public StoreVersionOffsetX8664 integer @Offset to add to store version for APKs generated for x86_64
---@field public ApplicationDisplayName string @The visual application name displayed for end users
---@field public VersionDisplayName string @The visual version displayed for end users
---@field public MinSDKVersion integer @What OS version the app is allowed to be installed on (do not set this lower than 19)
---@field public TargetSDKVersion integer @What OS version the app is expected to run on (do not set this lower than 19)
---@field public InstallLocation integer @Preferred install location for the application
---@field public bEnableGradle boolean @Use Gradle instead of Ant for Java compiling and APK generation
---@field public bEnableLint boolean @Enable -Xlint:unchecked and -Xlint:depreciation for Java compiling (Gradle only)
---@field public bPackageDataInsideApk boolean @Should the data be placed into the .apk file instead of a separate .obb file. Amazon requires this to be enabled, but Google Play Store will not allow .apk files larger than 100MB, so only small games will work with this enabled.
---@field public bCreateAllPlatformsInstall boolean @If checked, both batch (.bat) files and shell script (.command) files will be generated, otherwise only done for the current system (default)
---@field public bDisableVerifyOBBOnStartUp boolean @Disable the verification of an OBB file when it is downloaded or on first start when in a distribution build.
---@field public bForceSmallOBBFiles boolean @If checked, OBB is limited to 1 GiB.
---@field public bAllowLargeOBBFiles boolean @If checked, OBB is not limited to 2 GiB allowed by Google Play Store (still limited to 4 GiB ZIP limit).
---@field public bAllowPatchOBBFile boolean @If checked, a patch OBB is generated for files not fitting in the main OBB (requires using multiple PAK files so split up content by chunk id).
---@field public bAllowOverflowOBBFiles boolean @If checked, up to two additional overflow OBB files are generated for files not fitting in the patch OBB (requires using multiple PAK files so split up content by chunk id).
---@field public bUseExternalFilesDir boolean @If checked, UE4Game files will be placed in ExternalFilesDir which is removed on uninstall. You should also check this if you need to save you game progress without requesting runtime WRITE_EXTERNAL_STORAGE permission in android api 23+
---@field public bPublicLogFiles boolean @If checked, log files will always be placed in a publicly available directory (either /sdcard/Android or /sdcard/UE4Game). You may require WRITE_EXTERNAL_STORAGE permission if you do not use ExternalFilesDir checkbox in android api 23+
---@field public Orientation integer @The permitted orientation of the application on the device
---@field public MaxAspectRatio number @Maximum supported aspect ratio (width / height). Android will automatically letterbox application on devices with bigger aspect ratio
---@field public bUseDisplayCutout boolean @Enables use of the display cutout area on Android 9+
---@field public bRestoreNotificationsOnReboot boolean @Should we restore scheduled local notifications on reboot? This will add a receiver for boot complete and a permission to the manifest.
---@field public bFullScreen boolean @Should the software navigation buttons be hidden or not
---@field public bEnableNewKeyboard boolean
---@field public DepthBufferPreference integer @The preferred depth buffer bitcount for Android
---@field public bValidateTextureFormats boolean @Verifies the device supports at least one of the cooked texture formats at runtime
---@field public bEnableBundle boolean @Enables generating AAB bundle
---@field public bEnableUniversalAPK boolean @Enables generating universal APK from bundle
---@field public bBundleABISplit boolean @Separate ABIs into their own APK in bundle
---@field public bBundleLanguageSplit boolean @Separate resources by language into their own APK in bundle
---@field public bBundleDensitySplit boolean @Separate resources by density into their own APK in bundle
---@field public ExtraManifestNodeTags TArray<string> @Any extra tags for the <manifest> node
---@field public ExtraApplicationNodeTags TArray<string> @Any extra tags for the <application> node
---@field public ExtraApplicationSettings string @Any extra tags for the com.epicgames.UE4.GameActivity <activity> node Any extra settings for the <application> section (an optional file <Project>/Build/Android/ManifestApplicationAdditions.txt will also be included)
---@field public ExtraActivityNodeTags TArray<string>
---@field public ExtraActivitySettings string @Any extra settings for the main <activity> section (an optional file <Project>/Build/Android/ManifestApplicationActivtyAdditions.txt will also be included)
---@field public ExtraPermissions TArray<string> @Any extra permissions your app needs (an optional file <Project>/Build/Android/ManifestRequirementsAdditions.txt will also be included, or an optional file <Project>/Build/Android/ManifestRequirementsOverride.txt will replace the entire <!-- Requirements --> section)
---@field public bAndroidVoiceEnabled boolean @Add required permission to support Voice chat
---@field public PackageForOculusMobile TArray<integer> @Package for an Oculus Mobile device
---@field public bRemoveOSIG boolean @Removes Oculus Signature Files (osig) from APK if Quest/Go APK signed for distribution and enables entitlement checker
---@field public GoogleVRCaps TArray<integer> @Configure AndroidManifest.xml to support specific hardward configurations, position and orientation of the head and controller.
---@field public bGoogleVRSustainedPerformance boolean @Configure the Android to run in sustained performance with lower max speeds, but no FPS fluctuations due to temperature
---@field public KeyStore string @This is the file that keytool outputs, specified with the -keystore parameter (file should be in <Project>/Build/Android)
---@field public KeyAlias string @This is the name of the key that you specified with the -alias parameter to keytool
---@field public KeyStorePassword string @This is the password that you specified FOR THE KEYSTORE NOT THE KEY, when running keytool (either with -storepass or by typing it in).
---@field public KeyPassword string @This is the password for the key that you may have specified with keytool, if it's different from the keystore password. Leave blank to use same as Keystore
---@field public bBuildForArmV7 boolean @Enable ArmV7 support? (this will be used if all type are unchecked)
---@field public bBuildForArm64 boolean @Enable Arm64 support?
---@field public bBuildForX8664 boolean @Enable x86-64 support? [CURRENTLY FOR FULL SOURCE GAMES ONLY]
---@field public bBuildForES31 boolean @Include shaders for devices supporting OpenGL ES 3.1 and above (default)
---@field public bSupportsVulkan boolean @Support the Vulkan RHI and include Vulkan shaders
---@field public bSupportsVulkanSM5 boolean @Enable Vulkan SM5 rendering support
---@field public ClangSanitizer integer @Select a Clang's sanitizer to build the project with
---@field public bAndroidOpenGLSupportsBackbufferSampling boolean @Whether to render to an offscreen surface instead of render to backbuffer directly on android opengl platform. Enable it if you'd like to support UMG background blur on android opengl.
---@field public bDetectVulkanByDefault boolean @Whether to detect Vulkan device support by default, if the project is packaged with Vulkan support. If unchecked, the -detectvulkan commandline will enable Vulkan detection.
---@field public bBuildWithHiddenSymbolVisibility boolean @Build the shipping config with hidden visibility by default. Results in smaller .so file but will also removes symbols used to display callstack dumps.
---@field public bSaveSymbols boolean @Always save .so file with symbols allowing use of addr2line on raw callstack addresses.
---@field public bForceLDLinker boolean @Use legacy ld instead of new lld linker.
---@field public bEnableGooglePlaySupport boolean @Should Google Play support be enabled?
---@field public bUseGetAccounts boolean @Enabling this adds GET_ACCOUNTS to manifest and user must give permission.  Required for reset achievements.
---@field public GamesAppID string @The app id obtained from the Google Play Developer Console
---@field public AchievementMap TArray<FGooglePlayAchievementMapping> @Mapping of game achievement names to IDs generated by Google Play.
---@field public LeaderboardMap TArray<FGooglePlayLeaderboardMapping> @Mapping of game leaderboard names to IDs generated by Google Play.
---@field public bEnableSnapshots boolean @Enabling this requests snapshots support for saved games during Google Play login.
---@field public bSupportAdMob boolean @Enabling this includes the AdMob SDK and will be detected by Google Play Console on upload of APK.  Disable if you do not need ads to remove this warning.
---@field public AdMobAdUnitID string @The unique identifier for the ad obtained from AdMob.
---@field public AdMobAdUnitIDs TArray<string> @Identifiers for ads obtained from AdMob
---@field public GooglePlayLicenseKey string @The unique identifier for this application (needed for IAP)
---@field public GCMClientSenderID string @The sender id obtained from Firebase Console, leave blank to disable (associate this with your app in Google Player Developer Console).
---@field public bShowLaunchImage boolean @Show the launch image as a startup slash screen
---@field public bAllowIMU boolean @Allows accelerometer, magnetometer, and gyroscope event handling, disabling may improve performance.
---@field public bAllowControllers boolean @If checked, Bluetooth connected controllers will send input
---@field public bBlockAndroidKeysOnControllers boolean @If checked, controllers will not send Android_Back and Android_Menu events that might cause unnecce
---@field public bControllersBlockDeviceFeedback boolean @Block force feedback on the device when controllers are attached.
---@field public AndroidAudio integer @Android encoding options.
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
---@field public AndroidGraphicsDebugger integer @Several Android graphics debuggers require configuration changes to be made to your application in order to operate. Choosing an option from this menu will configure your project to work with that graphics debugger.
---@field public MaliGraphicsDebuggerPath FDirectoryPath @The path to your Mali Graphics Debugger installation (eg C:/Program Files/ARM/Mali Developer Tools/Mali Graphics Debugger v4.2.0)
---@field public bEnableMaliPerfCounters boolean @If checked, this will disable the security.perf_harden flag on the Android device when launching or installing your app via the generated batch file. Disabling security.perf_harden is necessary for HWCPipe to be able to report performance counters on Mali devices.
---@field public bMultiTargetFormat_ETC2 boolean @Include ETC2 textures when packaging with the Android (Multi) variant.
---@field public bMultiTargetFormat_DXT boolean @Include DXT textures when packaging with the Android (Multi) variant.
---@field public bMultiTargetFormat_ASTC boolean @Include ASTC textures when packaging with the Android (Multi) variant.
---@field public TextureFormatPriority_ETC2 number @Priority for the ETC2 texture format when launching on device or packaging using Android_Multi. The highest priority format supported by the device will be used. Default value is 0.2.
---@field public TextureFormatPriority_DXT number @Priority for the DXT texture format when launching on device or packaging using Android_Multi. The highest priority format supported by the device will be used. Default value is 0.6.
---@field public TextureFormatPriority_ASTC number @Priority for the ASTC texture format when launching on device or packaging using Android_Multi. The highest priority format supported by the device will be used. Default value is 0.9.
---@field public SDKAPILevelOverride string @Which SDK to package and compile Java with (a specific version or (without quotes) 'latest' for latest version on disk, or 'matchndk' to match the NDK API Level)
---@field public NDKAPILevelOverride string @Which NDK to compile with (a specific version or (without quotes) 'latest' for latest version on disk). Note that choosing android-21 or later won't run on pre-5.0 devices.
---@field public bStreamLandscapeMeshLODs boolean @Whether to enable LOD streaming for landscape visual meshes. Only supported on feature level ES3.1 or above.
---@field public bEnableDomStorage boolean @Enables WebViews to use DOM storage API
local UAndroidRuntimeSettings = {}

