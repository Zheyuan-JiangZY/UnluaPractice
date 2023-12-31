---Deprecated, legacy definition kept for backward compatibility only.
---Inherit new config class from UClothConfigCommon instead.
---Redirected from the now defunct ClothingSystemRuntime module.
---@class FClothConfig_Legacy
---@field public WindMethod EClothingWindMethod_Legacy @How wind should be processed, Accurate uses drag and lift to make the cloth react differently, legacy applies similar forces to all clothing without drag and lift (similar to APEX)
---@field public VerticalConstraintConfig FClothConstraintSetup_Legacy @Constraint data for vertical constraints
---@field public HorizontalConstraintConfig FClothConstraintSetup_Legacy @Constraint data for horizontal constraints
---@field public BendConstraintConfig FClothConstraintSetup_Legacy @Constraint data for bend constraints
---@field public ShearConstraintConfig FClothConstraintSetup_Legacy @Constraint data for shear constraints
---@field public SelfCollisionRadius number @Size of self collision spheres centered on each vert
---@field public SelfCollisionStiffness number @Stiffness of the spring force that will resolve self collisions
---@field public SelfCollisionCullScale number
---@field public Damping FVector @Damping of particle motion per-axis
---@field public Friction number @Friction of the surface when colliding
---@field public WindDragCoefficient number @Drag coefficient for wind calculations, higher values mean wind has more lateral effect on cloth
---@field public WindLiftCoefficient number @Lift coefficient for wind calculations, higher values make cloth rise easier in wind
---@field public LinearDrag FVector @Drag applied to linear particle movement per-axis
---@field public AngularDrag FVector @Drag applied to angular particle movement, higher values should limit material bending (per-axis)
---@field public LinearInertiaScale FVector @Scale for linear particle inertia, how much movement should translate to linear motion (per-axis)
---@field public AngularInertiaScale FVector @Scale for angular particle inertia, how much movement should translate to angular motion (per-axis)
---@field public CentrifugalInertiaScale FVector @Scale for centrifugal particle inertia, how much movement should translate to angular motion (per-axis)
---@field public SolverFrequency number @Frequency of the position solver, lower values will lead to stretchier, bouncier cloth
---@field public StiffnessFrequency number @Frequency for stiffness calculations, lower values will degrade stiffness of constraints
---@field public GravityScale number @Scale of gravity effect on particles
---@field public GravityOverride FVector @Direct gravity override value
---@field public bUseGravityOverride boolean @Use gravity override value vs gravity scale
---@field public TetherStiffness number @Scale for stiffness of particle tethers between each other
---@field public TetherLimit number @Scale for the limit of particle tethers (how far they can separate)
---@field public CollisionThickness number @'Thickness' of the simulated cloth, used to adjust collisions
---@field public AnimDriveSpringStiffness number @Default spring stiffness for anim drive if an anim drive is in use
---@field public AnimDriveDamperStiffness number @Default damper stiffness for anim drive if an anim drive is in use
local FClothConfig_Legacy = {}
