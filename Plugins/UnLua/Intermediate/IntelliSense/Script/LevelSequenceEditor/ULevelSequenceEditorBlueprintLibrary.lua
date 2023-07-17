---@class ULevelSequenceEditorBlueprintLibrary : UBlueprintFunctionLibrary
local ULevelSequenceEditorBlueprintLibrary = {}

---Sets the lock for the current level sequence and its descendants for editing.
---@param bLock boolean
function ULevelSequenceEditorBlueprintLibrary.SetLockLevelSequence(bLock) end

---Set global playback position for the current level sequence in frames
---@param NewFrame integer
function ULevelSequenceEditorBlueprintLibrary.SetCurrentTime(NewFrame) end

---Set local playback position for the current level sequence in frames
---@param NewFrame integer
function ULevelSequenceEditorBlueprintLibrary.SetCurrentLocalTime(NewFrame) end

---Select tracks
---@param Tracks TArray_UMovieSceneTrack_
function ULevelSequenceEditorBlueprintLibrary.SelectTracks(Tracks) end

---Select sections
---@param Sections TArray_UMovieSceneSection_
function ULevelSequenceEditorBlueprintLibrary.SelectSections(Sections) end

---Select objects by GUID
---@param ObjectBinding TArray_FGuid_
function ULevelSequenceEditorBlueprintLibrary.SelectObjects(ObjectBinding) end

---Select folders
---@param Folders TArray_UMovieSceneFolder_
function ULevelSequenceEditorBlueprintLibrary.SelectFolders(Folders) end

---Select channels
---@param Channels TArray_FSequencerChannelProxy_
function ULevelSequenceEditorBlueprintLibrary.SelectChannels(Channels) end

---Refresh Sequencer UI.
function ULevelSequenceEditorBlueprintLibrary.RefreshCurrentLevelSequence() end

---Play from the current time to the requested time in frames
---@param PlaybackParams FMovieSceneSequencePlaybackParams
function ULevelSequenceEditorBlueprintLibrary.PlayTo(PlaybackParams) end

---Play the current level sequence
function ULevelSequenceEditorBlueprintLibrary.Play() end

---Pause the current level sequence
function ULevelSequenceEditorBlueprintLibrary.Pause() end

---* Open a level sequence asset
---@param LevelSequence ULevelSequence
---@return boolean
function ULevelSequenceEditorBlueprintLibrary.OpenLevelSequence(LevelSequence) end

---Check whether the sequence is actively playing.
---@return boolean
function ULevelSequenceEditorBlueprintLibrary.IsPlaying() end

---Check whether the current level sequence and its descendants are locked for editing.
---@return boolean
function ULevelSequenceEditorBlueprintLibrary.IsLevelSequenceLocked() end

---Gets the currently selected tracks.
---@return TArray_UMovieSceneTrack_
function ULevelSequenceEditorBlueprintLibrary.GetSelectedTracks() end

---Gets the currently selected sections.
---@return TArray_UMovieSceneSection_
function ULevelSequenceEditorBlueprintLibrary.GetSelectedSections() end

---Gets the currently selected Object Guids
---@return TArray_FGuid_
function ULevelSequenceEditorBlueprintLibrary.GetSelectedObjects() end

---Gets the currently selected folders.
---@return TArray_UMovieSceneFolder_
function ULevelSequenceEditorBlueprintLibrary.GetSelectedFolders() end

---Gets the currently selected channels.
---@return TArray_FSequencerChannelProxy_
function ULevelSequenceEditorBlueprintLibrary.GetSelectedChannels() end

---* Get the currently focused/viewed level sequence asset if there is a hierarchy of sequences.
---@return ULevelSequence
function ULevelSequenceEditorBlueprintLibrary.GetFocusedLevelSequence() end

---Get the current global playback position in frames
---@return integer
function ULevelSequenceEditorBlueprintLibrary.GetCurrentTime() end

---Get the current local playback position in frames
---@return integer
function ULevelSequenceEditorBlueprintLibrary.GetCurrentLocalTime() end

---* Get the currently opened root/master level sequence asset
---@return ULevelSequence
function ULevelSequenceEditorBlueprintLibrary.GetCurrentLevelSequence() end

---Get the object bound to the given binding ID with the current level sequence editor
---@param ObjectBinding FMovieSceneObjectBindingID
---@return TArray_UObject_
function ULevelSequenceEditorBlueprintLibrary.GetBoundObjects(ObjectBinding) end

---Empties the current selection.
function ULevelSequenceEditorBlueprintLibrary.EmptySelection() end

---* Close
function ULevelSequenceEditorBlueprintLibrary.CloseLevelSequence() end

