---@class FChaosSolverConfiguration
---@field public Iterations integer @The number of iterations to run during the constraint solver step
---@field public CollisionPairIterations integer @During solver iterations we solve each constraint in turn. For each constraint we run the solve step CollisionPairIterations times in a row.
---@field public PushOutIterations integer @The number of iterations to run during the constraint fixup step. This applies a post-solve correction that can address errors left behind during the main solver iterations.
---@field public CollisionPushOutPairIterations integer @During pushout iterations we pushout each constraint in turn. For each constraint we run the pushout step CollisionPairIterations times in a row.
---@field public CollisionMarginFraction number @A collision margin as a fraction of size used by some boxes and convex shapes to improve collision detection results. The core geometry of shapes that support a margin are reduced in size by the margin, and the margin is added back on during collision detection. The net result is a shape of the same size but with rounded corners.
---@field public CollisionMarginMax number @An upper limit on the collision margin that will be subtracted from boxes and convex shapes. See CollisionMarginFraction
---@field public CollisionCullDistance number @During collision detection, if tweo shapes are at least this far apart we do not calculate their nearest features during the collision detection step.
---@field public JointPairIterations integer @The number of iterations to run on each constraint during the constraint solver step
---@field public JointPushOutPairIterations integer @The number of iterations to run during the constraint fixup step for each joint. This applies a post-solve correction that can address errors left behind during the main solver iterations.
---@field public ClusterConnectionFactor number
---@field public ClusterUnionConnectionType EClusterUnionMethod
---@field public bGenerateCollisionData boolean
---@field public CollisionFilterSettings FSolverCollisionFilterSettings
---@field public bGenerateBreakData boolean
---@field public BreakingFilterSettings FSolverBreakingFilterSettings
---@field public bGenerateTrailingData boolean
---@field public TrailingFilterSettings FSolverTrailingFilterSettings
---@field public bGenerateContactGraph boolean
local FChaosSolverConfiguration = {}
