---Utility component for drawing a view frustum. Origin is at the component location, frustum points down position X axis.
---@class UDrawFrustumComponent : UPrimitiveComponent
---@field public FrustumColor FColor @Color to draw the wireframe frustum.
---@field public FrustumAngle number @Angle of longest dimension of view shape. If the angle is 0 then an orthographic projection is used
---@field public FrustumAspectRatio number @Ratio of horizontal size over vertical size.
---@field public FrustumStartDist number @Distance from origin to start drawing the frustum.
---@field public FrustumEndDist number @Distance from origin to stop drawing the frustum.
---@field public Texture UTexture @optional texture to show on the near plane
local UDrawFrustumComponent = {}

