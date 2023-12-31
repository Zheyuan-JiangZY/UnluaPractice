---Represents the appearance of an STableRow
---@class FTableRowStyle : FSlateWidgetStyle
---@field public SelectorFocusedBrush FSlateBrush @Brush used as a selector when a row is focused
---@field public ActiveHoveredBrush FSlateBrush @Brush used when a selected row is active and hovered
---@field public ActiveBrush FSlateBrush @Brush used when a selected row is active
---@field public InactiveHoveredBrush FSlateBrush @Brush used when a selected row is inactive and hovered
---@field public InactiveBrush FSlateBrush @Brush used when a selected row is inactive
---@field public EvenRowBackgroundHoveredBrush FSlateBrush @Brush used when an even row is hovered
---@field public EvenRowBackgroundBrush FSlateBrush @Brush used when an even row is in its normal state
---@field public OddRowBackgroundHoveredBrush FSlateBrush @Brush used when an odd row is hovered
---@field public OddRowBackgroundBrush FSlateBrush @Brush to used when an odd row is in its normal state
---@field public TextColor FSlateColor @Text color used for all rows
---@field public SelectedTextColor FSlateColor @Text color used for the selected row
---@field public DropIndicator_Above FSlateBrush @Brush used to provide feedback that a user can drop above the hovered row.
---@field public DropIndicator_Onto FSlateBrush @Brush used to provide feedback that a user can drop onto the hovered row.
---@field public DropIndicator_Below FSlateBrush @Brush used to provide feedback that a user can drop below the hovered row.
---@field public ActiveHighlightedBrush FSlateBrush @Brush used when a highlighted row is active
---@field public InactiveHighlightedBrush FSlateBrush @Brush used when a highlighted row is inactive and hovered
local FTableRowStyle = {}
