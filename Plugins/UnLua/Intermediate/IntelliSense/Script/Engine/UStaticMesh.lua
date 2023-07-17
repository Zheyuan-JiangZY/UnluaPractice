---A StaticMesh is a piece of geometry that consists of a static set of polygons.
---Static Meshes can be translated, rotated, and scaled, but they cannot have their vertices animated in any way. As such, they are more efficient
---to render than other types of geometry such as USkeletalMesh, and they are often the basic building block of levels created in the engine.
---@class UStaticMesh : UStreamableRenderAsset
---@field private SourceModels TArray<FStaticMeshSourceModel> @Imported raw mesh bulk data.
---@field public SectionInfoMap FMeshSectionInfoMap
---@field public OriginalSectionInfoMap FMeshSectionInfoMap
---@field public LODGroup string @The LOD group to which this mesh belongs.
---@field public NumStreamedLODs FPerPlatformInt @If non-negative, specify the maximum number of streamed LODs. Only has effect if mesh LOD streaming is enabled for the target platform.
---@field public ImportVersion integer @The last import version
---@field public MaterialRemapIndexPerImportVersion TArray<FMaterialRemapIndex>
---@field public LightmapUVVersion integer
---@field public bAutoComputeLODScreenSize boolean @If true, the screen sizees at which LODs swap are computed automatically.
---@field public MinLOD FPerPlatformInt
---@field public LpvBiasMultiplier number @Bias multiplier for Light Propagation Volume lighting
---@field public StaticMaterials TArray<FStaticMaterial>
---@field public LightmapUVDensity number
---@field public LightMapResolution integer @The light map resolution
---@field public LightMapCoordinateIndex integer @The light map coordinate index
---@field public DistanceFieldSelfShadowBias number @Useful for reducing self shadowing from distance field methods when using world position offset to animate the mesh's vertices.
---@field public BodySetup UBodySetup
---@field public LODForCollision integer @Specifies which mesh LOD to use for complex (per-poly) collision. Sometimes it can be desirable to use a lower poly representation for collision to reduce memory usage, improve performance and behaviour. Collision representation does not change based on distance to camera.
---@field public bGenerateMeshDistanceField boolean @Whether to generate a distance field for this mesh, which can be used by DistanceField Indirect Shadows. This is ignored if the project's 'Generate Mesh Distance Fields' setting is enabled.
---@field public bHasNavigationData boolean @If true, mesh will have NavCollision property with additional data for navmesh generation and usage.           Set to false for distant meshes (always outside navigation bounds) to save memory on collision data.
---@field public bSupportUniformlyDistributedSampling boolean @Mesh supports uniformly distributed sampling in constant time. Memory cost is 8 bytes per triangle. Example usage is uniform spawning of particles.
---@field public bSupportPhysicalMaterialMasks boolean @If true, complex collision data will store UVs and face remap table for use when performing PhysicalMaterialMask lookups in cooked builds. Note the increased memory cost for this functionality.
---@field public bSupportRayTracing boolean @If true, a ray tracing acceleration structure will be built for this mesh and it may be used in ray tracing effects
---@field public bIsBuiltAtRuntime boolean
---@field public bAllowCPUAccess boolean @If true, will keep geometry data CPU-accessible in cooked builds, rather than uploading to GPU memory and releasing it from CPU memory. This is required if you wish to access StaticMesh geometry data on the CPU at runtime in cooked builds (e.g. to convert StaticMesh to ProceduralMeshComponent)
---@field public bSupportGpuUniformlyDistributedSampling boolean @If true, a GPU buffer containing required data for uniform mesh surface sampling will be created at load time. It is created from the cpu data so bSupportUniformlyDistributedSampling is also required to be true.
---@field public AssetImportData UAssetImportData @Importing data and options used for this mesh
---@field public ThumbnailInfo UThumbnailInfo @Information for thumbnail rendering
---@field public EditorCameraPosition FAssetEditorOrbitCameraPosition @The stored camera position to use as a default for the static mesh editor
---@field public bCustomizedCollision boolean @If the user has modified collision in any way or has custom collision imported. Used for determining if to auto generate collision on import
---@field public LODForOccluderMesh integer @Specifies which mesh LOD to use as occluder geometry for software occlusion Set to -1 to not use this mesh as occluder
---@field public Sockets TArray<UStaticMeshSocket> @Array of named socket locations, set up in editor and used as a shortcut instead of specifying everything explicitly to AttachComponent in the StaticMeshComponent.
---@field public PositiveBoundsExtension FVector
---@field public NegativeBoundsExtension FVector
---@field public ExtendedBounds FBoxSphereBounds
---@field protected ElementToIgnoreForTexFactor integer @Index of an element to ignore while gathering streaming texture factors. This is useful to disregard automatically generated vertex data which breaks texture factor heuristics.
---@field protected AssetUserData TArray<UAssetUserData> @Array of user data stored with the asset
---@field public EditableMesh UObject @The editable mesh representation of this static mesh // @@todo: Maybe we don't want this visible in the details panel in the end; for now, this might aid debugging.
---@field public ComplexCollisionMesh UStaticMesh
---@field public NavCollision UNavCollisionBase
local UStaticMesh = {}

