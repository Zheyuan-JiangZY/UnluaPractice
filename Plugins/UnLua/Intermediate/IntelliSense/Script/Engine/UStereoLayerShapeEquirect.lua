---@class UStereoLayerShapeEquirect : UStereoLayerShape
---@field public LeftUVRect FBox2D @Left source texture UVRect, specifying portion of input texture corresponding to left eye.
---@field public RightUVRect FBox2D @Right source texture UVRect, specifying portion of input texture corresponding to right eye.
---@field public LeftScale FVector2D @Left eye's texture coordinate scale after mapping to 2D.
---@field public RightScale FVector2D @Right eye's texture coordinate scale after mapping to 2D.
---@field public LeftBias FVector2D @Left eye's texture coordinate bias after mapping to 2D.
---@field public RightBias FVector2D @Right eye's texture coordinate bias after mapping to 2D.
local UStereoLayerShapeEquirect = {}

---Set Equirect layer properties: UVRect, Scale, and Bias
---@param InScaleBiases FEquirectProps
function UStereoLayerShapeEquirect:SetEquirectProps(InScaleBiases) end

