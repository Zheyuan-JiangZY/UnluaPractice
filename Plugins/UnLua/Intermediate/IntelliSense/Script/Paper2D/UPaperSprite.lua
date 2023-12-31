---Sprite Asset
---Stores the data necessary to render a single 2D sprite (from a region of a texture)
---Can also contain collision shapes for the sprite.
---@class UPaperSprite : UObject
---@field protected OriginInSourceImageBeforeTrimming FVector2D @Origin within SourceImage, prior to atlasing
---@field protected SourceImageDimensionBeforeTrimming FVector2D @Dimensions of SourceImage
---@field protected bTrimmedInSourceImage boolean @This texture is trimmed, consider the values above
---@field protected bRotatedInSourceImage boolean @This texture is rotated in the atlas
---@field protected SourceTextureDimension FVector2D @Dimension of the texture when this sprite was created Used when the sprite is resized at some point
---@field protected SourceUV FVector2D @Position within SourceTexture (in pixels)
---@field protected SourceDimension FVector2D @Dimensions within SourceTexture (in pixels)
---@field protected SourceTexture TSoftObjectPtr<UTexture2D> @The source texture that the sprite comes from
---@field protected SourceTextureCacheNeverSerialized UTexture2D
---@field protected AdditionalSourceTextures TArray<UTexture> @Additional source textures for other slots
---@field protected BakedSourceUV FVector2D @Position within BakedSourceTexture (in pixels)
---@field protected BakedSourceDimension FVector2D @Dimensions within BakedSourceTexture (in pixels)
---@field protected BakedSourceTexture UTexture2D
---@field protected DefaultMaterial UMaterialInterface @The material to use on a sprite instance if not overridden (this is the default material when only one is being used, and is the translucent/masked material for Diced render geometry, slot 0)
---@field protected AlternateMaterial UMaterialInterface @The alternate material to use on a sprite instance if not overridden (this is only used for Diced render geometry, and will be the opaque material in that case, slot 1)
---@field protected Sockets TArray<FPaperSpriteSocket> @List of sockets on this sprite
---@field protected SpriteCollisionDomain integer @Collision domain (no collision, 2D, or 3D)
---@field protected PixelsPerUnrealUnit number @The scaling factor between pixels and Unreal units (cm) (e.g., 0.64 would make a 64 pixel wide sprite take up 100 cm)
---@field public BodySetup UBodySetup @Baked physics data.
---@field protected PivotMode integer @Pivot mode
---@field protected CustomPivotPoint FVector2D @Custom pivot point (relative to the sprite rectangle)
---@field protected bSnapPivotToPixelGrid boolean @Should the pivot be snapped to a pixel boundary?
---@field protected CollisionGeometry FSpriteGeometryCollection @Custom collision geometry polygons (in texture space)
---@field protected CollisionThickness number @The extrusion thickness of collision geometry when using a 3D collision domain
---@field protected RenderGeometry FSpriteGeometryCollection @Custom render geometry polygons (in texture space)
---@field protected AtlasGroup UPaperSpriteAtlas @Spritesheet group that this sprite belongs to
---@field public AlternateMaterialSplitIndex integer @The point at which the alternate material takes over in the baked render data (or INDEX_NONE)
---@field public BakedRenderData TArray<FVector4> @Baked render data (triangle vertices, stored as XY UV tuples)   XY is the XZ position in world space, relative to the pivot   UV is normalized (0..1)   There should always be a multiple of three elements in this array
local UPaperSprite = {}

