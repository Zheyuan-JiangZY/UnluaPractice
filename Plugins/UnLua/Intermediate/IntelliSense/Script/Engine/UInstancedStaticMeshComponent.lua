---A component that efficiently renders multiple instances of the same StaticMesh.
---@class UInstancedStaticMeshComponent : UStaticMeshComponent
---@field public PerInstanceSMData TArray<FInstancedStaticMeshInstanceData> @Array of instances, bulk serialized.
---@field public NumCustomDataFloats integer @Defines the number of floats that will be available per instance for custom data
---@field public PerInstanceSMCustomData TArray<number> @Array of custom data for instances. This will contains NumCustomDataFloats*InstanceCount entries. The entries are represented sequantially, in instance order. Can be read in a material and manipulated through Blueprints.     Example: If NumCustomDataFloats is 1, then each entry will belong to an instance. Custom data 0 will belong to Instance 0. Custom data 1 will belong to Instance 1 etc.     Example: If NumCustomDataFloats is 2, then each pair of sequential entries belong to an instance. Custom data 0 and 1 will belong to Instance 0. Custom data 2 and 3 will belong to Instance 2 etc.
---@field public InstancingRandomSeed integer @Value used to seed the random number stream that generates random numbers for each of this mesh's instances.       The random number is stored in a buffer accessible to materials through the PerInstanceRandom expression. If       this is set to zero (default), it will be populated automatically by the editor.
---@field public InstanceStartCullDistance integer @Distance from camera at which each instance begins to fade out.
---@field public InstanceEndCullDistance integer @Distance from camera at which each instance completely fades out.
---@field public InstanceReorderTable TArray<integer> @Mapping from PerInstanceSMData order to instance render buffer order. If empty, the PerInstanceSMData order is used.
---@field protected NumPendingLightmaps integer @Number of pending lightmaps still to be calculated (Apply()'d).
---@field protected CachedMappings TArray<FInstancedStaticMeshMappingInfo> @The mappings for all the instances of this component.
local UInstancedStaticMeshComponent = {}

---Update the transform for the instance specified.
---@param InstanceIndex integer
---@param NewInstanceTransform FTransform
---@param bWorldSpace boolean @[opt] 
---@param bMarkRenderStateDirty boolean @[opt] 
---@param bTeleport boolean @[opt] 
---@return boolean
function UInstancedStaticMeshComponent:UpdateInstanceTransform(InstanceIndex, NewInstanceTransform, bWorldSpace, bMarkRenderStateDirty, bTeleport) end

---Update custom data for specific instance
---@param InstanceIndex integer
---@param CustomDataIndex integer
---@param CustomDataValue number
---@param bMarkRenderStateDirty boolean @[opt] 
---@return boolean
function UInstancedStaticMeshComponent:SetCustomDataValue(InstanceIndex, CustomDataIndex, CustomDataValue, bMarkRenderStateDirty) end

---Sets the fading start and culling end distances for this component.
---@param StartCullDistance integer
---@param EndCullDistance integer
function UInstancedStaticMeshComponent:SetCullDistances(StartCullDistance, EndCullDistance) end

---Remove the instance specified. Returns True on success. Note that this will leave the array in order, but may shrink it.
---@param InstanceIndex integer
---@return boolean
function UInstancedStaticMeshComponent:RemoveInstance(InstanceIndex) end

---Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set.  Returns True on success.
---@param InstanceIndex integer
---@param OutInstanceTransform FTransform @[out] 
---@param bWorldSpace boolean @[opt] 
---@return boolean
function UInstancedStaticMeshComponent:GetInstanceTransform(InstanceIndex, OutInstanceTransform, bWorldSpace) end

---Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.
---@param Center FVector
---@param Radius number
---@param bSphereInWorldSpace boolean @[opt] 
---@return TArray_integer_
function UInstancedStaticMeshComponent:GetInstancesOverlappingSphere(Center, Radius, bSphereInWorldSpace) end

---Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.
---@param Box FBox
---@param bBoxInWorldSpace boolean @[opt] 
---@return TArray_integer_
function UInstancedStaticMeshComponent:GetInstancesOverlappingBox(Box, bBoxInWorldSpace) end

---Get the number of instances in this component.
---@return integer
function UInstancedStaticMeshComponent:GetInstanceCount() end

---Clear all instances being rendered by this component.
function UInstancedStaticMeshComponent:ClearInstances() end

---Update the transform for an array of instances.
---@param StartInstanceIndex integer
---@param NewInstancesTransforms TArray_FTransform_
---@param bWorldSpace boolean @[opt] 
---@param bMarkRenderStateDirty boolean @[opt] 
---@param bTeleport boolean @[opt] 
---@return boolean
function UInstancedStaticMeshComponent:BatchUpdateInstancesTransforms(StartInstanceIndex, NewInstancesTransforms, bWorldSpace, bMarkRenderStateDirty, bTeleport) end

---Update the transform for a number of instances.
---@param StartInstanceIndex integer
---@param NumInstances integer
---@param NewInstancesTransform FTransform
---@param bWorldSpace boolean @[opt] 
---@param bMarkRenderStateDirty boolean @[opt] 
---@param bTeleport boolean @[opt] 
---@return boolean
function UInstancedStaticMeshComponent:BatchUpdateInstancesTransform(StartInstanceIndex, NumInstances, NewInstancesTransform, bWorldSpace, bMarkRenderStateDirty, bTeleport) end

---Add an instance to this component. Transform is given in world space.
---@param WorldTransform FTransform
---@return integer
function UInstancedStaticMeshComponent:AddInstanceWorldSpace(WorldTransform) end

---Add multiple instances to this component. Transform is given in local space of this component.
---@param InstanceTransforms TArray_FTransform_
---@param bShouldReturnIndices boolean
---@return TArray_integer_
function UInstancedStaticMeshComponent:AddInstances(InstanceTransforms, bShouldReturnIndices) end

---Add an instance to this component. Transform is given in local space of this component.
---@param InstanceTransform FTransform
---@return integer
function UInstancedStaticMeshComponent:AddInstance(InstanceTransform) end

