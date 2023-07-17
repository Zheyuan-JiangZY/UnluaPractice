---@class AnimationSampleUI_C : UEditorUtilityWidget
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public AnimationButtonsHorizontalBox UHorizontalBox
---@field public AnimationClipHorizontalBox UHorizontalBox
---@field public AnimationPlayerHorizontalBox UHorizontalBox
---@field public AnimClipCombobox UComboBoxString
---@field public AnimPlayButton UButton
---@field public AnimPlayerCombobox UComboBoxString
---@field public AnimResetButton UButton
---@field public ImportedSequencesHelpersNamesToObj TMap<string, ImportedSequencesHelper_C>
---@field public SelectedImportedSequencesHelper ImportedSequencesHelper_C
---@field public SpawnedLevelSequenceActor ALevelSequenceActor
---@field public SelectedSequence ULevelSequence
local AnimationSampleUI_C = {}

---Resets the playback position to start. Taking advantage of the fact that we set all our LevelSequences to CompletionMode 'KeepState', this will actually scrub back from the end to frame zero, properly resettting all actors.
---@param Player ULevelSequencePlayer
function AnimationSampleUI_C:RewindAnimationToStart(Player) end

---Returns the LevelSequenceActor for the scene. Will spawn a new one if needed. Note: This requires SelectedImportedSequencesHelper to be valid and have at least one LevelSequence
---@param Actor ALevelSequenceActor @[out] 
function AnimationSampleUI_C:GetLevelSequenceActor(Actor) end

---Called after the underlying slate widget is constructed.  Depending on how the slate object is used
---this event may be called multiple times due to adding and removing from the hierarchy.
---If you need a true called-once-when-created event, use OnInitialized.
function AnimationSampleUI_C:Construct() end

---@param SelectedItem string
---@param SelectionType integer
function AnimationSampleUI_C:BndEvt__AnimPlayerCombobox_K2Node_ComponentBoundEvent_0_OnSelectionChangedEvent__DelegateSignature(SelectedItem, SelectionType) end

function AnimationSampleUI_C:BndEvt__AnimPlayButton_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end

function AnimationSampleUI_C:BndEvt__AnimResetButton_K2Node_ComponentBoundEvent_3_OnButtonClickedEvent__DelegateSignature() end

---@param SelectedItem string
---@param SelectionType integer
function AnimationSampleUI_C:BndEvt__AnimClipCombobox_K2Node_ComponentBoundEvent_0_OnSelectionChangedEvent__DelegateSignature(SelectedItem, SelectionType) end

