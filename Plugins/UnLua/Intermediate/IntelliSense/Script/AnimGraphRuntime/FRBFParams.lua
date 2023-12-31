---Parameters used by RBF solver
---@class FRBFParams
---@field public TargetDimensions integer @How many dimensions input data has
---@field public SolverType ERBFSolverType @Specifies the type of solver to use. The additive solver requires normalization, for the               most part, whereas the Interpolative solver is not as reliant on it. The interpolative               solver also has smoother blending, whereas the additive solver requires more targets but               has a more precise control over the influence of each target.
---@field public Radius number @Default radius for each target.
---@field public bAutomaticRadius boolean @Automatically pick the radius based on the average distance between targets
---@field public Function ERBFFunctionType
---@field public DistanceMethod ERBFDistanceMethod
---@field public TwistAxis integer @Axis to use when DistanceMethod is SwingAngle
---@field public WeightThreshold number @Weight below which we shouldn't bother returning a contribution from a target
---@field public NormalizeMethod ERBFNormalizeMethod @Method to use for normalizing the weight
---@field public MedianReference FVector @Rotation or position of median (used for normalization)
---@field public MedianMin number @Minimum distance used for median
---@field public MedianMax number @Maximum distance used for median
local FRBFParams = {}
