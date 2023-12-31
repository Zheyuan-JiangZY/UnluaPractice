---An brush which contains information about how to draw a Slate element
--- //, meta = (HasNativeMake = ""))
---@class FSlateBrush
---@field public ImageSize FVector2D @Size of the resource in Slate Units
---@field public Margin FMargin @The margin to use in Box and Border modes
---@field public TintColor FSlateColor @Tinting applied to the image.
---@field private ResourceObject UObject @The image to render for this brush, can be a UTexture or UMaterialInterface or an object implementing the AtlasedTextureInterface.
---@field protected ResourceName string @The name of the rendering resource to use
---@field protected UVRegion FBox2D @Optional UV region for an image When valid - overrides UV region specified in resource proxy
---@field public DrawAs integer @How to draw the image
---@field public Tiling integer @How to tile the image in Image mode
---@field public Mirroring integer @How to mirror the image in Image mode.  This is normally only used for dynamic image brushes where the source texture           comes from a hardware device such as a web camera.
---@field public ImageType integer @The type of image
---@field protected bIsDynamicallyLoaded boolean @Whether or not the brush path is a path to a UObject
local FSlateBrush = {}
