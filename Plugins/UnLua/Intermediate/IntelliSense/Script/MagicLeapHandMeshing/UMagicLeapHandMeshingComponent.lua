---Component that provides access to the HandMeshing API functionality.
---@class UMagicLeapHandMeshingComponent : UActorComponent
local UMagicLeapHandMeshingComponent = {}

---Specifies whether to use weighted triangle normals when calculating the normals for each vertex of the hand mesh.
---@param bInUseWeightedNormals boolean
function UMagicLeapHandMeshingComponent:SetUseWeightedNormals(bInUseWeightedNormals) end

---Disconnects the MRMesh component.
---@param InMRMeshPtr UMRMeshComponent
---@return boolean
function UMagicLeapHandMeshingComponent:DisconnectMRMesh(InMRMeshPtr) end

---Connects the MRMesh component.
---@param InMRMeshPtr UMRMeshComponent
---@return boolean
function UMagicLeapHandMeshingComponent:ConnectMRMesh(InMRMeshPtr) end

