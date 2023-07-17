---@class UOculusHandComponent : UPoseableMeshComponent
---@field public SkeletonType EOculusHandType @The hand skeleton that will be loaded
---@field public MeshType EOculusHandType @The hand mesh that will be applied to the skeleton
---@field public ConfidenceBehavior EConfidenceBehavior @Behavior for when hand tracking loses high confidence tracking
---@field public SystemGestureBehavior ESystemGestureBehavior @Behavior for when the system gesture is actived
---@field public SystemGestureMaterial UMaterialInterface @Material that gets applied to the hands when the system gesture is active
---@field public bInitializePhysics boolean @Whether or not to initialize physics capsules on the skeletal mesh
---@field public bUpdateHandScale boolean @Whether or not the hand scale should update based on values from the runtime to match the users hand scale
---@field public MaterialOverride UMaterialInterface @Material override for the runtime skeletal mesh
---@field public BoneNameMappings TMap<EBone, string> @Bone mapping for custom hand skeletal meshes
---@field public CollisionCapsules TArray<FOculusCapsuleCollider> @List of capsule colliders created for the skeletal mesh
---@field public bSkeletalMeshInitialized boolean @Whether or not the runtime skeletal mesh has been loaded and initialized
local UOculusHandComponent = {}

