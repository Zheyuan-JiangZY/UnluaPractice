---@class UBreakpoint : UObject
---@field private bEnabled boolean @Is the breakpoint currently enabled?
---@field private Node UEdGraphNode @Node that the breakpoint is placed on
---@field private bStepOnce boolean @Is this breakpoint auto-generated, and should be removed when next hit?
---@field private bStepOnce_WasPreviouslyDisabled boolean
---@field private bStepOnce_RemoveAfterHit boolean
local UBreakpoint = {}

