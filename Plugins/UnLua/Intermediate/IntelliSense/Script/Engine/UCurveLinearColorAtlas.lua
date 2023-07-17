---Manages gradient LUT textures for registered actors and assigns them to the corresponding materials on the actor
---@class UCurveLinearColorAtlas : UTexture2D
---@field public bIsDirty boolean
---@field public TextureSize integer
---@field public bSquareResolution boolean @Set texture height equal to texture width.
---@field public TextureHeight integer
---@field public GradientCurves TArray<UCurveLinearColor> @Height of the lookup textures
---@field public bDisableAllAdjustments boolean @Disable all color adjustments to preserve negative values in curves. Color adjustments clamp to 0 when enabled.
---@field public bHasCachedColorAdjustments boolean
---@field public CachedColorAdjustments FCurveAtlasColorAdjustments
local UCurveLinearColorAtlas = {}

---@param InCurve UCurveLinearColor
---@param Position number @[out] 
---@return boolean
function UCurveLinearColorAtlas:GetCurvePosition(InCurve, Position) end

