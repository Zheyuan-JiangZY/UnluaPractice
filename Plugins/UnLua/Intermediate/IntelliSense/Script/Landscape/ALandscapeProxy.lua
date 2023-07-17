---@class ALandscapeProxy : AActor
---@field public SplineComponent ULandscapeSplinesComponent
---@field protected LandscapeGuid FGuid @Guid for LandscapeEditorInfo *
---@field public LandscapeSectionOffset FIntPoint @Offset in quads from global components grid origin (in quads) *
---@field public MaxLODLevel integer @Max LOD level to use when rendering, -1 means the max available
---@field public ComponentScreenSizeToUseSubSections number @Component screen size (0.0 - 1.0) at which we should keep sub sections. This is mostly pertinent if you have large component of > 64 and component are close to the camera. The goal is to reduce draw call, so if a component is smaller than the value, we merge all subsections into 1 drawcall.
---@field public LOD0ScreenSize number @This is the starting screen size used to calculate the distribution, by default it's 1, but you can increase the value if you want less LOD0 component, and you use very large landscape component.
---@field public LOD0DistributionSetting number @The distribution setting used to change the LOD 0 generation, 1.75 is the normal distribution, numbers influence directly the LOD0 proportion on screen.
---@field public LODDistributionSetting number @The distribution setting used to change the LOD generation, 2 is the normal distribution, small number mean you want your last LODs to take more screen space and big number mean you want your first LODs to take more screen space.
---@field public TessellationComponentScreenSize number @Component screen size (0.0 - 1.0) at which we should enable tessellation.
---@field public UseTessellationComponentScreenSizeFalloff boolean @Tell if we should enable tessellation falloff. It will ramp down the Tessellation Multiplier from the material linearly. It should be disabled if you plan on using a custom implementation in material/shaders.
---@field public TessellationComponentScreenSizeFalloff number @Component screen size (0.0 - 1.0) at which we start the tessellation falloff.
---@field public OccluderGeometryLOD integer @Landscape LOD to use as an occluder geometry for software occlusion
---@field public ExportLOD integer @LOD level to use when exporting the landscape to obj or FBX
---@field public TargetDisplayOrderList TArray<string> @Display Order of the targets
---@field public TargetDisplayOrder ELandscapeLayerDisplayMode @Display Order mode for the targets
---@field public StaticLightingLOD integer @LOD level to use when running lightmass (increase to 1 or 2 for large landscapes to stop lightmass crashing)
---@field public DefaultPhysMaterial UPhysicalMaterial @Default physical material, used when no per-layer values physical materials
---@field public StreamingDistanceMultiplier number @Allows artists to adjust the distance where textures using UV 0 are streamed in/out. 1.0 is the default, whereas a higher value increases the streamed-in resolution. Value can be < 0 (from legcay content, or code changes)
---@field public LandscapeMaterial UMaterialInterface @Combined material used to render the landscape
---@field public LandscapeHoleMaterial UMaterialInterface @Material used to render landscape components with holes. If not set, LandscapeMaterial will be used (blend mode will be overridden to Masked if it is set to Opaque)
---@field public LandscapeMaterialsOverride TArray<FLandscapeProxyMaterialOverride>
---@field public PreEditLandscapeMaterial UMaterialInterface
---@field public PreEditLandscapeHoleMaterial UMaterialInterface
---@field public PreEditLandscapeMaterialsOverride TArray<FLandscapeProxyMaterialOverride>
---@field public bIsPerformingInteractiveActionOnLandscapeMaterialOverride boolean
---@field public bMeshHoles boolean @Use unique geometry instead of material alpha tests for holes on mobile platforms. This requires additional memory and will render more vertices at lower LODs.
---@field public MeshHolesMaxLod integer @Maximum geometry LOD at which to render unique hole meshes.
---@field public RuntimeVirtualTextures TArray<URuntimeVirtualTexture> @Array of runtime virtual textures into which we draw this landscape. The material also needs to be set up to output to a virtual texture.
---@field public VirtualTextureNumLods integer @Number of mesh levels to use when rendering landscape into runtime virtual texture. Lower values reduce vertex count when rendering to the runtime virtual texture but decrease accuracy when using values that require vertex interpolation.
---@field public VirtualTextureLodBias integer @Bias to the LOD selected for rendering to runtime virtual textures. Higher values reduce vertex count when rendering to the runtime virtual texture.
---@field public VirtualTextureRenderPassType ERuntimeVirtualTextureMainPassType @Controls if this component draws in the main pass as well as in the virtual texture.
---@field public NegativeZBoundsExtension number @Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the negative Z axis, positive value increases bound size Note that this can also be overridden per-component when the component is selected with the component select tool
---@field public PositiveZBoundsExtension number @Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the positive Z axis, positive value increases bound size Note that this can also be overridden per-component when the component is selected with the component select tool
---@field public LandscapeComponents TArray<ULandscapeComponent> @The array of LandscapeComponent that are used by the landscape
---@field public CollisionComponents TArray<ULandscapeHeightfieldCollisionComponent> @Array of LandscapeHeightfieldCollisionComponent
---@field public FoliageComponents TArray<UHierarchicalInstancedStaticMeshComponent>
---@field public bHasLandscapeGrass boolean @Only used outside of the editor (e.g. in cooked builds) Disables landscape grass processing entirely if no landscape components have landscape grass configured
---@field public StaticLightingResolution number @The resolution to cache lighting at, in texels/quad in one axis Total resolution would be changed by StaticLightingResolution*StaticLightingResolution Automatically calculate proper value for removing seams
---@field public CastShadow boolean @Controls whether the primitive component should cast a shadow or not.
---@field public bCastDynamicShadow boolean @Controls whether the primitive should cast shadows in the case of non precomputed shadowing.  This flag is only used if CastShadow is true. *
---@field public bCastStaticShadow boolean @Whether the object should cast a static shadow from shadow casting lights.  This flag is only used if CastShadow is true.
---@field public bCastFarShadow boolean @When enabled, the component will be rendering into the far shadow cascades(only for directional lights).  This flag is only used if CastShadow is true.
---@field public bCastHiddenShadow boolean @If true, the primitive will cast shadows even if bHidden is true.  Controls whether the primitive should cast shadows when hidden.  This flag is only used if CastShadow is true.
---@field public bCastShadowAsTwoSided boolean @Whether this primitive should cast dynamic shadows as if it were a two sided material.  This flag is only used if CastShadow is true.
---@field public bAffectDistanceFieldLighting boolean @Controls whether the primitive should affect dynamic distance field lighting methods.  This flag is only used if CastShadow is true. *
---@field public LightingChannels FLightingChannels @Channels that this Landscape should be in.  Lights with matching channels will affect the Landscape. These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.
---@field public bUseMaterialPositionOffsetInStaticLighting boolean @Whether to use the landscape material's vertical world position offset when calculating static lighting.               Note: Only z (vertical) offset is supported. XY offsets are ignored.               Does not work correctly with an XY offset map (mesh collision)
---@field public bRenderCustomDepth boolean @If true, the Landscape will be rendered in the CustomDepth pass (usually used for outlines)
---@field public CustomDepthStencilWriteMask ERendererStencilMask @Mask used for stencil buffer writes.
---@field public CustomDepthStencilValue integer @Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)
---@field public LDMaxDrawDistance number @Max draw distance exposed to LDs. The real max draw distance is the min (disregarding 0) of this and volumes affecting this object.
---@field public bIsMovingToLevel boolean
---@field public LightmassSettings FLightmassPrimitiveSettings @The Lightmass settings for this object.
---@field public CollisionMipLevel integer @Landscape LOD to use for collision tests. Higher numbers use less memory and process faster, but are much less accurate
---@field public SimpleCollisionMipLevel integer @If set higher than the "Collision Mip Level", this specifies the Landscape LOD to use for "simple collision" tests, otherwise the "Collision Mip Level" is used for both simple and complex collision. Does not work with an XY offset map (mesh collision)
---@field public CollisionThickness number @Thickness of the collision surface, in unreal units
---@field public BodyInstance FBodyInstance @Collision profile settings for this landscape
---@field public bGenerateOverlapEvents boolean @If true, Landscape will generate overlap events when other components are overlapping it (eg Begin Overlap). Both the Landscape and the other component must have this flag enabled for overlap events to occur.
---@field public bBakeMaterialPositionOffsetIntoCollision boolean @Whether to bake the landscape material's vertical world position offset into the collision heightfield.               Note: Only z (vertical) offset is supported. XY offsets are ignored.               Does not work with an XY offset map (mesh collision)
---@field public ReimportHeightmapFilePath string
---@field public ReimportDestinationLayerGuid FGuid @Height and weightmap import destination layer guid
---@field public EditorLayerSettings TArray<FLandscapeEditorLayerSettings>
---@field public ComponentSizeQuads integer @Data set at creation time
---@field public SubsectionSizeQuads integer @Total number of quads in each component
---@field public NumSubsections integer @Number of quads for a subsection of a component. SubsectionSizeQuads+1 must be a power of two.
---@field public bUsedForNavigation boolean @Hints navigation system whether this landscape will ever be navigated on. true by default, but make sure to set it to false for faraway, background landscapes
---@field public bFillCollisionUnderLandscapeForNavmesh boolean @Set to true to prevent navmesh generation under the terrain geometry
---@field public bUseDynamicMaterialInstance boolean @When set to true it will generate MaterialInstanceDynamic for each components, so material can be changed at runtime
---@field public NavigationGeometryGatheringMode ENavDataGatheringMode
---@field public MaxPaintedLayersPerComponent integer
---@field public bUseLandscapeForCullingInvisibleHLODVertices boolean @Flag whether or not this Landscape's surface can be used for culling hidden triangles *
---@field public bHasLayersContent boolean @Flag that tell if we have some layers content *
---@field public WeightmapUsageMap TMap<UTexture2D, ULandscapeWeightmapUsage> @Map of weightmap usage
local ALandscapeProxy = {}

