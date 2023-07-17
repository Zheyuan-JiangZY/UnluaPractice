---@class ALandscapeBlueprintBrushBase : AActor
---@field protected OwningLandscape ALandscape
---@field protected AffectHeightmap boolean
---@field protected AffectWeightmap boolean
---@field protected AffectedWeightmapLayers TArray<string>
---@field protected bIsVisible boolean
local ALandscapeBlueprintBrushBase = {}

function ALandscapeBlueprintBrushBase:RequestLandscapeUpdate() end

---@param InIsHeightmap boolean
---@param InCombinedResult UTextureRenderTarget2D
---@param InWeightmapLayerName string
---@return UTextureRenderTarget2D
function ALandscapeBlueprintBrushBase:Render(InIsHeightmap, InCombinedResult, InWeightmapLayerName) end

---@param InLandscapeTransform FTransform
---@param InLandscapeSize FIntPoint
---@param InLandscapeRenderTargetSize FIntPoint
function ALandscapeBlueprintBrushBase:Initialize(InLandscapeTransform, InLandscapeSize, InLandscapeRenderTargetSize) end

---@param OutStreamableAssets TArray_UObject_ @[out] 
function ALandscapeBlueprintBrushBase:GetBlueprintRenderDependencies(OutStreamableAssets) end

