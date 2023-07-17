---Base class for movie scene sections
---@class UMovieSceneSection : UMovieSceneSignedObject
---@field public EvalOptions FMovieSceneSectionEvalOptions
---@field public Easing FMovieSceneEasingSettings
---@field public SectionRange FMovieSceneFrameRange @The range in which this section is active
---@field public TimecodeSource FMovieSceneTimecodeSource @The timecode at which this movie scene section is based (ie. when it was recorded)
---@field private PreRollFrames FFrameNumber @The amount of time to prepare this section for evaluation before it actually starts.
---@field private PostRollFrames FFrameNumber @The amount of time to continue 'postrolling' this section for after evaluation has ended.
---@field private RowIndex integer @The row index that this section sits on
---@field private OverlapPriority integer @This section's priority over overlapping sections
---@field private bIsActive boolean @Toggle whether this section is active/inactive
---@field private bIsLocked boolean @Toggle whether this section is locked/unlocked
---@field protected bSupportsInfiniteRange boolean @Does this section support infinite ranges in the track editor?
---@field protected BlendType FOptionalMovieSceneBlendType
local UMovieSceneSection = {}

---Sets this section's new row index
---@param NewRowIndex integer
function UMovieSceneSection:SetRowIndex(NewRowIndex) end

---Gets the number of frames to prepare this section for evaluation before it actually starts.
---@param InPreRollFrames integer
function UMovieSceneSection:SetPreRollFrames(InPreRollFrames) end

---Gets/sets the number of frames to continue 'postrolling' this section for after evaluation has ended.
---@param InPostRollFrames integer
function UMovieSceneSection:SetPostRollFrames(InPostRollFrames) end

---Sets this section's priority over overlapping sections (higher wins)
---@param NewPriority integer
function UMovieSceneSection:SetOverlapPriority(NewPriority) end

---Whether or not this section is locked.
---@param bInIsLocked boolean
function UMovieSceneSection:SetIsLocked(bInIsLocked) end

---Whether or not this section is active.
---@param bInIsActive boolean
function UMovieSceneSection:SetIsActive(bInIsActive) end

---* Sets this section's completion mode
---@param InCompletionMode EMovieSceneCompletionMode
function UMovieSceneSection:SetCompletionMode(InCompletionMode) end

---Sets this section's blend type
---@param InBlendType EMovieSceneBlendType
function UMovieSceneSection:SetBlendType(InBlendType) end

---@return boolean
function UMovieSceneSection:IsLocked() end

---@return boolean
function UMovieSceneSection:IsActive() end

---Gets the row index for this section
---@return integer
function UMovieSceneSection:GetRowIndex() end

---@return integer
function UMovieSceneSection:GetPreRollFrames() end

---@return integer
function UMovieSceneSection:GetPostRollFrames() end

---Gets this section's priority over overlapping sections (higher wins)
---@return integer
function UMovieSceneSection:GetOverlapPriority() end

---Gets this section's completion mode
---@return EMovieSceneCompletionMode
function UMovieSceneSection:GetCompletionMode() end

---Gets this section's blend type
---@return FOptionalMovieSceneBlendType
function UMovieSceneSection:GetBlendType() end

