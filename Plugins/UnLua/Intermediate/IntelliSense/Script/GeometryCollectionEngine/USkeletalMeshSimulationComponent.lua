---@class USkeletalMeshSimulationComponent : UActorComponent
---@field public PhysicalMaterial UChaosPhysicalMaterial @Physical Properties
---@field public ChaosSolverActor AChaosSolverActor @Chaos RBD Solver
---@field public OverridePhysicsAsset UPhysicsAsset
---@field public bSimulating boolean @When Simulating is enabled the Component will initialize its rigid bodies within the solver.
---@field public bNotifyCollisions boolean @If true, this component will get collision notification events (@@see IChaosNotifyHandlerInterface)
---@field public ObjectType EObjectStateTypeEnum @ObjectType defines how to initialize the rigid collision structures.
---@field public Density number @Density / mass. Common densities in g/cm^3:    gold: 19.3    lead: 11.3    copper: 8.3 - 9.0    steel: 8.03    iron: 7.8    aluminium: 2.7    glass: 2.4 - 2.8    brick: 1.4 - 2.4    concrete: 0.45 - 2.4    bone: 1.7 - 2.0    muscle: 1.06    water: 1.0    fat: 0.9196    gasoline: 0.7    wood: 0.67    tree bark: 0.24    air: 0.001293
---@field public MinMass number
---@field public MaxMass number
---@field public CollisionType ECollisionTypeEnum @CollisionType defines how to initialize the rigid collision structures.
---@field public ImplicitShapeParticlesPerUnitArea number @Number of particles to generate per unit area (square cm). 0.1 would generate 1 collision particle per 10 cm^2.
---@field public ImplicitShapeMinNumParticles integer @Minimum number of particles for each implicit shape.
---@field public ImplicitShapeMaxNumParticles integer @Maximum number of particles for each implicit shape.
---@field public MinLevelSetResolution integer @Resolution on the smallest axes for the level set. (def: 5)
---@field public MaxLevelSetResolution integer @Resolution on the smallest axes for the level set. (def: 10)
---@field public CollisionGroup integer @Collision group - 0 = collides with all, -1 = none
---@field public InitialVelocityType EInitialVelocityTypeEnum @Where to pull initial velocity from - user defined or animation.
---@field public InitialLinearVelocity FVector @Initial linear velocity.
---@field public InitialAngularVelocity FVector @Initial angular velocity.
---@field public OnChaosPhysicsCollision MulticastDelegate
local USkeletalMeshSimulationComponent = {}

---@param CollisionInfo FChaosPhysicsCollisionInfo
function USkeletalMeshSimulationComponent:ReceivePhysicsCollision(CollisionInfo) end