---Set an MID vector parameter value for all landscape components.
---@param ParameterName string
---@param Value FLinearColor
function ALandscapeProxy:SetLandscapeMaterialVectorParameterValue(ParameterName, Value) end

---Set an MID texture parameter value for all landscape components.
---@param ParameterName string
---@param Value UTexture
function ALandscapeProxy:SetLandscapeMaterialTextureParameterValue(ParameterName, Value) end

---Set a MID scalar (float) parameter value for all landscape components.
---@param ParameterName string
---@param Value number
function ALandscapeProxy:SetLandscapeMaterialScalarParameterValue(ParameterName, Value) end

---Overwrites a landscape weightmap with render target data
---Only works in the editor
---@param InRenderTarget UTextureRenderTarget2D
---@param InLayerName string
---@return boolean
function ALandscapeProxy:LandscapeImportWeightmapFromRenderTarget(InRenderTarget, InLayerName) end

---Overwrites a landscape heightmap with render target data
---                                                                         Note that using RTF_RGBA16f with InImportHeightFromRGChannel == false, could have precision loss
---Only works in the editor
---@param InRenderTarget UTextureRenderTarget2D
---@param InImportHeightFromRGChannel boolean @[opt] 
---@return boolean
function ALandscapeProxy:LandscapeImportHeightmapFromRenderTarget(InRenderTarget, InImportHeightFromRGChannel) end

