---High-level container which acts as a look-up-table for IMovieSceneEntityProviders and their entities and meta-data in a sequence
---Generally generated and accessed through UMovieSceneCompiledDataManager, but can also be used independently.
---Entity fields are constructed using FMovieSceneEntityComponentFieldBuilder which ensures the invariants of this class are
---maintained along with guaranteeing no redundant entries exist.
---@class FMovieSceneEntityComponentField
---@field private PersistentEntityTree FMovieSceneEvaluationFieldEntityTree @A hierarchical tree specifiying indices into the Entities array for any given time such persistent entities are active
---@field private OneShotEntityTree FMovieSceneEvaluationFieldEntityTree @A hierarchical tree specifiying indices into the Entities array for any given time such one-shot entities are active
---@field private Entities TArray<FMovieSceneEvaluationFieldEntity> @16 bytes - Flat array of unique entities. The 2 tree types specify indices into this array
---@field private EntityMetaData TArray<FMovieSceneEvaluationFieldEntityMetaData> @16 bytes - Optional meta-data for specific entities. Specified in FMovieSceneEvaluationFieldEntity::MetaDataIndex.
---@field private SharedMetaData TArray<FMovieSceneEvaluationFieldSharedEntityMetaData> @16 bytes - Optional shared meta-data for groups of entities. Specified in FMovieSceneEvaluationFieldEntity::SharedMetaDataIndex.
local FMovieSceneEntityComponentField = {}
