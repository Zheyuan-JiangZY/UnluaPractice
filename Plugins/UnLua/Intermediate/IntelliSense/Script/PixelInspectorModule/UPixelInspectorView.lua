---@class UPixelInspectorView : UObject
---@field public FinalColor FLinearColor @Final RGBA 8bits Color after tone mapping, default value is black.
---@field public SceneColor FLinearColor @HDR RGB Color.
---@field public PreExposure number @HDR Luminance.
---@field public Luminance number @HDR Luminance.
---@field public HdrColor FLinearColor @HDR RGB Color.
---@field public Normal FVector @From the GBufferA RGB Channels.
---@field public PerObjectGBufferData number @From the GBufferA A Channel.
---@field public Metallic number @From the GBufferB R Channel.
---@field public Specular number @From the GBufferB G Channel.
---@field public Roughness number @From the GBufferB B Channel.
---@field public MaterialShadingModel integer @From the GBufferB A Channel encoded with SelectiveOutputMask.
---@field public SelectiveOutputMask integer @From the GBufferB A Channel encoded with ShadingModel.
---@field public BaseColor FLinearColor @From the GBufferC RGB Channels.
---@field public IndirectIrradiance number @From the GBufferC A Channel encoded with AmbientOcclusion.
---@field public AmbientOcclusion number @From the GBufferC A Channel encoded with IndirectIrradiance.
---@field public SubSurfaceColor FLinearColor @From the GBufferD RGB Channels.
---@field public SubsurfaceProfile FVector @From the GBufferD RGB Channels.
---@field public Opacity number @From the GBufferD A Channel.
---@field public ClearCoat number @From the GBufferD R Channel.
---@field public ClearCoatRoughness number @From the GBufferD G Channel.
---@field public WorldNormal FVector @From the GBufferD RG Channels.
---@field public BackLit number @From the GBufferD B Channel.
---@field public Cloth number @From the GBufferD A Channel.
---@field public EyeTangent FVector @From the GBufferD RG Channels.
---@field public IrisMask number @From the GBufferD B Channel.
---@field public IrisDistance number @From the GBufferD A Channel.
local UPixelInspectorView = {}

