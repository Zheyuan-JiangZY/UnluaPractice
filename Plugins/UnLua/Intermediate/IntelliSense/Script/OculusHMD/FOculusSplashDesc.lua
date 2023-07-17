---@class FOculusSplashDesc
---@field public TexturePath FSoftObjectPath @Texture to display
---@field public TransformInMeters FTransform @transform of center of quad (meters).
---@field public QuadSizeInMeters FVector2D @Dimensions in meters.
---@field public DeltaRotation FQuat @A delta rotation that will be added each rendering frame (half rate of full vsync).
---@field public TextureOffset FVector2D @Texture offset amount from the top left corner.
---@field public TextureScale FVector2D @Texture scale.
---@field public bNoAlphaChannel boolean @Whether the splash layer uses it's alpha channel.
local FOculusSplashDesc = {}
