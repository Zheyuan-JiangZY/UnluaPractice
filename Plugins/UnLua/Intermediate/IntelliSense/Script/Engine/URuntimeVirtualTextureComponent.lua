---Component used to place a URuntimeVirtualTexture in the world.
---@class URuntimeVirtualTextureComponent : USceneComponent
---@field protected BoundsAlignActor TSoftObjectPtr<AActor> @Actor to align rotation to. If set this actor is always included in the bounds calculation.
---@field protected bSetBoundsButton boolean @Placeholder for details customization button.
---@field protected bSnapBoundsToLandscape boolean @If the Bounds Align Actor is a Landscape then this will snap the bounds so that virtual texture texels align with landscape vertex positions.
---@field protected VirtualTexture URuntimeVirtualTexture @The virtual texture object to use.
---@field protected bEnableScalability boolean @Set to true to enable scalability settings for the virtual texture.
---@field protected ScalabilityGroup integer @Group index of the scalability settings to use for the virtual texture.
---@field protected bHidePrimitives boolean @Hide primitives in the main pass. Hidden primitives will be those that draw to this virtual texture with 'Draw in Main Pass' set to 'From Virtual Texture'.
---@field protected StreamingTexture UVirtualTextureBuilder @Texture object containing streamed low mips.
---@field protected StreamLowMips integer @Number of low mips to serialize and stream for the virtual texture. This can reduce rendering update cost.
---@field protected bBuildStreamingMipsButton boolean @Placeholder for details customization button.
---@field protected bEnableCompressCrunch boolean @Enable Crunch texture compression for the streaming low mips. Generic ZLib compression is used when Crunch is disabled.
---@field protected bUseStreamingLowMipsInEditor boolean @Use any streaming low mips when rendering in editor. Set true to view and debug the baked streaming low mips.
---@field protected bBuildDebugStreamingMips boolean @Build the streaming low mips using debug coloring. This can help show where streaming mips are being used.
local URuntimeVirtualTextureComponent = {}

---This function marks an area of the runtime virtual texture as dirty.
---@param WorldBounds FBoxSphereBounds
function URuntimeVirtualTextureComponent:Invalidate(WorldBounds) end

