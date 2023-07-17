---@class UEditorUtilityTask : UObject
---@field private MyTaskManager UEditorUtilitySubsystem
---@field private bCancelRequested boolean
local UEditorUtilityTask = {}

---@param Text string
function UEditorUtilityTask:SetTaskNotificationText(Text) end

function UEditorUtilityTask:Run() end

function UEditorUtilityTask:ReceiveBeginExecution() end

function UEditorUtilityTask:FinishExecutingTask() end

