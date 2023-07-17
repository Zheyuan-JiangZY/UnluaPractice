---A 3D transform section
---@class UMovieScene3DTransformSection : UMovieSceneSection
---@field private TransformMask FMovieSceneTransformMask
---@field private Translation FMovieSceneFloatChannel @Translation curves
---@field private Rotation FMovieSceneFloatChannel @Rotation curves
---@field private Scale FMovieSceneFloatChannel @Scale curves
---@field private ManualWeight FMovieSceneFloatChannel @Manual weight curve
---@field private bUseQuaternionInterpolation boolean @Whether to use a quaternion linear interpolation between keys. This finds the 'shortest' distance between keys
---@field private Show3DTrajectory EShow3DTrajectory @Whether to show the 3d trajectory
local UMovieScene3DTransformSection = {}

