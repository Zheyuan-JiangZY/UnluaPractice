---@class ImportedSequencesHelper_C : AActor
---@field public DefaultSceneRoot USceneComponent
---@field public ImportedSequences TArray<ULevelSequence> @Stores the imported LevelSequences for the scene. Can be manually set afterwards
---@field public SampleUIClass TSubclassOf<UAnimationSampleUI_C> @The class of the animation sample UI. Will be used when spawning it
---@field public SceneAsset UObject @Reference to the asset that was imported along with this actor
local ImportedSequencesHelper_C = {}

---Remove the sample UI
function ImportedSequencesHelper_C:RemoveAnimationSampleUI() end

---Add a sample UI that can be used to play imported level sequences
function ImportedSequencesHelper_C:AddAnimationSampleUI() end

