---Editor only data that needs to be saved between sessions for editing but has no runtime purpose
---@class FMovieSceneEditorData
---@field public ExpansionStates TMap<string, FMovieSceneExpansionState> @Map of node path -> expansion state.
---@field public PinnedNodes TArray<string> @List of Pinned nodes.
---@field public ViewStart number @The last view-range start that the user was observing
---@field public ViewEnd number @The last view-range end that the user was observing
---@field public WorkStart number @User-defined working range start in which the entire sequence should reside.
---@field public WorkEnd number @User-defined working range end in which the entire sequence should reside.
local FMovieSceneEditorData = {}
