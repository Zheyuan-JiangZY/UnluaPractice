---@class ULevelSequenceDirector : UObject
---@field public Player ULevelSequencePlayer @Pointer to the player that's playing back this director's sequence. Only valid in game or in PIE/Simulate.
---@field public SubSequenceID integer @The Sequence ID for the sequence this director is playing back within - has to be stored as an int32 so that it is reinstanced correctly
---@field public MovieScenePlayerIndex integer @Native player interface index - stored by index so that it can be reinstanced correctly
local ULevelSequenceDirector = {}

---Called when this director is created
function ULevelSequenceDirector:OnCreated() end

---* Get the current sequence that this director is playing back within
---@return UMovieSceneSequence
function ULevelSequenceDirector:GetSequence() end

---Resolve the bindings inside this sub-sequence that relate to the specified ID
---@param ObjectBinding FMovieSceneObjectBindingID
---@return TArray_UObject_
function ULevelSequenceDirector:GetBoundObjects(ObjectBinding) end

---Resolve the first valid binding inside this sub-sequence that relates to the specified ID
---@param ObjectBinding FMovieSceneObjectBindingID
---@return UObject
function ULevelSequenceDirector:GetBoundObject(ObjectBinding) end

---Resolve the actor bindings inside this sub-sequence that relate to the specified ID
---@param ObjectBinding FMovieSceneObjectBindingID
---@return TArray_AActor_
function ULevelSequenceDirector:GetBoundActors(ObjectBinding) end

---Resolve the first valid Actor binding inside this sub-sequence that relates to the specified ID
---@param ObjectBinding FMovieSceneObjectBindingID
---@return AActor
function ULevelSequenceDirector:GetBoundActor(ObjectBinding) end

