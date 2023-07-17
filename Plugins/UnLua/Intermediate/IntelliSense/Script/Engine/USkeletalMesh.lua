---SkeletalMesh is geometry bound to a hierarchical skeleton of bones which can be animated for the purpose of deforming the mesh.
---Skeletal Meshes are built up of two parts; a set of polygons composed to make up the surface of the mesh, and a hierarchical skeleton which can be used to animate the polygons.
---The 3D models, rigging, and animations are created in an external modeling and animation application (3DSMax, Maya, Softimage, etc).
---@class USkeletalMesh : UStreamableRenderAsset
---@field public MeshEditorDataObject USkeletalMeshEditorData
---@field public Skeleton USkeleton
---@field private ImportedBounds FBoxSphereBounds @Original imported mesh bounds
---@field private ExtendedBounds FBoxSphereBounds @Bounds extended by user values below
---@field protected PositiveBoundsExtension FVector @Bound extension values in addition to imported bound in the positive direction of XYZ,     positive value increases bound size and negative value decreases bound size.     The final bound would be from [Imported Bound - Negative Bound] to [Imported Bound + Positive Bound].
---@field protected NegativeBoundsExtension FVector @Bound extension values in addition to imported bound in the negative direction of XYZ,     positive value increases bound size and negative value decreases bound size.     The final bound would be from [Imported Bound - Negative Bound] to [Imported Bound + Positive Bound].
---@field public Materials TArray<FSkeletalMaterial>
---@field public SkelMirrorTable TArray<FBoneMirrorInfo>
---@field private LODInfo TArray<FSkeletalMeshLODInfo> @Struct containing information for each LOD level, such as materials to use, and when use the LOD.
---@field public MinLod FPerPlatformInt
---@field public DisableBelowMinLodStripping FPerPlatformBool
---@field public bOverrideLODStreamingSettings boolean
---@field public bSupportLODStreaming FPerPlatformBool
---@field public MaxNumStreamedLODs FPerPlatformInt
---@field public MaxNumOptionalLODs FPerPlatformInt
---@field public LODSettings USkeletalMeshLODSettings
---@field public DefaultAnimatingRig TSoftObjectPtr<UObject>
---@field public SkelMirrorAxis integer
---@field public SkelMirrorFlipAxis integer
---@field public bHasBeenSimplified boolean
---@field public bHasVertexColors boolean
---@field public bEnablePerPolyCollision boolean
---@field public VertexColorGuid FGuid
---@field public BodySetup UBodySetup
---@field public PhysicsAsset UPhysicsAsset
---@field public ShadowPhysicsAsset UPhysicsAsset
---@field public NodeMappingData TArray<UNodeMappingContainer>
---@field public AssetImportData UAssetImportData
---@field public ThumbnailInfo UThumbnailInfo
---@field public bHasCustomDefaultEditorCamera boolean
---@field public DefaultEditorCameraLocation FVector
---@field public DefaultEditorCameraRotation FRotator
---@field public DefaultEditorCameraLookAt FVector
---@field public DefaultEditorCameraOrthoZoom number
---@field public PreviewAttachedAssetContainer FPreviewAssetAttachContainer
---@field public bSupportRayTracing boolean @If true, a ray tracing acceleration structure will be built for this mesh and it may be used in ray tracing effects
---@field public MorphTargets TArray<UMorphTarget>
---@field public FloorOffset number
---@field public RetargetBasePose TArray<FTransform>
---@field public PostProcessAnimBlueprint TSubclassOf<UAnimInstance>
---@field public MeshClothingAssets TArray<UClothingAssetBase>
---@field protected SamplingInfo FSkeletalMeshSamplingInfo @Defines if and how to generate a set of precomputed data allowing targeted and fast sampling of this mesh on the CPU.
---@field protected AssetUserData TArray<UAssetUserData> @Array of user data stored with the asset
---@field private Sockets TArray<USkeletalMeshSocket> @Array of named socket locations, set up in editor and used as a shortcut instead of specifying everything explicitly to AttachComponent in the SkeletalMeshComponent.
---@field protected SkinWeightProfiles TArray<FSkinWeightProfileInfo> @Set of skin weight profiles associated with this mesh
local USkeletalMesh = {}

