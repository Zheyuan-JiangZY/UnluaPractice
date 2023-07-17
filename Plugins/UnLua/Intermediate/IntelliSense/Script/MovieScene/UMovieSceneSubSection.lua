---Implements a section in sub-sequence tracks.
---@class UMovieSceneSubSection : UMovieSceneSection
---@field public Parameters FMovieSceneSectionParameters
---@field private NetworkMask integer
---@field protected SubSequence UMovieSceneSequence @Movie scene being played by this section.
---@field protected ActorToRecord TLazyObjectPtr<AActor> @Target actor to record
---@field protected TargetSequenceName string @Target name of sequence to try to record to (will record automatically to another if this already exists)
---@field protected TargetPathToRecordTo FDirectoryPath @Target path of sequence to record to
local UMovieSceneSubSection = {}

---Sets the sequence played by this section.
---@param Sequence UMovieSceneSequence
function UMovieSceneSubSection:SetSequence(Sequence) end

---Get the sequence that is assigned to this section.
---@return UMovieSceneSequence
function UMovieSceneSubSection:GetSequence() end

