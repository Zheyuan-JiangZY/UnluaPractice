---The rich text block
---* Fancy Text
---* No Children
---@class URichTextBlock : UTextLayoutWidget
---@field protected Text string @The text to display
---@field protected TextStyleSet UDataTable
---@field protected DecoratorClasses TArray<TSubclassOf<URichTextBlockDecorator>>
---@field protected bOverrideDefaultStyle boolean @True to specify the default text style for this rich text inline, overriding any default provided in the style set table
---@field protected DefaultTextStyleOverride FTextBlockStyle @Text style to apply by default to text in this block
---@field protected MinDesiredWidth number @The minimum desired size for the text
---@field protected TextTransformPolicy ETextTransformPolicy @The text transformation policy to apply to this text block
---@field protected DefaultTextStyle FTextBlockStyle
---@field protected InstanceDecorators TArray<URichTextBlockDecorator>
local URichTextBlock = {}

---Set the text transformation policy for this text block.
---@param InTransformPolicy ETextTransformPolicy
function URichTextBlock:SetTextTransformPolicy(InTransformPolicy) end

---@param NewTextStyleSet UDataTable
function URichTextBlock:SetTextStyleSet(NewTextStyleSet) end

---Directly sets the widget text.
---Warning: This will wipe any binding created for the Text property!
---@param InText string
function URichTextBlock:SetText(InText) end

---Set the minimum desired width for this rich text block
---@param InMinDesiredWidth number
function URichTextBlock:SetMinDesiredWidth(InMinDesiredWidth) end

---Wholesale override of the currently established default text style
---@param InDefaultTextStyle FTextBlockStyle
function URichTextBlock:SetDefaultTextStyle(InDefaultTextStyle) end

---Dynamically set the default strike brush for this rich text block
---@param InStrikeBrush FSlateBrush @[out] 
function URichTextBlock:SetDefaultStrikeBrush(InStrikeBrush) end

---Sets the offset that the default text drop shadow should be drawn at
---@param InShadowOffset FVector2D
function URichTextBlock:SetDefaultShadowOffset(InShadowOffset) end

---Sets the color and opacity of the default text drop shadow
---Note: if opacity is zero no shadow will be drawn
---@param InShadowColorAndOpacity FLinearColor
function URichTextBlock:SetDefaultShadowColorAndOpacity(InShadowColorAndOpacity) end

---Dynamically set the default font info for this rich text block
---@param InFontInfo FSlateFontInfo
function URichTextBlock:SetDefaultFont(InFontInfo) end

---Sets the color and opacity of the default text in this rich text block
---@param InColorAndOpacity FSlateColor
function URichTextBlock:SetDefaultColorAndOpacity(InColorAndOpacity) end

---Set the auto wrap for this rich text block
---@param InAutoTextWrap boolean
function URichTextBlock:SetAutoWrapText(InAutoTextWrap) end

---Returns widgets text.
---@return string
function URichTextBlock:GetText() end

---@param DecoratorClass TSubclassOf_URichTextBlockDecorator_
---@return URichTextBlockDecorator
function URichTextBlock:GetDecoratorByClass(DecoratorClass) end

---Remove all overrides made to the default text style and return to the style specified in the style set data table
function URichTextBlock:ClearAllDefaultStyleOverrides() end

