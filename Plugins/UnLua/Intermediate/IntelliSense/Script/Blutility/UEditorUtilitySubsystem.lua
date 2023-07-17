---@class UEditorUtilitySubsystem : UEditorSubsystem
---@field public LoadedUIs TArray<FSoftObjectPath>
---@field public StartupObjects TArray<FSoftObjectPath>
---@field private ObjectInstances TMap<UObject, UObject> @Instance
---@field private PendingTasks TArray<UEditorUtilityTask>
---@field private ActiveTask UEditorUtilityTask
---@field private ReferencedObjects TSet<UObject> @List of objects that are being kept alive by this subsystem.
local UEditorUtilitySubsystem = {}

---@param Asset UObject
---@return boolean
function UEditorUtilitySubsystem:TryRun(Asset) end

---Given an ID for a tab, try to find a tab spawner that matches, and then spawn a tab. Returns true if it was able to find a matching tab spawner
---@param NewTabID string
---@return boolean
function UEditorUtilitySubsystem:SpawnRegisteredTabByID(NewTabID) end

---@param InBlueprint UEditorUtilityWidgetBlueprint
---@param NewTabID string @[out] 
---@return UEditorUtilityWidget
function UEditorUtilitySubsystem:SpawnAndRegisterTabAndGetID(InBlueprint, NewTabID) end

---@param InBlueprint UEditorUtilityWidgetBlueprint
---@return UEditorUtilityWidget
function UEditorUtilitySubsystem:SpawnAndRegisterTab(InBlueprint) end

---Allow startup object to be garbage collected
---@param Asset UObject
function UEditorUtilitySubsystem:ReleaseInstanceOfAsset(Asset) end

---@param InBlueprint UEditorUtilityWidgetBlueprint
---@param NewTabID string @[out] 
function UEditorUtilitySubsystem:RegisterTabAndGetID(InBlueprint, NewTabID) end

---@param NewTask UEditorUtilityTask
function UEditorUtilitySubsystem:RegisterAndExecuteTask(NewTask) end

---Given an editor utility widget blueprint, get the widget it creates. This will return a null pointer if the widget is not currently in a tab.
---@param InBlueprint UEditorUtilityWidgetBlueprint
---@return UEditorUtilityWidget
function UEditorUtilitySubsystem:FindUtilityWidgetFromBlueprint(InBlueprint) end

---Given an ID for a tab, try to find an existing tab. Returns true if it found a tab.
---@param NewTabID string
---@return boolean
function UEditorUtilitySubsystem:DoesTabExist(NewTabID) end

---Given an ID for a tab, try to find and close an existing tab. Returns true if it found a tab to close.
---@param NewTabID string
---@return boolean
function UEditorUtilitySubsystem:CloseTabByID(NewTabID) end

---@param Asset UObject
---@return boolean
function UEditorUtilitySubsystem:CanRun(Asset) end

