---@class ALandscape : ALandscapeProxy
---@field public bCanHaveLayersContent boolean
---@field public LandscapeSplinesTargetLayerGuid FGuid @Target Landscape Layer for Landscape Splines
---@field public LandscapeLayers TArray<FLandscapeLayer>
---@field public HeightmapRTList TArray<UTextureRenderTarget2D>
---@field public WeightmapRTList TArray<UTextureRenderTarget2D>
---@field private LandscapeSplinesAffectedComponents TSet<ULandscapeComponent> @Components affected by landscape splines (used to partially clear Layer Reserved for Splines)
---@field private bLandscapeLayersAreInitialized boolean
---@field private WasCompilingShaders boolean
---@field private LayerContentUpdateModes integer
---@field private bSplineLayerUpdateRequested boolean
local ALandscape = {}

