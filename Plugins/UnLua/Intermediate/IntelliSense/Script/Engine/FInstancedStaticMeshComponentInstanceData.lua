---Helper class used to preserve lighting/selection state across blueprint reinstancing
---@class FInstancedStaticMeshComponentInstanceData : FSceneComponentInstanceData
---@field public StaticMesh UStaticMesh @Mesh being used by component
---@field public CachedStaticLighting FInstancedStaticMeshLightMapInstanceData @Static lighting info
---@field public PerInstanceSMData TArray<FInstancedStaticMeshInstanceData>
---@field public PerInstanceSMCustomData TArray<number>
---@field public InstancingRandomSeed integer @The cached random seed
local FInstancedStaticMeshComponentInstanceData = {}
