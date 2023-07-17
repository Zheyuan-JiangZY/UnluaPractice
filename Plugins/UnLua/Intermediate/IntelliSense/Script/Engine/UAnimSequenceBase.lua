---@class UAnimSequenceBase : UAnimationAsset
---@field public Notifies TArray<FAnimNotifyEvent> @Animation notifies, sorted by time (earliest notification first).
---@field public SequenceLength number @Length (in seconds) of this AnimSequence if played back with a speed of 1.0.
---@field public RateScale number @Number for tweaking playback rate of this animation globally.
---@field public RawCurveData FRawCurveTracks @Raw uncompressed float curve data
---@field public AnimNotifyTracks TArray<FAnimNotifyTrack> @if you change Notifies array, this will need to be rebuilt
local UAnimSequenceBase = {}

---Returns the total play length of the montage, if played back with a speed of 1.0.
---@return number
function UAnimSequenceBase:GetPlayLength() end

