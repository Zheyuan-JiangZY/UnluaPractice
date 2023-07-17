---Root evaluation template instance used to play back any sequence
---@class FMovieSceneRootEvaluationTemplateInstance
---@field private WeakRootSequence TWeakObjectPtr<UMovieSceneSequence>
---@field private CompiledDataManager UMovieSceneCompiledDataManager
---@field private EntitySystemLinker UMovieSceneEntitySystemLinker
---@field private DirectorInstances TMap<FMovieSceneSequenceID, UObject> @Map of director instances by sequence ID. Kept alive by this map assuming this struct is reference collected
local FMovieSceneRootEvaluationTemplateInstance = {}