---@param InStaticMaterials TArray_FStaticMaterial_
function UStaticMesh:SetStaticMaterials(InStaticMaterials) end

---@param Num integer
function UStaticMesh:SetNumSourceModels(Num) end

---Sets a Material given a Material Index
---@param MaterialIndex integer
---@param NewMaterial UMaterialInterface
function UStaticMesh:SetMaterial(MaterialIndex, NewMaterial) end

---Remove a socket object in this StaticMesh by providing it's pointer. Use FindSocket() if needed.
---@param Socket UStaticMeshSocket
function UStaticMesh:RemoveSocket(Socket) end

---@return TArray_FStaticMaterial_
function UStaticMesh:GetStaticMaterials() end

---Returns number of Sections that this StaticMesh has, in the supplied LOD (LOD 0 is the highest)
---@param InLOD integer
---@return integer
function UStaticMesh:GetNumSections(InLOD) end

---Returns the number of LODs used by the mesh.
---@return integer
function UStaticMesh:GetNumLODs() end

---@param PlatformMinimumLODs TMap_string__integer_ @[out] 
function UStaticMesh:GetMinimumLODForPlatforms(PlatformMinimumLODs) end

---@param PlatformName string
---@return integer
function UStaticMesh:GetMinimumLODForPlatform(PlatformName) end

---Gets a Material index given a slot name
---@param MaterialSlotName string
---@return integer
function UStaticMesh:GetMaterialIndex(MaterialSlotName) end

---Gets a Material given a Material Index and an LOD number
---@param MaterialIndex integer
---@return UMaterialInterface
function UStaticMesh:GetMaterial(MaterialIndex) end

---Returns the number of bounds of the mesh.
---@return FBoxSphereBounds
function UStaticMesh:GetBounds() end

---Returns the bounding box, in local space including bounds extension(s), of the StaticMesh asset
---@return FBox
function UStaticMesh:GetBoundingBox() end

---Find a socket object in this StaticMesh by name.
---Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.
---@param InSocketName string
---@return UStaticMeshSocket
function UStaticMesh:FindSocket(InSocketName) end

---Create an empty StaticMeshDescription object, to describe a static mesh at runtime
---@param Outer UObject @[opt] 
---@return UStaticMeshDescription
function UStaticMesh.CreateStaticMeshDescription(Outer) end

---Builds static mesh LODs from the array of StaticMeshDescriptions passed in
---@param StaticMeshDescriptions TArray_UStaticMeshDescription_
---@param bBuildSimpleCollision boolean @[opt] 
function UStaticMesh:BuildFromStaticMeshDescriptions(StaticMeshDescriptions, bBuildSimpleCollision) end

---Add a socket object in this StaticMesh.
---@param Socket UStaticMeshSocket
function UStaticMesh:AddSocket(Socket) end

---Adds a new material and return its slot name
---@param Material UMaterialInterface
---@return string
function UStaticMesh:AddMaterial(Material) end

