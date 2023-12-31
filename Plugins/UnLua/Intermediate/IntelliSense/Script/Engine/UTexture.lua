---@class UTexture : UStreamableRenderAsset
---@field public Source FTextureSource
---@field private LightingGuid FGuid @Unique ID for this material, used for caching during distributed lighting
---@field public AssetImportData UAssetImportData
---@field public AdjustBrightness number @Static texture brightness adjustment (scales HSV value.)  (Non-destructive; Requires texture source art to be available.)
---@field public AdjustBrightnessCurve number @Static texture curve adjustment (raises HSV value to the specified power.)  (Non-destructive; Requires texture source art to be available.)
---@field public AdjustVibrance number @Static texture "vibrance" adjustment (0 - 1) (HSV saturation algorithm adjustment.)  (Non-destructive; Requires texture source art to be available.)
---@field public AdjustSaturation number @Static texture saturation adjustment (scales HSV saturation.)  (Non-destructive; Requires texture source art to be available.)
---@field public AdjustRGBCurve number @Static texture RGB curve adjustment (raises linear-space RGB color to the specified power.)  (Non-destructive; Requires texture source art to be available.)
---@field public AdjustHue number @Static texture hue adjustment (0 - 360) (offsets HSV hue by value in degrees.)  (Non-destructive; Requires texture source art to be available.)
---@field public AdjustMinAlpha number @Remaps the alpha to the specified min/max range, defines the new value of 0 (Non-destructive; Requires texture source art to be available.)
---@field public AdjustMaxAlpha number @Remaps the alpha to the specified min/max range, defines the new value of 1 (Non-destructive; Requires texture source art to be available.)
---@field public CompressionNoAlpha boolean @If enabled, the texture's alpha channel will be discarded during compression
---@field public CompressionNone boolean
---@field public DeferCompression boolean @If enabled, defer compression of the texture until save.
---@field public LossyCompressionAmount integer @How aggressively should any relevant lossy compression be applied.
---@field public MaxTextureSize integer @The maximum resolution for generated textures. A value of 0 means the maximum size for the format on each platform.
---@field public CompressionQuality integer @The compression quality for generated textures.
---@field public bDitherMipMapAlpha boolean @When true, the alpha channel of mip-maps and the base image are dithered for smooth LOD transitions.
---@field public AlphaCoverageThresholds FVector4 @Alpha values per channel to compare to when preserving alpha coverage.
---@field public bPreserveBorder boolean @When true the texture's border will be preserved during mipmap generation.
---@field public bFlipGreenChannel boolean @When true the texture's green channel will be inverted. This is useful for some normal maps.
---@field public bForcePVRTC4 boolean @For DXT1 textures, setting this will cause the texture to be twice the size, but better looking, on iPhone
---@field public PowerOfTwoMode integer @How to pad the texture to a power of 2 size (if necessary)
---@field public PaddingColor FColor @The color used to pad the texture out if it is resized due to PowerOfTwoMode
---@field public bChromaKeyTexture boolean @Whether to chroma key the image, replacing any pixels that match ChromaKeyColor with transparent black
---@field public ChromaKeyThreshold number @The threshold that components have to match for the texel to be considered equal to the ChromaKeyColor when chroma keying (<=, set to 0 to require a perfect exact match)
---@field public ChromaKeyColor FColor @The color that will be replaced with transparent black if chroma keying is enabled
---@field public MipGenSettings integer @Per asset specific setting to define the mip-map generation properties like sharpening and kernel size.
---@field public CompositeTexture UTexture @Can be defined to modify the roughness based on the normal map variation (mostly from mip maps). MaxAlpha comes in handy to define a base roughness if no source alpha was there. Make sure the normal map has at least as many mips as this texture.
---@field public CompositeTextureMode integer @defines how the CompositeTexture is applied, e.g. CTM_RoughnessFromNormalAlpha
---@field public CompositePower number @default 1, high values result in a stronger effect e.g 1, 2, 4, 8 this is no slider because the texture update would not be fast enough
---@field public LayerFormatSettings TArray<FTextureFormatSettings> @Array of settings used to control the format of given layer If this array doesn't include an entry for a given layer, values from UTexture will be used
---@field public LODBias integer @A bias to the index of the top mip level to use.
---@field public CompressionSettings integer @Compression settings to use when building the texture.
---@field public Filter integer @The texture filtering mode to use when sampling this texture.
---@field public MipLoadOptions ETextureMipLoadOptions @The texture mip load options.
---@field public LODGroup integer @Texture group this texture belongs to
---@field public Downscale FPerPlatformFloat @Downscale source texture, applied only to textures without mips 0.0 - use scale value from texture group 1.0 - do not scale texture > 1.0 - scale texure
---@field public DownscaleOptions ETextureDownscaleOptions @Texture downscaling options
---@field public SRGB boolean @This should be unchecked if using alpha channels individually as masks.
---@field public bUseLegacyGamma boolean @A flag for using the simplified legacy gamma space e.g pow(color,1/2.2) for converting from FColor to FLinearColor, if we're doing sRGB.
---@field public bNoTiling boolean @If true, the RHI texture will be created using TexCreate_NoTiling
---@field public VirtualTextureStreaming boolean @Is this texture streamed in using VT
---@field public CompressionYCoCg boolean @If true the texture stores YCoCg. Blue channel will be filled with a precision scale during compression.
---@field public bNotOfflineProcessed boolean @If true, the RHI texture will be created without TexCreate_OfflineProcessed.
---@field private bAsyncResourceReleaseHasBeenStarted boolean @Whether the async resource release process has already been kicked off or not
---@field protected AssetUserData TArray<UAssetUserData> @Array of user data stored with the asset
local UTexture = {}

