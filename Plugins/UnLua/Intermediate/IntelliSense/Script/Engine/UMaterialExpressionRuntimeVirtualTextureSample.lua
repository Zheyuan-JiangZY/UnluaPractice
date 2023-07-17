---Material expression for sampling from a runtime virtual texture.
---@class UMaterialExpressionRuntimeVirtualTextureSample : UMaterialExpression
---@field public Coordinates FExpressionInput @Optional UV coordinates input if we want to override standard world position based coordinates.
---@field public WorldPosition FExpressionInput @Optional world position input to override the default world position.
---@field public MipValue FExpressionInput @Meaning depends on MipValueMode. A single unit is one mip level.
---@field public VirtualTexture URuntimeVirtualTexture @The virtual texture object to sample.
---@field public MaterialType ERuntimeVirtualTextureMaterialType @How to interpret the virtual texture contents. Note that the bound Virtual Texture should have the same setting for sampling to work correctly.
---@field public bSinglePhysicalSpace boolean @Enable page table channel packing. Note that the bound Virtual Texture should have the same setting for sampling to work correctly.
---@field public bAdaptive boolean @Enable sparse adaptive page tables. Note that the bound Virtual Texture should have valid adaptive virtual texture settings for sampling to work correctly.
---@field public MipValueMode integer @Defines how the MipValue property is applied to the virtual texture lookup.
---@field public TextureAddressMode integer @Defines the texture addressing mode.
local UMaterialExpressionRuntimeVirtualTextureSample = {}

