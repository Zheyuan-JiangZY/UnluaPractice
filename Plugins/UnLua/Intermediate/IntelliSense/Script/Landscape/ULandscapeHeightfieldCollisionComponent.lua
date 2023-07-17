---@class ULandscapeHeightfieldCollisionComponent : UPrimitiveComponent
---@field public ComponentLayerInfos TArray<ULandscapeLayerInfoObject> @List of layers painted on this component. Matches the WeightmapLayerAllocations array in the LandscapeComponent.
---@field public SectionBaseX integer @Offset of component in landscape quads
---@field public SectionBaseY integer
---@field public CollisionSizeQuads integer @Size of component in collision quads
---@field public CollisionScale number @Collision scale: (ComponentSizeQuads) / (CollisionSizeQuads)
---@field public SimpleCollisionSizeQuads integer @Size of component's "simple collision" in collision quads
---@field public CollisionQuadFlags TArray<integer> @The flags for each collision quad. See ECollisionQuadFlags.
---@field public HeightfieldGuid FGuid @Guid used to share PhysX heightfield objects in the editor
---@field public CachedLocalBox FBox @Cached local-space bounding box, created at heightmap update time
---@field public RenderComponent TLazyObjectPtr<ULandscapeComponent> @Reference to render component
---@field public PhysicalMaterialRenderObjects TArray<UPhysicalMaterial> @Physical materials objects referenced by the indices in PhysicalMaterialRenderData. Stripped from cooked content
---@field public CookedPhysicalMaterials TArray<UPhysicalMaterial> @This is a list of physical materials that is actually used by a cooked HeightField
local ULandscapeHeightfieldCollisionComponent = {}

---Returns associated landscape component
---@return ULandscapeComponent
function ULandscapeHeightfieldCollisionComponent:GetRenderComponent() end

