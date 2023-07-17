---[Chaos Only]
---@class FSolverIterations
---@field public FixedTimeStep number @[Chaos Only] The recommended fixed timestep for the solver if supported (e.g., in RigidBody Anim Node). 0 to run with variable timestep. NOTE: If this value is non-zero and less than the current frame time, physics will step multiple times.
---@field public SolverIterations integer @[Chaos Only] The recommended number of solver iterations. Increase this if collision and joints are fighting, or joint chains are stretching.
---@field public JointIterations integer @[Chaos Only] The recommended number of joint sub-iterations. Increasing this can help with chains of long-thin bodies.
---@field public CollisionIterations integer @[Chaos Only] The recommended number of collision sub-iterations. Increasing this can help with collision jitter.
---@field public SolverPushOutIterations integer @Increase this if bodies remain penetrating
---@field public JointPushOutIterations integer @[Chaos Only] The recommended number of joint sub-push-out iterations.
---@field public CollisionPushOutIterations integer @[Chaos Only] The recommended number of joint sub-push-out iterations. Increasing this can help with collision penetration problems.
local FSolverIterations = {}
