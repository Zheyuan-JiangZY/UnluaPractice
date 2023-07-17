---A specialized WidgetComponent for the VREditor
---@class UVREditorWidgetComponent : UWidgetComponent
---@field private DrawingPolicy EVREditorWidgetDrawingPolicy @High level redrawing policy for the widget component.
---@field private bIsHovering boolean @Controls if we draw, the VREditorWidget allows for manual enabling or disabling of updating the slate widget.
---@field private bHasEverDrawn boolean @Recorders if we've drawn at least once, that way we can always draw the first frame then go manual after that.
local UVREditorWidgetComponent = {}

