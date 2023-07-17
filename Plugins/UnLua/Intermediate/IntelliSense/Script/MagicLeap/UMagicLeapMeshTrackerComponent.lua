---The MeshTrackerComponent class manages requests for environmental mesh data, processes the results and provides
---them to the calling system. The calling system is able request environmental mesh data within a specified area.
---Various other search criteria can be set via this class's public properties.  Mesh data requests are processed
---on a separate thread.  Once a mesh data request has been processed the calling system will be notified via an
---FOnMeshTrackerUpdated broadcast.
---@class UMagicLeapMeshTrackerComponent : USceneComponent
---@field public OnMeshTrackerUpdated MulticastDelegate @Activated whenever new information about this mesh tracker is detected.
---@field public ScanWorld boolean @Set to true to start scanning the world for meshes.
---@field public MeshType EMagicLeapMeshType @The type of mesh to query.
---@field public BoundingVolume UBoxComponent @Bounding box for the mesh scan. The mesh will be scanned for only within this box.
---@field public LevelOfDetail EMagicLeapMeshLOD @Meshing LOD.
---@field public PerimeterOfGapsToFill number @The perimeter (in Unreal Units) of gaps to be filled. 0 means do not fill. A good value is 300cm.
---@field public Planarize boolean @If true, the system will planarize the returned mesh i.e. planar regions will be smoothed out.
---@field public DisconnectedSectionArea number @Any section that is disconnected from the main mesh and has an area (in Unreal Units squared)           less than this value will be removed.               0 means do not remove disconnected sections. A good value is 50cm.
---@field public RequestNormals boolean @If true, the system will generate normals for the triangle vertices.
---@field public RequestVertexConfidence boolean @If true, the system will generate the mesh confidence values for the triangle vertices. These confidence values can be used to determine if the user needs to scan more.
---@field public VertexColorMode EMagicLeapMeshVertexColorMode @Vertex Colors can be unused, or filled with several types of information.
---@field public BlockVertexColors TArray<FColor> @Colors through which we cycle when setting vertex color by block.
---@field public VertexColorFromConfidenceZero FLinearColor @Color mapped to confidence value of zero.
---@field public VertexColorFromConfidenceOne FLinearColor @Color mapped to confidence value of one.
---@field public RemoveOverlappingTriangles boolean @If true, overlapping area between two mesh blocks will be removed. This field is only valid when the MeshType is Blocks.
---@field public MRMesh UMRMeshComponent @MRMeshComponent can render and provide collision based on the Mesh data.
---@field public BricksPerFrame integer @Specifies the number of MR Mesh bricks to create per frame. This is to           amortize the cost of brick creation across frames rather than creating               all N bricks delivered in response to each meshing query.               If the value is <=0 then all meshes will be pushed to MR Mesh as they               are provided by the system.
local UMagicLeapMeshTrackerComponent = {}

---IMagicLeapMeshBlockSelectorInterface
---@param NewMeshInfo FMagicLeapTrackingMeshInfo
---@param RequestedMesh TArray_FMagicLeapMeshBlockRequest_ @[out] 
function UMagicLeapMeshTrackerComponent:SelectMeshBlocks(NewMeshInfo, RequestedMesh) end

---Delegate used by OnMeshUpdated().
---@param ID FGuid
---@param Vertices TArray_FVector_
---@param Triangles TArray_integer_
---@param Normals TArray_FVector_
---@param Confidence TArray_number_
function UMagicLeapMeshTrackerComponent:OnMeshTrackerUpdated__DelegateSignature(ID, Vertices, Triangles, Normals, Confidence) end

---Gets the number of mesh bricks in the pending queue.
---@return integer
function UMagicLeapMeshTrackerComponent:GetNumQueuedBlockUpdates() end

---Unlinks the current procedural mesh component from the mesh tracking system.
---@param InMRMeshPtr UMRMeshComponent
function UMagicLeapMeshTrackerComponent:DisconnectMRMesh(InMRMeshPtr) end

---Disconnects the previously connected IMagicLeapMeshBlockSelectorInterface.
---The default implementation is used this case - all new and updated blocks are meshed with the MeshTrackerComponent'd LevelOfDetail.
function UMagicLeapMeshTrackerComponent:DisconnectBlockSelector() end

---Sets the procedural mesh component that will store and display the environmental mesh results.
---@param InMRMeshPtr UMRMeshComponent
function UMagicLeapMeshTrackerComponent:ConnectMRMesh(InMRMeshPtr) end

---Sets the interface to be used for selecting blocks to mesh.
---@param Selector TScriptInterface_UMagicLeapMeshBlockSelectorInterface_
function UMagicLeapMeshTrackerComponent:ConnectBlockSelector(Selector) end

