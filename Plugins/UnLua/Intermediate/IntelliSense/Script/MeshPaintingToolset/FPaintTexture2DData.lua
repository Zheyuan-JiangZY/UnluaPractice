---@class FPaintTexture2DData
---@field public PaintingTexture2D UTexture2D @The original texture that we're painting
---@field public PaintingTexture2DDuplicate UTexture2D @A copy of the original texture we're painting, used for restoration.
---@field public PaintRenderTargetTexture UTextureRenderTarget2D @Render target texture for painting
---@field public CloneRenderTargetTexture UTextureRenderTarget2D @Render target texture used as an input while painting that contains a clone of the original image
---@field public PaintingMaterials TArray<UMaterialInterface> @List of materials we are painting on
local FPaintTexture2DData = {}
