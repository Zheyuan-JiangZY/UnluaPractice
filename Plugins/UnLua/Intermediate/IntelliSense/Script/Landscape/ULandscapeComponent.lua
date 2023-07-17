---@class ULandscapeComponent : UPrimitiveComponent
---@field public SectionBaseX integer @X offset from global components grid origin (in quads)
---@field public SectionBaseY integer @Y offset from global components grid origin (in quads)
---@field public ComponentSizeQuads integer @Total number of quads for this component, has to be >0
---@field public SubsectionSizeQuads integer @Number of quads for a subsection of the component. SubsectionSizeQuads+1 must be a power of two.
---@field public NumSubsections integer @Number of subsections in X or Y axis
---@field public OverrideMaterial UMaterialInterface
---@field public OverrideHoleMaterial UMaterialInterface
---@field public OverrideMaterials TArray<FLandscapeComponentMaterialOverride>
---@field public MaterialInstances TArray<UMaterialInstanceConstant>
---@field public MaterialInstancesDynamic TArray<UMaterialInstanceDynamic>
---@field public LODIndexToMaterialIndex TArray<integer> @Mapping between LOD and Material Index
---@field public MaterialIndexToDisabledTessellationMaterial TArray<integer> @Mapping between Material Index to associated generated disabled Tessellation Material
---@field public XYOffsetmapTexture UTexture2D @XYOffsetmap texture reference
---@field public WeightmapScaleBias FVector4 @UV offset to component's weightmap data from component local coordinates
---@field public WeightmapSubsectionOffset number @U or V offset into the weightmap for the first subsection, in texture UV space
---@field public HeightmapScaleBias FVector4 @UV offset to Heightmap data from component local coordinates
---@field public CachedLocalBox FBox @Cached local-space bounding box, created at heightmap update time
---@field public CollisionComponent TLazyObjectPtr<ULandscapeHeightfieldCollisionComponent> @Reference to associated collision component
---@field private LightingGuid FGuid @Unique ID for this component, used for caching during distributed lighting
---@field private LayersData TMap<FGuid, FLandscapeLayerComponentData>
---@field private WeightmapTexturesUsage TArray<ULandscapeWeightmapUsage> @Final layer data
---@field private LayerUpdateFlagPerMode integer
---@field private bPendingCollisionDataUpdate boolean
---@field private bPendingLayerCollisionDataUpdate boolean
---@field private HeightmapTexture UTexture2D @Heightmap texture reference
---@field private WeightmapLayerAllocations TArray<FWeightmapLayerAllocationInfo> @List of layers, and the weightmap and channel they are stored
---@field private WeightmapTextures TArray<UTexture2D> @Weightmap texture reference
---@field private LODStreamingProxy ULandscapeLODStreamingProxy @Used to interface the component to the LOD streamer.
---@field public MapBuildDataId FGuid @Uniquely identifies this component's built map data.
---@field public CollisionMipLevel integer @Heightfield mipmap used to generate collision
---@field public SimpleCollisionMipLevel integer @Heightfield mipmap used to generate simple collision
---@field public NegativeZBoundsExtension number @Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the negative Z axis, positive value increases bound size
---@field public PositiveZBoundsExtension number @Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the positive Z axis, positive value increases bound size
---@field public StaticLightingResolution number @StaticLightingResolution overriding per component, default value 0 means no overriding
---@field public ForcedLOD integer @Forced LOD level to use when rendering
---@field public LODBias integer @LOD level Bias to use when rendering
---@field public StateId FGuid
---@field public BakedTextureMaterialGuid FGuid @The Material Guid that used when baking, to detect material recompilations
---@field public GIBakedBaseColorTexture UTexture2D @Pre-baked Base Color texture for use by distance field GI
---@field public LightingLODBias integer @LOD level Bias to use when lighting buidling via lightmass, -1 Means automatic LOD calculation based on ForcedLOD + LODBias
---@field public LayerWhitelist TArray<ULandscapeLayerInfoObject> @List of layers allowed to be painted on this component
---@field public EditToolRenderData FLandscapeEditToolRenderData @Pointer to data shared with the render thread, used by the editor tools
---@field public MobileDataSourceHash FGuid @Hash of source for mobile generated data. Used determine if we need to re-generate mobile pixel data.
---@field public MaterialPerLOD TMap<UMaterialInterface, integer> @Represent the chosen material for each LOD
---@field public SplineHash integer
---@field public PhysicalMaterialHash integer @Represents hash for last PhysicalMaterialTask
---@field public MobileBlendableLayerMask integer @For mobile
---@field public MobileMaterialInterfaces TArray<UMaterialInterface> @Material interfaces used for mobile
---@field public MobileWeightmapTextures TArray<UTexture2D> @Generated weightmap textures used for mobile. The first entry is also used for the normal map. Serialized only when cooking or loading cooked builds.
---@field public MobileCombinationMaterialInstances TArray<UMaterialInstanceConstant> @The editor needs to save out the combination MIC we'll use for mobile,         because we cannot generate it at runtime for standalone PIE games
local ULandscapeComponent = {}

---Gets the landscape material instance dynamic for this component
---@param InIndex integer
---@return UMaterialInstanceDynamic
function ULandscapeComponent:GetMaterialInstanceDynamic(InIndex) end

---Gets the landscape paint layer weight value at the given position using layer name. Returns 0 in case it fails.
---@param InLocation FVector
---@param InPaintLayerName string
---@return number
function ULandscapeComponent:EditorGetPaintLayerWeightByNameAtLocation(InLocation, InPaintLayerName) end

---Gets the landscape paint layer weight value at the given position using LandscapeLayerInfo . Returns 0 in case it fails.
---@param InLocation FVector
---@param PaintLayer ULandscapeLayerInfoObject
---@return number
function ULandscapeComponent:EditorGetPaintLayerWeightAtLocation(InLocation, PaintLayer) end

