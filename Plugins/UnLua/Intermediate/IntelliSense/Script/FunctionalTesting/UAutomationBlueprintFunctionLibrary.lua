---@class UAutomationBlueprintFunctionLibrary : UBlueprintFunctionLibrary
local UAutomationBlueprintFunctionLibrary = {}

---take high res screenshot in editor.
---@param ResX integer
---@param ResY integer
---@param Filename string
---@param Camera ACameraActor @[opt] 
---@param bMaskEnabled boolean @[opt] 
---@param bCaptureHDR boolean @[opt] 
---@param ComparisonTolerance EComparisonTolerance @[opt] 
---@param ComparisonNotes string
---@param Delay number @[opt] 
---@return UAutomationEditorTask
function UAutomationBlueprintFunctionLibrary.TakeHighResScreenshot(ResX, ResY, Filename, Camera, bMaskEnabled, bCaptureHDR, ComparisonTolerance, ComparisonNotes, Delay) end

---@param WorldContextObject UObject
---@param Name string
---@param Options FAutomationScreenshotOptions
function UAutomationBlueprintFunctionLibrary.TakeAutomationScreenshotOfUI(WorldContextObject, Name, Options) end

---Takes a screenshot of the game's viewport, from a particular camera actors POV.  Does not capture any UI.
---@param WorldContextObject UObject
---@param Camera ACameraActor
---@param NameOverride string
---@param Notes string
---@param Options FAutomationScreenshotOptions
function UAutomationBlueprintFunctionLibrary.TakeAutomationScreenshotAtCamera(WorldContextObject, Camera, NameOverride, Notes, Options) end

---Takes a screenshot of the game's viewport.  Does not capture any UI.
---@param WorldContextObject UObject
---@param Name string
---@param Notes string
---@param Options FAutomationScreenshotOptions
function UAutomationBlueprintFunctionLibrary.TakeAutomationScreenshot(WorldContextObject, Name, Notes, Options) end

---@param WorldContextObject UObject
function UAutomationBlueprintFunctionLibrary.SetScalabilityQualityToLow(WorldContextObject) end

---@param WorldContextObject UObject
function UAutomationBlueprintFunctionLibrary.SetScalabilityQualityToEpic(WorldContextObject) end

---Sets all other settings based on an overall value
---@param WorldContextObject UObject
---@param Value integer @[opt] 
function UAutomationBlueprintFunctionLibrary.SetScalabilityQualityLevelRelativeToMax(WorldContextObject, Value) end

---@param StatName string
---@return number
function UAutomationBlueprintFunctionLibrary.GetStatIncMax(StatName) end

---@param StatName string
---@return number
function UAutomationBlueprintFunctionLibrary.GetStatIncAverage(StatName) end

---@param StatName string
---@return number
function UAutomationBlueprintFunctionLibrary.GetStatExcMax(StatName) end

---@param StatName string
---@return number
function UAutomationBlueprintFunctionLibrary.GetStatExcAverage(StatName) end

---@param StatName string
---@return number
function UAutomationBlueprintFunctionLibrary.GetStatCallCount(StatName) end

---@param Tolerance EComparisonTolerance @[opt] 
---@param Delay number @[opt] 
---@return FAutomationScreenshotOptions
function UAutomationBlueprintFunctionLibrary.GetDefaultScreenshotOptionsForRendering(Tolerance, Delay) end

---@param Tolerance EComparisonTolerance @[opt] 
---@param Delay number @[opt] 
---@return FAutomationScreenshotOptions
function UAutomationBlueprintFunctionLibrary.GetDefaultScreenshotOptionsForGameplay(Tolerance, Delay) end

---@param WorldContextObject UObject
---@param GroupName string
function UAutomationBlueprintFunctionLibrary.EnableStatGroup(WorldContextObject, GroupName) end

---@param WorldContextObject UObject
---@param GroupName string
function UAutomationBlueprintFunctionLibrary.DisableStatGroup(WorldContextObject, GroupName) end

---@param WorldContextObject UObject
---@param Options FAutomationWaitForLoadingOptions
function UAutomationBlueprintFunctionLibrary.AutomationWaitForLoading(WorldContextObject, Options) end

---Lets you know if any automated tests are running, or are about to run and the automation system is spinning up tests.
---@return boolean
function UAutomationBlueprintFunctionLibrary.AreAutomatedTestsRunning() end

---Mute the report of log error and warning matching a pattern during an automated test
---@param ExpectedPatternString string
---@param Occurrences integer @[opt] 
---@param ExactMatch boolean @[opt] 
function UAutomationBlueprintFunctionLibrary.AddExpectedLogError(ExpectedPatternString, Occurrences, ExactMatch) end

