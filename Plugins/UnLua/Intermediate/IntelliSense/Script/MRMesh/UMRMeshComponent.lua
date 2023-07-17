---@class UMRMeshComponent : UPrimitiveComponent
---@field private Material UMaterialInterface
---@field private WireframeMaterial UMaterialInterface
---@field private bCreateMeshProxySections boolean @If true, MRMesh will create a renderable mesh proxy.  If false it will not, but could still provide collision.
---@field private bUpdateNavMeshOnMeshUpdate boolean @If true, MRMesh will automatically update its navmesh whenever any Mesh section is updated. This may be expensive. If this is disabled use ForceNavMeshUpdate to trigger a navmesh update when necessary.  Moving the component will also trigger a navmesh update.
---@field private bNeverCreateCollisionMesh boolean @If true, MRMesh will not create a collidable ridgid body for each mesh section and can therefore never have collision.  Avoids the cost of generating collision.
---@field private CachedBodySetup UBodySetup
---@field private BodySetups TArray<UBodySetup>
local UMRMeshComponent = {}

---Set the wireframe material.
---@param InMaterial UMaterialInterface
function UMRMeshComponent:SetWireframeMaterial(InMaterial) end

---@param InColor FLinearColor
function UMRMeshComponent:SetWireframeColor(InColor) end

---@param bUseWireframe boolean
function UMRMeshComponent:SetUseWireframe(bUseWireframe) end

---@param bEnable boolean
function UMRMeshComponent:SetEnableMeshOcclusion(bEnable) end

---@return boolean
function UMRMeshComponent:IsConnected() end

---@return FLinearColor
function UMRMeshComponent:GetWireframeColor() end

---@return boolean
function UMRMeshComponent:GetUseWireframe() end

---@return boolean
function UMRMeshComponent:GetEnableMeshOcclusion() end

function UMRMeshComponent:ForceNavMeshUpdate() end

function UMRMeshComponent:Clear() end

