---Default animation settings.
---@class UAnimationSettings : UDeveloperSettings
---@field public CompressCommandletVersion integer @Compression version for recompress commandlet, bump this to trigger full recompressed, otherwise only new imported animations will be recompressed
---@field public KeyEndEffectorsMatchNameArray TArray<string> @List of bone names to treat with higher precision, in addition to any bones with sockets
---@field public ForceRecompression boolean @If true, this will forcibly recompress every animation, this should not be checked in enabled
---@field public bForceBelowThreshold boolean @If true and the existing compression error is greater than Alternative Compression Threshold, then any compression technique (even one that increases the size) with a lower error will be used until it falls below the threshold
---@field public bFirstRecompressUsingCurrentOrDefault boolean @If true, then the animation will be first recompressed with it's current compressor if non-NULL, or with the global default compressor (specified in the engine ini) Also known as "Run Current Default Compressor"
---@field public bRaiseMaxErrorToExisting boolean @If true and the existing compression error is greater than Alternative Compression Threshold, then Alternative Compression Threshold will be effectively raised to the existing error level
---@field public bEnablePerformanceLog boolean @If true, recompression will log performance information
---@field public bStripAnimationDataOnDedicatedServer boolean @If true, animation track data will be stripped from dedicated server cooked data
---@field public bTickAnimationOnSkeletalMeshInit boolean @If true, pre-4.19 behavior of zero-ticking animations during skeletal mesh init
---@field public BoneCustomAttributesNames TArray<FCustomAttributeSetting> @List of custom attribute to import directly on their corresponding bone. The meaning field allows to contextualize the attribute name and customize tooling for it.
---@field public BoneNamesWithCustomAttributes TArray<string> @List of bone names for which all custom attributes are directly imported on the bone.
---@field public AttributeBlendModes TMap<string, ECustomAttributeBlendType> @Custom Attribute specific blend types (by name)
---@field public DefaultAttributeBlendMode ECustomAttributeBlendType @Default Custom Attribute blend type
local UAnimationSettings = {}

