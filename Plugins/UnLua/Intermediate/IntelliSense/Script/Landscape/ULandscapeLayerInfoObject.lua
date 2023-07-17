---@class ULandscapeLayerInfoObject : UObject
---@field public LayerName string
---@field public PhysMaterial UPhysicalMaterial
---@field public Hardness number
---@field public MinimumCollisionRelevanceWeight number @The minimum weight that needs to be painted for that layer to be picked up as the dominant physical layer
---@field public bNoWeightBlend boolean
---@field public SplineFalloffModulationTexture UTexture2D @Texture to modulate the Splines Falloff Layer Alpha
---@field public SplineFalloffModulationColorMask ESplineModulationColorMask
---@field public SplineFalloffModulationTiling number
---@field public SplineFalloffModulationBias number
---@field public SplineFalloffModulationScale number
---@field public IsReferencedFromLoadedData boolean
---@field public LayerUsageDebugColor FLinearColor @The color to use for layer usage debug
local ULandscapeLayerInfoObject = {}

