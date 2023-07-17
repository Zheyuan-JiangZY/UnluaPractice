---Represents the appearance of an STextBlock
---@class FTextBlockStyle : FSlateWidgetStyle
---@field public Font FSlateFontInfo @Font family and size to be used when displaying this text.
---@field public ColorAndOpacity FSlateColor @The color and opacity of this text
---@field public ShadowOffset FVector2D @How much should the shadow be offset? An offset of 0 implies no shadow.
---@field public ShadowColorAndOpacity FLinearColor @The color and opacity of the shadow
---@field public SelectedBackgroundColor FSlateColor @The background color of selected text
---@field public HighlightColor FLinearColor @The color of highlighted text
---@field public HighlightShape FSlateBrush @The shape of highlighted text
---@field public StrikeBrush FSlateBrush @The brush used to draw an strike through the text (if any)
---@field public UnderlineBrush FSlateBrush @The brush used to draw an underline under the text (if any)
local FTextBlockStyle = {}