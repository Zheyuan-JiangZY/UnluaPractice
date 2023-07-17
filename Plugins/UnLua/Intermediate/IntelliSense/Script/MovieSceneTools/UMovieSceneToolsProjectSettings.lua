---Settings for the level sequences
---@class UMovieSceneToolsProjectSettings : UObject
---@field public DefaultStartTime number @The default start time for new level sequences, in seconds.
---@field public DefaultDuration number @The default duration for new level sequences in seconds.
---@field public ShotDirectory string @The default directory for the shots.
---@field public ShotPrefix string @The default prefix for shot names.
---@field public FirstShotNumber integer @The first shot number.
---@field public ShotIncrement integer @The default shot increment.
---@field public ShotNumDigits integer @The number of digits for the shot number.
---@field public TakeNumDigits integer @The number of digits for the take number.
---@field public FirstTakeNumber integer @The first take number.
---@field public TakeSeparator string @A single character separator between the shot number and the take number.
---@field public SubSequenceSeparator string @A single character separator between the take number and the sub sequence name.
---@field public FbxSettings TArray<FMovieSceneToolsFbxSettings> @Mapping between fbx property name and property track path
local UMovieSceneToolsProjectSettings = {}

