---@class ULandscapeInfo : UObject
---@field public LandscapeActor TLazyObjectPtr<ALandscape>
---@field public LandscapeGuid FGuid
---@field public ComponentSizeQuads integer
---@field public SubsectionSizeQuads integer
---@field public ComponentNumSubsections integer
---@field public DrawScale FVector
---@field public Layers TArray<FLandscapeInfoLayerSettings>
---@field public Proxies TArray<ALandscapeStreamingProxy>
local ULandscapeInfo = {}

