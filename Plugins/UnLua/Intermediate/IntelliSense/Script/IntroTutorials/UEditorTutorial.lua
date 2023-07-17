---An asset used to build a stage-by-stage tutorial in the editor
---@class UEditorTutorial : UObject
---@field public Title string @Title of this tutorial, used when presented to the user
---@field public SortOrder integer @Sorting priority, used by the tutorial browser
---@field public Icon string @Icon name for this tutorial, used when presented to the user in the tutorial browser. This is a name for the icon in the Slate editor style. Only used if there isn't a valid texture to use.
---@field public Texture UTexture2D @Texture for this tutorial, used when presented to the user in the tutorial browser.
---@field public Category string @Category of this tutorial, used to organize tutorials when presented to the user
---@field public SummaryContent FTutorialContent @Content to be displayed for this tutorial when presented to the user in summary
---@field public Stages TArray<FTutorialStage> @The various stages of this tutorial
---@field public PreviousTutorial FSoftClassPath @Tutorial to optionally chain back to if the "back" button is clicked on the first stage
---@field public NextTutorial FSoftClassPath @Tutorial to optionally chain onto after this tutorial completes
---@field public bIsStandalone boolean @A standalone tutorial displays no navigation buttons and each content widget has a close button
---@field public AssetToUse FSoftObjectPath @Asset to open & attach the tutorial to. Non-widget-bound content will appear in the asset's window
---@field public ImportPath string @The path this tutorial was imported from, if any.
---@field public bHideInBrowser boolean @Hide this tutorial in the tutorials browser
---@field public SearchTags string @Comma seperated list of tags the search will use to help find this tutorial
local UEditorTutorial = {}

---Sets the visibility of the engine folder in the content browser
---@param bNewVisibility boolean
function UEditorTutorial.SetEngineFolderVisibilty(bNewVisibility) end

---Open an asset for use by a tutorial
---@param Asset UObject
function UEditorTutorial.OpenAsset(Asset) end

---Event fired when a tutorial stage begins
---@param StageName string
function UEditorTutorial:OnTutorialStageStarted(StageName) end

---Event fired when a tutorial stage ends
---@param StageName string
function UEditorTutorial:OnTutorialStageEnded(StageName) end

---Event fired when a tutorial is launched
function UEditorTutorial:OnTutorialLaunched() end

---Event fired when a tutorial is closed
function UEditorTutorial:OnTutorialClosed() end

---Advance to the previous stage of a tutorial
function UEditorTutorial.GoToPreviousTutorialStage() end

---Advance to the next stage of a tutorial
function UEditorTutorial.GoToNextTutorialStage() end

---Returns the visibility of the engine folder in the content browser
---@return boolean
function UEditorTutorial.GetEngineFolderVisibilty() end

---Attempts to find the actor specified by PathToActor in the current editor world
---@param PathToActor string
---@return AActor
function UEditorTutorial:GetActorReference(PathToActor) end

---Begin a tutorial. Note that this will end the current tutorial that is in progress, if any
---@param TutorialToStart UEditorTutorial
---@param bRestart boolean
function UEditorTutorial.BeginTutorial(TutorialToStart, bRestart) end

