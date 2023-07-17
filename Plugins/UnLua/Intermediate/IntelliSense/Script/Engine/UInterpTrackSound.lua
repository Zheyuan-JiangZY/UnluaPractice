---@class UInterpTrackSound : UInterpTrackVectorBase
---@field public Sounds TArray<FSoundTrackKey> @Array of sounds to play at specific times.
---@field public bPlayOnReverse boolean @if set, sound plays only when playing the matinee in reverse instead of when the matinee plays forward
---@field public bContinueSoundOnMatineeEnd boolean @If true, sounds on this track will not be forced to finish when the matinee sequence finishes.
---@field public bSuppressSubtitles boolean @If true, don't show subtitles for sounds played by this track.
---@field public bTreatAsDialogue boolean @If true and track is controlling a pawn, makes the pawn "speak" the given audio.
---@field public bAttach boolean
local UInterpTrackSound = {}

