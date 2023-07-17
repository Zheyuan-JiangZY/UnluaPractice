---Structure that stores hierarchical information pertaining to all sequences contained within a master sequence
---@class FMovieSceneSequenceHierarchy
---@field private RootNode FMovieSceneSequenceHierarchyNode
---@field private Tree FMovieSceneSubSequenceTree
---@field private SubSequences TMap<FMovieSceneSequenceID, FMovieSceneSubSequenceData> @Map of all (recursive) sub sequences found in this template, keyed on sequence ID
---@field private Hierarchy TMap<FMovieSceneSequenceID, FMovieSceneSequenceHierarchyNode> @Structural information describing the structure of the sequence
local FMovieSceneSequenceHierarchy = {}
