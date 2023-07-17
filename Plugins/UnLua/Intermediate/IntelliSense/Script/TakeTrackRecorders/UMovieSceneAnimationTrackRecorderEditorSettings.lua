---@class UMovieSceneAnimationTrackRecorderEditorSettings : UMovieSceneTrackRecorderSettings
---@field public AnimationTrackName string @Name of the recorded animation track.
---@field public AnimationAssetName string @The name of the animation asset.
---@field public AnimationSubDirectory string @The name of the subdirectory animations will be placed in. Leave this empty to place into the same directory as the sequence base path.
---@field public InterpMode integer @Interpolation mode for the recorded keys.
---@field public TangentMode integer @Tangent mode for the recorded keys.
---@field public bRemoveRootAnimation boolean @The following parameter is dynamically set based upon whether or not the animation was spawned dynamically via a blueprint or not, if so set to false, otherwise true
local UMovieSceneAnimationTrackRecorderEditorSettings = {}

