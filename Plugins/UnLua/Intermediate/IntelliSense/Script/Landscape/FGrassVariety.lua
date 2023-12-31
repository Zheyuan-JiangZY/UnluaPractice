---@class FGrassVariety
---@field public GrassMesh UStaticMesh
---@field public OverrideMaterials TArray<UMaterialInterface> @Material Overrides.
---@field public GrassDensity FPerPlatformFloat @Instances per 10 square meters.
---@field public bUseGrid boolean @If true, use a jittered grid sequence for placement, otherwise use a halton sequence.
---@field public PlacementJitter number
---@field public StartCullDistance FPerPlatformInt @The distance where instances will begin to fade out if using a PerInstanceFadeAmount material node. 0 disables.
---@field public EndCullDistance FPerPlatformInt @The distance where instances will have completely faded out when using a PerInstanceFadeAmount material node. 0 disables. When the entire cluster is beyond this distance, the cluster is completely culled and not rendered at all.
---@field public MinLOD integer @Specifies the smallest LOD that will be used for this component. If -1 (default), the MinLOD of the static mesh asset will be used instead.
---@field public Scaling EGrassScaling @Specifies grass instance scaling type
---@field public ScaleX FFloatInterval @Specifies the range of scale, from minimum to maximum, to apply to a grass instance's X Scale property
---@field public ScaleY FFloatInterval @Specifies the range of scale, from minimum to maximum, to apply to a grass instance's Y Scale property
---@field public ScaleZ FFloatInterval @Specifies the range of scale, from minimum to maximum, to apply to a grass instance's Z Scale property
---@field public RandomRotation boolean @Whether the grass instances should be placed at random rotation (true) or all at the same rotation (false)
---@field public AlignToSurface boolean @Whether the grass instances should be tilted to the normal of the landscape (true), or always vertical (false)
---@field public bUseLandscapeLightmap boolean @Whether to use the landscape's lightmap when rendering the grass.
---@field public LightingChannels FLightingChannels @Lighting channels that the grass will be assigned. Lights with matching channels will affect the grass. These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.
---@field public bReceivesDecals boolean @Whether the grass instances should receive decals.
---@field public bCastDynamicShadow boolean @Whether the grass should cast shadows when using non-precomputed shadowing. *
---@field public bKeepInstanceBufferCPUCopy boolean @Whether we should keep a cpu copy of the instance buffer. This should be set to true if you plan on using GetOverlappingXXXXCount functions of the component otherwise it won't return any data.*
local FGrassVariety = {}