---Output a landscape weightmap to a render target
---Only works in the editor
---@param InRenderTarget UTextureRenderTarget2D
---@param InLayerName string
---@return boolean
function ALandscapeProxy:LandscapeExportWeightmapToRenderTarget(InRenderTarget, InLayerName) end

---Output a landscape heightmap to a render target
---                                                                         Note that using RTF_RGBA16f with InExportHeightIntoRGChannel == false, could have precision loss.
---@param InRenderTarget UTextureRenderTarget2D
---@param InExportHeightIntoRGChannel boolean @[opt] 
---@param InExportLandscapeProxies boolean @[opt] 
---@return boolean
function ALandscapeProxy:LandscapeExportHeightmapToRenderTarget(InRenderTarget, InExportHeightIntoRGChannel, InExportLandscapeProxies) end

---Setter for LandscapeMaterial. Has no effect outside the editor.
---@param NewLandscapeMaterial UMaterialInterface
function ALandscapeProxy:EditorSetLandscapeMaterial(NewLandscapeMaterial) end

---Deform landscape using a given spline
---@param InSplineComponent USplineComponent
---@param StartWidth number @[opt] 
---@param EndWidth number @[opt] 
---@param StartSideFalloff number @[opt] 
---@param EndSideFalloff number @[opt] 
---@param StartRoll number @[opt] 
---@param EndRoll number @[opt] 
---@param NumSubdivisions integer @[opt] 
---@param bRaiseHeights boolean @[opt] 
---@param bLowerHeights boolean @[opt] 
---@param PaintLayer ULandscapeLayerInfoObject @[opt] 
---@param EditLayerName string
function ALandscapeProxy:EditorApplySpline(InSplineComponent, StartWidth, EndWidth, StartSideFalloff, EndSideFalloff, StartRoll, EndRoll, NumSubdivisions, bRaiseHeights, bLowerHeights, PaintLayer, EditLayerName) end

---Change UseTessellationComponentScreenSizeFalloff value on the render proxy.
---@param InComponentScreenSizeToUseSubSections boolean
function ALandscapeProxy:ChangeUseTessellationComponentScreenSizeFalloff(InComponentScreenSizeToUseSubSections) end

---Change TessellationComponentScreenSizeFalloff value on the render proxy.
---@param InUseTessellationComponentScreenSizeFalloff number
function ALandscapeProxy:ChangeTessellationComponentScreenSizeFalloff(InUseTessellationComponentScreenSizeFalloff) end

---Change TessellationComponentScreenSize value on the render proxy.
---@param InTessellationComponentScreenSize number
function ALandscapeProxy:ChangeTessellationComponentScreenSize(InTessellationComponentScreenSize) end

---Change the Level of Detail distance factor
---@param InLODDistanceFactor number
function ALandscapeProxy:ChangeLODDistanceFactor(InLODDistanceFactor) end

---Change ComponentScreenSizeToUseSubSections value on the render proxy.
---@param InComponentScreenSizeToUseSubSections number
function ALandscapeProxy:ChangeComponentScreenSizeToUseSubSections(InComponentScreenSizeToUseSubSections) end

