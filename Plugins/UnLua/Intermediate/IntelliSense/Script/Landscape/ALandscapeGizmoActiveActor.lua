---@class ALandscapeGizmoActiveActor : ALandscapeGizmoActor
---@field public DataType integer
---@field public GizmoTexture UTexture2D
---@field public TextureScale FVector2D
---@field public SampledHeight TArray<FVector>
---@field public SampledNormal TArray<FVector>
---@field public SampleSizeX integer
---@field public SampleSizeY integer
---@field public CachedWidth number
---@field public CachedHeight number
---@field public CachedScaleXY number
---@field public FrustumVerts FVector
---@field public GizmoMaterial UMaterial
---@field public GizmoDataMaterial UMaterialInstance
---@field public GizmoMeshMaterial UMaterial
---@field public LayerInfos TArray<ULandscapeLayerInfoObject>
---@field public bSnapToLandscapeGrid boolean
---@field public UnsnappedRotation FRotator
local ALandscapeGizmoActiveActor = {}

