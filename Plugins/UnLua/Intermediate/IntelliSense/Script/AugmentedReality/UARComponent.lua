---ARComponent handles replication and visualization update for AR tracked geometries
---ARComponent is created in either multiplayer or local only environment
---To customize the visualization logic, override 'UpdateVisualization' in Blueprint
---or 'UpdateVisualization_Implementation' in C++
---To customize the replication logic, disable 'bUseDefaultReplication' and implement
---your own replication logic when the ARComponent is updated (see how 'Update' is implemented in the sub classes)
---A MRMeshComponent will be created if mesh visualization is enabled (see UARSessionConfig::bGenerateMeshDataFromTrackedGeometry)
---It can be accessed via 'GetMRMesh' or 'UARTrackedGeometry::GetUnderlyingMesh'
---@class UARComponent : USceneComponent
---@field public NativeID FGuid
---@field protected bUseDefaultReplication boolean @If the default replication logic should be used for this component
---@field protected DefaultMeshMaterial UMaterialInterface @The default material to be used for the generated mesh component. If not set, the DefaultMeshMaterial from ARSessionConfig will be used.
---@field protected DefaultWireframeMeshMaterial UMaterialInterface @The default wireframe material to be used for the generated mesh component. If not set, the DefaultMeshMaterial from ARSessionConfig will be used.
---@field protected MRMeshComponent UMRMeshComponent
---@field protected MyTrackedGeometry UARTrackedGeometry @The tracked geometry used for updating this component, only set on "local" client
local UARComponent = {}

function UARComponent:UpdateVisualization() end

---@param NativeID FGuid
function UARComponent:SetNativeID(NativeID) end

---Event when native representation is removed, called on server and clients.
function UARComponent:ReceiveRemove() end

function UARComponent:OnRep_Payload() end

---@return UMRMeshComponent
function UARComponent:GetMRMesh() end

