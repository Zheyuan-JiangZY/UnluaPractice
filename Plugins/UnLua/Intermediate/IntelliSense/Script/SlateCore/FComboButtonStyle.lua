---Represents the appearance of an SComboButton
---@class FComboButtonStyle : FSlateWidgetStyle
---@field public ButtonStyle FButtonStyle @The style to use for our SButton.
---@field public DownArrowImage FSlateBrush @Image to use for the down arrow.
---@field public ShadowOffset FVector2D @How much should the shadow be offset for the down arrow? An offset of 0 implies no shadow.
---@field public ShadowColorAndOpacity FLinearColor @The color and opacity of the shadow for the down arrow. Only active if ShadowOffset is not (0,0).
---@field public MenuBorderBrush FSlateBrush @Brush to use to add a "menu border" around the drop-down content.
---@field public MenuBorderPadding FMargin @Padding to use to add a "menu border" around the drop-down content.
local FComboButtonStyle = {}
