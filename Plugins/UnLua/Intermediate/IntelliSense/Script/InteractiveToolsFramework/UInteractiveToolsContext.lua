---InteractiveToolsContext owns a ToolManager and an InputRouter. This is just a top-level
---UObject container, however implementations like UEdModeInteractiveToolsContext extend
---this class to make it easier to connect external systems (like an FEdMode) to the ToolsFramework.
---@class UInteractiveToolsContext : UObject
---@field public InputRouter UInputRouter @current UInputRouter for this Context
---@field public ToolManager UInteractiveToolManager @current UInteractiveToolManager for this Context
---@field public GizmoManager UInteractiveGizmoManager @current UInteractiveGizmoManager for this Context
---@field protected ToolManagerClass TSoftClassPtr<UInteractiveToolManager>
local UInteractiveToolsContext = {}

