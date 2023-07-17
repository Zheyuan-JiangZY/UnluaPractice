---Represents the appearance of an SSearchBox
---@class FSearchBoxStyle : FSlateWidgetStyle
---@field public TextBoxStyle FEditableTextBoxStyle @Style to use for the text box part of the search box
---@field public ActiveFontInfo FSlateFontInfo @Font to use for the text box part of the search box when a search term is entered
---@field public UpArrowImage FSlateBrush @Image to use for the search "up" arrow
---@field public DownArrowImage FSlateBrush @Image to use for the search "down" arrow
---@field public GlassImage FSlateBrush @Image to use for the search "glass"
---@field public ClearImage FSlateBrush @Image to use for the search "clear" button
---@field public ImagePadding FMargin @Padding to use around the images
---@field public bLeftAlignButtons boolean @If true, buttons appear to the left of the search text
local FSearchBoxStyle = {}
