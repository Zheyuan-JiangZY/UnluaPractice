---Content that is displayed relative to a widget
---@class FTutorialWidgetContent
---@field public Content FTutorialContent @Content to associate with widget
---@field public WidgetAnchor FTutorialContentAnchor @Anchor for content widget to highlight
---@field public HorizontalAlignment integer
---@field public VerticalAlignment integer
---@field public Offset FVector2D @Custom offset from widget
---@field public ContentWidth number @Content width - text will be wrapped at this point
---@field public bAutoFocus boolean @If this a node that can be focused (EG a blueprint node) should we auto focus on it
local FTutorialWidgetContent = {}
