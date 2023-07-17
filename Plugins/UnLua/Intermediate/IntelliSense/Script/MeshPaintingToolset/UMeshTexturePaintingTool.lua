---@class UMeshTexturePaintingTool : UBaseBrushTool
---@field private TextureProperties UMeshTexturePaintingToolProperties
---@field private Textures TArray<UTexture>
---@field private BrushRenderTargetTexture UTextureRenderTarget2D @Temporary render target used to draw incremental paint to
---@field private BrushMaskRenderTargetTexture UTextureRenderTarget2D @Temporary render target used to store a mask of the affected paint region, updated every time we add incremental texture paint
---@field private SeamMaskRenderTargetTexture UTextureRenderTarget2D @Temporary render target used to store generated mask for texture seams, we create this by projecting object triangles into texture space using the selected UV channel
---@field private PaintTargetData TMap<UTexture2D, FPaintTexture2DData> @Stores data associated with our paint target textures
---@field private TexturePaintingCurrentMeshComponent UMeshComponent @Texture paint: The mesh components that we're currently painting
---@field private PaintingTexture2D UTexture2D @The original texture that we're painting
local UMeshTexturePaintingTool = {}

