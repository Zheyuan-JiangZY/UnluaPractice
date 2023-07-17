---PhysicsAsset contains a set of rigid bodies and constraints that make up a single ragdoll.
---The asset is not limited to human ragdolls, and can be used for any physical simulation using bodies and constraints.
---A SkeletalMesh has a single PhysicsAsset, which allows for easily turning ragdoll physics on or off for many SkeletalMeshComponents
---The asset can be configured inside the Physics Asset Editor.
---@class UPhysicsAsset : UObject
---@field public PreviewSkeletalMesh TSoftObjectPtr<USkeletalMesh>
---@field public PhysicalAnimationProfiles TArray<string>
---@field public ConstraintProfiles TArray<string>
---@field public CurrentPhysicalAnimationProfileName string
---@field public CurrentConstraintProfileName string
---@field public BoundsBodies TArray<integer> @Index of bodies that are marked bConsiderForBounds
---@field public SkeletalBodySetups TArray<USkeletalBodySetup> @Array of SkeletalBodySetup objects. Stores information about collision shape etc. for each body. Does not include body position - those are taken from mesh.
---@field public ConstraintSetup TArray<UPhysicsConstraintTemplate> @Array of RB_ConstraintSetup objects. Stores information about a joint between two bodies, such as position relative to each body, joint limits etc.
---@field public SolverIterations FSolverIterations @[Chaos Only] Recommended solver settings.
---@field public SolverType EPhysicsAssetSolverType @[Chaos Only] Solver type used in physics asset editor.
---@field public bNotForDedicatedServer boolean @If true, we skip instancing bodies for this PhysicsAsset on dedicated servers
---@field public ThumbnailInfo UThumbnailInfo @Information for thumbnail rendering
local UPhysicsAsset = {}

