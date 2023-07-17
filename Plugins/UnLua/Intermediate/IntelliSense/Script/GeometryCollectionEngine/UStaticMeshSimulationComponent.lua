---@class UStaticMeshSimulationComponent : UActorComponent
---@field public Simulating boolean @When Simulating is enabled the Component will initialize its rigid bodies within the solver.
---@field public bNotifyCollisions boolean @If true, this component will get collision notification events (@@see IChaosNotifyHandlerInterface)
---@field public ObjectType EObjectStateTypeEnum @ObjectType defines how to initialize the rigid collision structures.
---@field public Mass number @Mass in Kg
---@field public CollisionType ECollisionTypeEnum @CollisionType defines how to initialize the rigid collision structures.
---@field public ImplicitType EImplicitTypeEnum @CollisionType defines how to initialize the rigid collision structures.
---@field public MinLevelSetResolution integer @*  Resolution on the smallest axes for the level set. (def: 5)
---@field public MaxLevelSetResolution integer @*  Resolution on the smallest axes for the level set. (def: 10)
---@field public InitialVelocityType EInitialVelocityTypeEnum
---@field public InitialLinearVelocity FVector
---@field public InitialAngularVelocity FVector
---@field public DamageThreshold number @Damage threshold for clusters.
---@field public PhysicalMaterial UChaosPhysicalMaterial @Physical Properties
---@field public ChaosSolverActor AChaosSolverActor @Chaos RBD Solver
---@field public OnChaosPhysicsCollision MulticastDelegate
---@field private SimulatedComponents TArray<UPrimitiveComponent> @List of component for which this simulation component created a physics object. Parallel array to PhysicsProxy, so PhysicsProxies[i] corresponds to SimulatedComponents[i]
local UStaticMeshSimulationComponent = {}

---@param CollisionInfo FChaosPhysicsCollisionInfo
function UStaticMeshSimulationComponent:ReceivePhysicsCollision(CollisionInfo) end

---Changes whether or not this component will get future break notifications.
function UStaticMeshSimulationComponent:ForceRecreatePhysicsState() end

