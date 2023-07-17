---@class UHierarchicalInstancedStaticMeshComponent : UInstancedStaticMeshComponent
---@field public SortedInstances TArray<integer> @Table for remaping instances from cluster tree to PerInstanceSMData order
---@field public NumBuiltInstances integer @The number of instances in the ClusterTree. Subsequent instances will always be rendered.
---@field public BuiltInstanceBounds FBox @Bounding box of any built instances (cached from the ClusterTree)
---@field public UnbuiltInstanceBounds FBox @Bounding box of any unbuilt instances
---@field public UnbuiltInstanceBoundsList TArray<FBox> @Bounds of each individual unbuilt instance, used for LOD calculation
---@field public bEnableDensityScaling boolean @Enable for detail meshes that don't really affect the game. Disable for anything important. Typically, this will be enabled for small meshes without collision (e.g. grass) and disabled for large meshes with collision (e.g. trees)
---@field public OcclusionLayerNumNodes integer @The number of nodes in the occlusion layer
---@field public CacheMeshExtendedBounds FBoxSphereBounds @The last mesh bounds that was cache
---@field public bDisableCollision boolean
---@field public InstanceCountToRender integer @Instances to render (including removed one until the build is complete)
local UHierarchicalInstancedStaticMeshComponent = {}

---Removes all the instances with indices specified in the InstancesToRemove array. Returns true on success.
---@param InstancesToRemove TArray_integer_
---@return boolean
function UHierarchicalInstancedStaticMeshComponent:RemoveInstances(InstancesToRemove) end