---@param InMorphTargets TArray_UMorphTarget_
function USkeletalMesh:SetMorphTargets(InMorphTargets) end

---@param InMeshClothingAssets TArray_UClothingAssetBase_
function USkeletalMesh:SetMeshClothingAssets(InMeshClothingAssets) end

---@param InMaterials TArray_FSkeletalMaterial_
function USkeletalMesh:SetMaterials(InMaterials) end

---@param InLODSettings USkeletalMeshLODSettings
function USkeletalMesh:SetLODSettings(InLODSettings) end

---@param InAnimatingRig TSoftObjectPtr_UObject_
function USkeletalMesh:SetDefaultAnimatingRig(InAnimatingRig) end

---Returns the number of sockets available. Both on this mesh and it's skeleton.
---@return integer
function USkeletalMesh:NumSockets() end

---Returns the list of all morph targets of this skeletal mesh
---@return TArray_string_
function USkeletalMesh:K2_GetAllMorphTargetNames() end

---Checks whether the provided section is using APEX cloth. if bCheckCorrespondingSections is true
---disabled sections will defer to correspond sections to see if they use cloth (non-cloth sections
---are disabled and another section added when cloth is enabled, using this flag allows for a check
---on the original section to succeed)
---@param InSectionIndex integer
---@param bCheckCorrespondingSections boolean @[opt] 
---@return boolean
function USkeletalMesh:IsSectionUsingCloth(InSectionIndex, bCheckCorrespondingSections) end

---Returns a socket by index. Max index is NumSockets(). The meshes sockets are accessed first, then the skeletons.
---@param Index integer
---@return USkeletalMeshSocket
function USkeletalMesh:GetSocketByIndex(Index) end

---@return USkeleton
function USkeletalMesh:GetSkeleton() end

---@return UPhysicsAsset
function USkeletalMesh:GetShadowPhysicsAsset() end

---@return UPhysicsAsset
function USkeletalMesh:GetPhysicsAsset() end

---@return TArray_UNodeMappingContainer_
function USkeletalMesh:GetNodeMappingData() end

---@param SourceAsset UBlueprint
---@return UNodeMappingContainer
function USkeletalMesh:GetNodeMappingContainer(SourceAsset) end

---@return TArray_UMorphTarget_
function USkeletalMesh:GetMorphTargets() end

---@return TArray_UClothingAssetBase_
function USkeletalMesh:GetMeshClothingAssets() end

---@return TArray_FSkeletalMaterial_
function USkeletalMesh:GetMaterials() end

---@return USkeletalMeshLODSettings
function USkeletalMesh:GetLODSettings() end

---Get the original imported bounds of the skel mesh
---@return FBoxSphereBounds
function USkeletalMesh:GetImportedBounds() end

---@return TSoftObjectPtr_UObject_
function USkeletalMesh:GetDefaultAnimatingRig() end

---Get the extended bounds of this mesh (imported bounds plus bounds extension)
---@return FBoxSphereBounds
function USkeletalMesh:GetBounds() end

---Find a socket object and asscociated info in this SkeletalMesh by name.
---Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.
---Also returns the index for the socket allowing for future fast access via GetSocketByIndex()
---Also rteturns the socket loca transform and the bone index (if any)
---@param InSocketName string
---@param OutTransform FTransform @[out] 
---@param OutBoneIndex integer @[out] 
---@param OutIndex integer @[out] 
---@return USkeletalMeshSocket
function USkeletalMesh:FindSocketInfo(InSocketName, OutTransform, OutBoneIndex, OutIndex) end

---Find a socket object in this SkeletalMesh by name.
---Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.
---Also returns the index for the socket allowing for future fast access via GetSocketByIndex()
---@param InSocketName string
---@param OutIndex integer @[out] 
---@return USkeletalMeshSocket
function USkeletalMesh:FindSocketAndIndex(InSocketName, OutIndex) end

---Find a socket object in this SkeletalMesh by name.
---Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.
---@param InSocketName string
---@return USkeletalMeshSocket
function USkeletalMesh:FindSocket(InSocketName) end

